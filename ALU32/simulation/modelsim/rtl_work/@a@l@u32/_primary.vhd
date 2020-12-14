library verilog;
use verilog.vl_types.all;
entity ALU32 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        opcode          : in     vl_logic_vector(3 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        cout            : out    vl_logic;
        overflow        : out    vl_logic
    );
end ALU32;
