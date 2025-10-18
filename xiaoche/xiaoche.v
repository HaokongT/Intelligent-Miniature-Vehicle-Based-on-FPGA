module xiaoche(
    output trig1, trig2, trig3,
    input echo1, echo2, echo3,
    input track1, track2, track3, track4,track5,track6,track7,
    output reg [1:0] left, right, 
    input clk,
    input reset,  
    input enable,
    output reg obstacle_detected	 
);

    parameter MODE_AVOID = 2'b00;  // 超声波避障模式
    parameter MODE_TRACK = 2'b01;   // 寻迹模式
    parameter MODE_PATH1 = 2'b10;   
    parameter MODE_PATH2 = 2'b11;   
    
    reg [1:0] current_mode = MODE_AVOID;
    
    // 20ms计时器
    parameter CLK_FREQ = 20_000_000; // 20MHz
    parameter MS20_COUNT = CLK_FREQ / 50;    // 50是20ms，2_000_000是0.5us  
    reg [18:0] enable_counter = 0; 
    reg enable_prev = 0;
    reg mode_switch_pending = 0;
    
    parameter IDLE = 0;
    parameter COUNTING = 1;
    
    parameter SOUND_SPEED = 340;     
   
    parameter TRIG_INTERVAL = CLK_FREQ / 7; // 60ms间隔 
    parameter TRIG_PULSE_WIDTH = 200;        // 10us脉冲 
    
    parameter DISTANCE_1M = 40;
    parameter DISTANCE_0_5M = 30;
    parameter DISTANCE_0_1M = 15;
    
    reg [31:0] trig_counter = 0;
    reg trig_pulse = 0;

    wire [19:0] dis_count1, dis_count2, dis_count3;
    
    // 1MHz时钟
    reg [4:0] clk_div = 0;
    wire clk_1m;
    assign clk_1m = clk_div[4]; // 20MHz/20 = 1MHz
    
    // 路径执行控制信号
    wire [1:0] path_left, path_right;
    wire [7:0] path_pwm;
    wire path_active;
    
    wire [1:0] boche_left, boche_right;
    wire [7:0] boche_pwm;
    wire boche_active;
    
    always @(posedge clk or negedge reset) begin
        if (!reset)
            clk_div <= 0;
        else
            clk_div <= clk_div + 1;
    end
    
    PosCounter pos_counter1 (
        .clk_1m(clk_1m),
        .rst(reset),
        .echo(echo1),
        .dis_count(dis_count1)
    );
    
    PosCounter pos_counter2 (
        .clk_1m(clk_1m),
        .rst(reset),
        .echo(echo2),
        .dis_count(dis_count2)
    );
    
    PosCounter pos_counter3 (
        .clk_1m(clk_1m),
        .rst(reset),
        .echo(echo3),
        .dis_count(dis_count3)
    );
    
    // 导航1
    everything path_executor (
        .clk(clk),
        .reset(reset),
        .mode(current_mode),
        .left(path_left),
        .right(path_right),
        .pwm_value(path_pwm),
        .active(path_active)
    );
    
    // 导航2
    boche boche_executor (
        .clk(clk),
        .reset(reset),
        .mode(current_mode),
        .left(boche_left),
        .right(boche_right),
        .pwm_value(boche_pwm),
        .active(boche_active)
    );
    
    wire [1:0] track_left, track_right;
    wire [7:0] track_pwm;
    
    xunji xunji_instance (
        .clk(clk),
        .reset(reset),
        .track1(track1),
        .track2(track2),
        .track3(track3),
        .track4(track4),
		  .track5(track5),
		  .track6(track6),
		  .track7(track7),
        .left_dir(track_left),
        .right_dir(track_right),
        .pwm_value(track_pwm)
    );
    
    // 转换为32位距离值
    reg [31:0] distance1 = 0, distance2 = 0, distance3 = 0;
    reg obstacle_near1 = 0, obstacle_near2 = 0, obstacle_near3 = 0;
    
    reg [7:0] pwm_counter = 0;
    reg [7:0] pwm_threshold = 200; // 200/255≈80%
    reg pwm_out = 0;
    
    reg [2:0] steer_state;
    parameter STEER_IDLE = 0;
    parameter STEER_FORWARD = 1;
    parameter STEER_RIGHT = 2;
    parameter STEER_LEFT = 3;
    parameter STEER_BACK = 4;
    
    // 模式切换逻辑
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            current_mode <= MODE_AVOID;
            enable_counter <= 0;
            enable_prev <= 0;
            mode_switch_pending <= 0;
        end else begin
            // 检测enable的上升沿
            if (enable && !enable_prev) begin
                mode_switch_pending <= 1;
                enable_counter <= 0;
            end
            
            // 如果enable持续按下，开始计时
            if (mode_switch_pending && enable) begin
                if (enable_counter < MS20_COUNT) begin
                    enable_counter <= enable_counter + 1;
                end else begin
                    // 达到20ms，切换模式
                    current_mode <= current_mode + 1;
                    if (current_mode == 2'b11) current_mode <= 2'b00;
                    mode_switch_pending <= 0;
                    enable_counter <= 0;
                end
            end
            
            enable_prev <= enable;
        end
    end
    
    // TRIG信号
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            trig_counter <= 0;
            trig_pulse <= 0;
        end else begin
            if (trig_counter >= TRIG_INTERVAL - 1) begin
                trig_counter <= 0;
                trig_pulse <= 1'b1;
            end else begin
                trig_counter <= trig_counter + 1;
                if (trig_counter == TRIG_PULSE_WIDTH - 1) begin
                    trig_pulse <= 1'b0;
                end
            end
        end
    end
     
	always @(*) begin
        if (!reset) begin
            obstacle_detected = 1'b0; // 复位时输出高电平
        end else begin
            // enable按下时输出低电平，否则输出高电平
            obstacle_detected = enable;
        end
    end
     
    assign trig1 = trig_pulse;
    assign trig2 = trig_pulse;
    assign trig3 = trig_pulse;
    
    // PWM生成
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            pwm_counter <= 0;
            pwm_out <= 0;
        end else begin
            if (pwm_counter == 255)
                pwm_counter <= 0;
            else
                pwm_counter <= pwm_counter + 1;
                
            pwm_out <= (pwm_counter < pwm_threshold);
        end
    end
    
    // 使用PosCounter的距离值
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            distance1 <= 0;
            distance2 <= 0;
            distance3 <= 0;
            obstacle_near1 <= 0;
            obstacle_near2 <= 0;
            obstacle_near3 <= 0;
        end else begin
            distance1 <= dis_count1;
            distance2 <= dis_count2;
            distance3 <= dis_count3;
            
            obstacle_near1 <= (distance1 < DISTANCE_0_5M);
            obstacle_near2 <= (distance2 < DISTANCE_0_5M);
            obstacle_near3 <= (distance3 < DISTANCE_0_5M);
        end
    end
    
    // PWM调速逻辑（基于最近障碍物）
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            pwm_threshold <= 200;
        end else case(current_mode)
            MODE_AVOID: begin
                // 计算最近障碍物距离
                reg [31:0] min_distance;
                min_distance = (distance1 < distance2) ? 
                              ((distance1 < distance3) ? distance1 : distance3) :
                              ((distance2 < distance3) ? distance2 : distance3);
                
                if (min_distance < DISTANCE_0_1M) begin
                    pwm_threshold <= 30;
                end else if (min_distance < DISTANCE_0_5M) begin
                    pwm_threshold <= 45; 
                end else if (min_distance < DISTANCE_1M) begin
                    pwm_threshold <= 90; 
                end else begin
                    pwm_threshold <= 120; 
                end
            end
            MODE_TRACK: begin
                pwm_threshold <= track_pwm; // 寻迹模式下使用xunji模块的PWM值
            end
            MODE_PATH1: begin
                pwm_threshold <= path_pwm; // 路径模式下使用路径模块的PWM值
            end
            MODE_PATH2: begin
                pwm_threshold <= boche_pwm; // boche模式下使用boche模块的PWM值
            end
        endcase
    end
    
    // 转向状态机（独立于PWM）
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            steer_state <= STEER_IDLE;
        end else case(current_mode)
            MODE_AVOID: begin
                if (!obstacle_near1 && !obstacle_near2 && !obstacle_near3) begin
                    steer_state <= STEER_FORWARD;
                end
                else if (obstacle_near1 && !obstacle_near2 && !obstacle_near3) begin
                    steer_state <= STEER_RIGHT;
                end
                else if (obstacle_near1 && !obstacle_near2 && obstacle_near3) begin
                    if (distance2 > distance1 && distance2 > distance3) begin
                        steer_state <= STEER_FORWARD;
                    end else if (distance3 > distance1) begin
                        steer_state <= STEER_RIGHT;
                    end else begin
                        steer_state <= STEER_LEFT;
                    end
                end
                else if (obstacle_near1 && obstacle_near2 && !obstacle_near3) begin
                    steer_state <= STEER_RIGHT;
                end
                else if (obstacle_near1 && obstacle_near2 && obstacle_near3) begin
                    steer_state <= STEER_BACK;
                end
                else if (!obstacle_near1 && obstacle_near2 && obstacle_near3) begin
                    steer_state <= STEER_LEFT;
                end
                else if (!obstacle_near1 && obstacle_near2 && !obstacle_near3) begin
                    if (distance1 > distance3) begin
                        steer_state <= STEER_LEFT;
                    end else begin
                        steer_state <= STEER_RIGHT;
                    end
                end
                else if (!obstacle_near1 && !obstacle_near2 && obstacle_near3) begin
                    steer_state <= STEER_LEFT;
                end
            end
            MODE_PATH1, MODE_PATH2: begin
                // 路径模式下，转向由路径执行模块控制
                steer_state <= STEER_IDLE;
            end
        endcase
    end

    // 电机控制逻辑（完全解耦）
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            left <= 2'b00;
            right <= 2'b00;
        end else begin
            if (pwm_out) begin
                case(current_mode)
                    MODE_AVOID: begin
                        case(steer_state)
                            STEER_FORWARD: begin
                                left <= 2'b01;  
                                right <= 2'b01; 
                            end
                            STEER_RIGHT: begin
                                left <= 2'b01;  
                                right <= 2'b10; 
                            end
                            STEER_LEFT: begin
                                left <= 2'b10;  
                                right <= 2'b01; 
                            end
                            STEER_BACK: begin
                                left <= 2'b10;  
                                right <= 2'b10; 
                            end
                            default: begin
                                left <= 2'b00;
                                right <= 2'b00;
                            end
                        endcase
                    end
                    MODE_TRACK: begin
                        // 寻迹模式下的电机控制
                        left <= track_left;
                        right <= track_right;
                    end
                    MODE_PATH1: begin
                        // 路径模式1下的电机控制
                        left <= path_left;
                        right <= path_right;
                    end
                    MODE_PATH2: begin
                        left <= boche_left;
                        right <= boche_right;
                    end
                endcase
            end
        end
    end

endmodule