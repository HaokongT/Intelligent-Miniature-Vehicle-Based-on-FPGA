library verilog;
use verilog.vl_types.all;
entity top_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        echo1           : in     vl_logic;
        echo2           : in     vl_logic;
        echo3           : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        track1          : in     vl_logic;
        track2          : in     vl_logic;
        track3          : in     vl_logic;
        track4          : in     vl_logic;
        track5          : in     vl_logic;
        track6          : in     vl_logic;
        track7          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end top_vlg_sample_tst;
