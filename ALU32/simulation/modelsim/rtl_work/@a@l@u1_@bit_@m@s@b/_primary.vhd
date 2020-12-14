library verilog;
use verilog.vl_types.all;
entity ALU1_Bit_MSB is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        lessinp         : in     vl_logic;
        cin             : in     vl_logic;
        ainv            : in     vl_logic;
        binv            : in     vl_logic;
        opcodeA         : in     vl_logic;
        opcodeB         : in     vl_logic;
        cout            : out    vl_logic;
        result          : out    vl_logic;
        overflow        : out    vl_logic;
        slt             : out    vl_logic
    );
end ALU1_Bit_MSB;
