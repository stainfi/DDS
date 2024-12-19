library verilog;
use verilog.vl_types.all;
entity DFF32 is
    port(
        data            : in     vl_logic_vector(31 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(31 downto 0)
    );
end DFF32;
