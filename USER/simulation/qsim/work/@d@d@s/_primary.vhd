library verilog;
use verilog.vl_types.all;
entity DDS is
    port(
        DAC_CLK         : out    vl_logic;
        CLK             : in     vl_logic;
        DAC             : out    vl_logic_vector(9 downto 0);
        B               : in     vl_logic_vector(31 downto 0)
    );
end DDS;
