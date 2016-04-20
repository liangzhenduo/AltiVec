library verilog;
use verilog.vl_types.all;
entity vaddsws is
    port(
        vra             : in     vl_logic_vector(31 downto 0);
        vrb             : in     vl_logic_vector(31 downto 0);
        vrt             : out    vl_logic_vector(31 downto 0);
        sat             : out    vl_logic
    );
end vaddsws;
