library verilog;
use verilog.vl_types.all;
entity sin_rom is
    port(
        address         : in     vl_logic_vector(9 downto 0);
        inclock         : in     vl_logic;
        q               : out    vl_logic_vector(9 downto 0)
    );
end sin_rom;
