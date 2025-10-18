 module xunji(
     input clk,
     input reset,
     input track1,  // 1
     input track2,  // 2
     input track3,  // 3
     input track4,  // 4
 	  input track5,  // 5
     input track6,  // 6
     input track7,  // 7
 	 
     output reg [1:0] left_dir,
     output reg [1:0] right_dir,
     output reg [7:0] pwm_value
 );
 
     // 参数定义
     parameter PWM_7_PERCENT = 3;   // 3%
     parameter PWM_10_PERCENT = 5;   // 10%
 	  parameter PWM_13_PERCENT = 8;
     parameter PWM_15_PERCENT = 10;  // 10%
     parameter PWM_20_PERCENT = 15; // 20%
	  parameter PWM_21_PERCENT = 20;
	  parameter PWM_25_PERCENT = 25;
	  parameter PWM_30_PERCENT = 30;
	  
	  parameter CLK_FREQ = 20_000_000;
     parameter MS500_COUNT = CLK_FREQ / 100 * 3; // 1,000,000 个时钟周期 = 300ms
     
     reg [23:0] all_white_counter = 0; // 足够大的计数器用于500ms计时
 
     // 寻迹逻辑
     always @(posedge clk or negedge reset) begin
          if (!reset) begin
             left_dir <= 2'b00;
             right_dir <= 2'b00;
				 pwm_value <= PWM_30_PERCENT;
             all_white_counter <= 0;
         end else begin
             // 首先检查是否全白
             if (track1 == 0 && track2 == 0 && track3 == 0 && track4 == 0 && track5 == 0 && track6 == 0 && track7 == 0) begin
                 if (all_white_counter < MS500_COUNT) begin
                     all_white_counter <= all_white_counter + 1;
                     
                     left_dir <= 2'b01;
                     right_dir <= 2'b01;
                     pwm_value <= PWM_15_PERCENT;
                 end else begin
                     // 全白且达到500ms，转弯
                     left_dir <= 2'b01;
                     right_dir <= 2'b10;
                     pwm_value <= PWM_30_PERCENT;
                 end
             end else begin
                 all_white_counter <= 0;
 					 
 					// 三个传感器
 					if (track3 == 0 && track4 == 0 && track5 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_10_PERCENT;
 					end
 					else if (track1 == 0 && track2 == 0 && track3 == 0 ) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b10;
 						pwm_value <= PWM_7_PERCENT;
 					end
 					else if (track5 == 0 && track6 == 0 && track7 == 0) begin
 						left_dir <= 2'b10;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_7_PERCENT;
 					end
 					else if (track4 == 0 && track5 == 0 && track6 == 0) begin
 						left_dir <= 2'b10;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_7_PERCENT;
 					end
					else if (track4 == 0 && track3 == 0 && track2 == 0) begin
 						left_dir <= 2'b10;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_7_PERCENT;
 					end
					
					
 					// 两个传感器
 					else if (track3 == 0 && track4 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_10_PERCENT;
 					end
 					else if (track4 == 0 && track5 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_10_PERCENT;
 					end
 					else if (track2 == 0 && track3 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b10;
 						pwm_value <= PWM_15_PERCENT;
 					end
 					else if (track5 == 0 && track6 == 0) begin
 						left_dir <= 2'b10;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_15_PERCENT;
 					end
 					else if (track1 == 0 && track2 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b10;
 						pwm_value <= PWM_21_PERCENT;
 					end
 					else if (track6 == 0 && track7 == 0) begin
 						left_dir <= 2'b10;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_21_PERCENT;
 					end
 					
 					// 单个传感器
 					else if (track4 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_20_PERCENT;
 					end
 					else if (track3 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b10;
 						pwm_value <= PWM_13_PERCENT;
 					end
 					else if (track5 == 0) begin
 						left_dir <= 2'b10;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_13_PERCENT;
 					end
 					else if (track2 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b10;
 						pwm_value <= PWM_15_PERCENT;
 					end
 					else if (track6 == 0) begin
 						left_dir <= 2'b10;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_15_PERCENT;
 					end
 					else if (track1 == 0) begin
 						left_dir <= 2'b01;
 						right_dir <= 2'b10;
 						pwm_value <= PWM_21_PERCENT;
 					end
 					else if (track7 == 0) begin
 						left_dir <= 2'b10;
 						right_dir <= 2'b01;
 						pwm_value <= PWM_21_PERCENT;
 					end
					else begin
                    left_dir <= 2'b01;
                    right_dir <= 2'b01;
                    pwm_value <= PWM_10_PERCENT;
                end
 			
             end
         end
   end
 
 endmodule




