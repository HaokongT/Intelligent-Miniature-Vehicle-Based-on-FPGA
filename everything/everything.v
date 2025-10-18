module everything(
    input clk,
    input reset,
    input [1:0] mode,           
    output reg [1:0] left,      
    output reg [1:0] right,     
    output reg [7:0] pwm_value, 
    output reg active           
);

    // 参数定义
    parameter CLK_FREQ = 20_000_000; // 20MHz时钟频率
    
    parameter IDLE = 0;
    parameter FORWARD_2S = 1;
    parameter RIGHT_200MS = 2;
    parameter FORWARD_2S_2 = 3;
    parameter RIGHT_200MS_2 = 4;
    parameter FORWARD_2S_3 = 5;
    parameter RIGHT_200MS_3 = 6;
    parameter FORWARD_2S_4 = 7;
    parameter RIGHT_200MS_4 = 8;
    parameter stop = 9;
	 
    reg [3:0] current_state = IDLE;
    reg [31:0] timer = 0;
    
    // 时间常数
    parameter TIME_2S = CLK_FREQ *2;      // 2秒
    parameter TIME_200MS = CLK_FREQ / 5;   // 200毫秒
	 parameter TIME_500MS = CLK_FREQ / 2;    // 500毫秒
	 parameter TIME_700MS = CLK_FREQ / 10 * 8;
    parameter TIME_1S = CLK_FREQ;    // 1秒
	 parameter TIME_15S = CLK_FREQ *3 /2;    // 1.5秒
	 parameter TIME_12S = CLK_FREQ *6 /5;    // 1.2秒
	 
    // PWM参数
    parameter PWM_FULL = 110;  
    parameter PWM_SLOW = 110; 
    parameter PWM_STOP = 0;
	 
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            current_state <= IDLE;
            timer <= 0;
            left <= 2'b00;
            right <= 2'b00;
            pwm_value <= PWM_FULL;
            active <= 0;
        end else begin
            if (mode == 2'b10 ) begin
                active <= 1;
                
                case (current_state)
                    IDLE: begin
                        if (mode == 2'b10) begin
                            // 模式2: 正方形路径
                            current_state <= FORWARD_2S;
                            timer <= 0;
                        end
                    end
                    
                    FORWARD_2S: begin
                        left <= 2'b01;   // 正转
                        right <= 2'b01;  // 正转
                        pwm_value <= PWM_FULL;
                        
                        if (timer < TIME_12S) begin
                            timer <= timer + 1;
								end else begin
                            timer <= 0;
                          if (mode == 2'b10) begin
                            current_state <= RIGHT_200MS;
									end
                        end
                    end
                    
                    RIGHT_200MS: begin
                        left <= 2'b01;   
                        right <= 2'b10;  
                        pwm_value <= PWM_SLOW;
                        
                        if (timer < TIME_700MS) begin
                            timer <= timer + 1;
								end else begin
                            timer <= 0;
                          if (mode == 2'b10) begin
                            current_state <= FORWARD_2S_2;
									end
                        end
                    end
                    
                    FORWARD_2S_2: begin
                        left <= 2'b01;   
                        right <= 2'b01;  
                        pwm_value <= PWM_FULL;
                        
                        if (timer < TIME_12S) begin
                            timer <= timer + 1;
								end else begin
                            timer <= 0;
                        if (mode == 2'b10) begin
                            current_state <= RIGHT_200MS_2;
									end
                        end
                    end
                    
                    RIGHT_200MS_2: begin
                        left <= 2'b01;   
                        right <= 2'b10;  
                        pwm_value <= PWM_SLOW;
                        
                        if (timer < TIME_700MS) begin
                            timer <= timer + 1;
								end else begin
                            timer <= 0;
                          if (mode == 2'b10) begin
                            current_state <= FORWARD_2S_3;
									end
                        end
                    end
                    
                    FORWARD_2S_3: begin
                        left <= 2'b01; 
                        right <= 2'b01;
                        pwm_value <= PWM_FULL;
                        
                        if (timer < TIME_12S) begin
                            timer <= timer + 1;
								end else begin
                            timer <= 0;
                          if (mode == 2'b10) begin
                            current_state <= RIGHT_200MS_3;
									end
                        end
                    end
                    
                    RIGHT_200MS_3: begin
                        left <= 2'b01;   
                        right <= 2'b10;  
                        pwm_value <= PWM_SLOW;
                        
                        if (timer < TIME_700MS) begin
                            timer <= timer + 1;
								end else begin
                            timer <= 0;
                          if (mode == 2'b10) begin
                            current_state <= FORWARD_2S_4;
									end
                        end
                    end
                    
                    FORWARD_2S_4: begin
                        left <= 2'b01;   
                        right <= 2'b01;  
                        pwm_value <= PWM_FULL;
                        
                        if (timer < TIME_12S) begin
                            timer <= timer + 1;
								end else begin
                            timer <= 0;
                          if (mode == 2'b10) begin
                            current_state <= RIGHT_200MS_4;
									end
                        end
                    end
                    
                    RIGHT_200MS_4: begin
                        left <= 2'b01;   
                        right <= 2'b10;  
                        pwm_value <= PWM_SLOW;
                        
                        if (timer < TIME_700MS) begin
                            timer <= timer + 1;
								end else begin
                            timer <= 0;
                          if (mode == 2'b10) begin
                            current_state <= stop;
									end
                        end
                    end
                    
						  
						   stop: begin
                        left <= 2'b00;   
                        right <= 2'b00;  
                    end
						  
						  
                    default: begin
                        current_state <= IDLE;
                    end
                endcase
            end
        end
    end

endmodule