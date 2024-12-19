library verilog;
use verilog.vl_types.all;
entity DDS_vlg_check_tst is
    port(
        DAC             : in     vl_logic_vector(9 downto 0);
        DAC_CLK         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end DDS_vlg_check_tst;
