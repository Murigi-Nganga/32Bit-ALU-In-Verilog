library verilog;
use verilog.vl_types.all;
entity full_adder is
    port(
        sum             : out    vl_logic;
        cout            : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic
    );
end full_adder;
