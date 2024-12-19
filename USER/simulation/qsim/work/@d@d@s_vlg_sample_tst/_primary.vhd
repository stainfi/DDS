library verilog;
use verilog.vl_types.all;
entity DDS_vlg_sample_tst is
    port(
        B               : in     vl_logic_vector(31 downto 0);
        CLK             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DDS_vlg_sample_tst;
