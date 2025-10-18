module top(
    input clk,
    input reset,
    input enable,
    input echo1,
    input echo2,
    input echo3,
    input track1,  
    input track2,  
    input track3,  
    input track4,
	 input track5,  
    input track6,  
    input track7,
    output trig1,
    output trig2,
    output trig3,
    output [1:0] left,
    output [1:0] right,
    output obstacle_detected
);

    xiaoche xiaoche_instance (
        .clk(clk),
        .enable(enable),
        .reset(reset),
        .trig1(trig1),
        .trig2(trig2),
        .trig3(trig3),
        .echo1(echo1),
        .echo2(echo2),
        .echo3(echo3),
        .track1(track1),  
        .track2(track2),  
        .track3(track3),  
        .track4(track4),  
		  .track5(track5),
		  .track6(track6),
		  .track7(track7),
        .left(left),
        .right(right),
        .obstacle_detected(obstacle_detected)
    );

endmodule