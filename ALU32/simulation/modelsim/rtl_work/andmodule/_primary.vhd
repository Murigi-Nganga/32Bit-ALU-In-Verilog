library verilog;
use verilog.vl_types.all;
entity andmodule is
    port(
        result          : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end andmodule;
