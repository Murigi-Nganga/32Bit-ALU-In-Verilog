library verilog;
use verilog.vl_types.all;
entity ormodule is
    port(
        result          : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end ormodule;
