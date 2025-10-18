library verilog;
use verilog.vl_types.all;
entity top_vlg_check_tst is
    port(
        left            : in     vl_logic_vector(1 downto 0);
        obstacle_detected: in     vl_logic;
        right           : in     vl_logic_vector(1 downto 0);
        trig1           : in     vl_logic;
        trig2           : in     vl_logic;
        trig3           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end top_vlg_check_tst;
