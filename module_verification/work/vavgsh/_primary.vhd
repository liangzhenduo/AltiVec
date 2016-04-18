library verilog;
use verilog.vl_types.all;
entity vavgsh is
    port(
        vra             : in     vl_logic_vector(31 downto 0);
        vrb             : in     vl_logic_vector(31 downto 0);
        vrt             : out    vl_logic_vector(31 downto 0)
    );
end vavgsh;
