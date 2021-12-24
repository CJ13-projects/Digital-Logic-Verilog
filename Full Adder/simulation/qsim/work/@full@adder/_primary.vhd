library verilog;
use verilog.vl_types.all;
entity FullAdder is
    port(
        P               : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        Q               : out    vl_logic
    );
end FullAdder;
