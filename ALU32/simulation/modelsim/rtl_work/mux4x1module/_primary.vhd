library verilog;
use verilog.vl_types.all;
entity mux4x1module is
    port(
        result          : out    vl_logic;
        inp0            : in     vl_logic;
        inp1            : in     vl_logic;
        inp2            : in     vl_logic;
        inp3            : in     vl_logic;
        sel1            : in     vl_logic;
        sel0            : in     vl_logic
    );
end mux4x1module;
