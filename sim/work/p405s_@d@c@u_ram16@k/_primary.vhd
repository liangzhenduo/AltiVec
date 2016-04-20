library verilog;
use verilog.vl_types.all;
entity p405s_DCU_ram16K is
    port(
        DCU_icuSize     : out    vl_logic_vector(0 to 2);
        LRU             : out    vl_logic;
        U0AttrA         : out    vl_logic;
        U0AttrB         : out    vl_logic;
        dataOut_A       : out    vl_logic_vector(0 to 127);
        dataOut_B       : out    vl_logic_vector(0 to 127);
        p_dataOutA      : out    vl_logic_vector(0 to 15);
        p_dataOutB      : out    vl_logic_vector(0 to 15);
        dirtyA          : out    vl_logic;
        dirtyB          : out    vl_logic;
        hit_a           : out    vl_logic;
        hit_a_buf1      : out    vl_logic;
        hit_b           : out    vl_logic;
        hit_b_buf1      : out    vl_logic;
        tagAOut         : out    vl_logic_vector(0 to 20);
        tagBOut         : out    vl_logic_vector(0 to 20);
        p_parityA       : out    vl_logic;
        p_parityB       : out    vl_logic;
        validA          : out    vl_logic;
        validB          : out    vl_logic;
        CAR_L2          : in     vl_logic_vector(0 to 20);
        CAR_L2_NEG      : in     vl_logic_vector(0 to 20);
        CB              : in     vl_logic;
        MMU_diagOut     : in     vl_logic_vector(0 to 2);
        WB_L2           : in     vl_logic_vector(0 to 127);
        p_WBhi_L2       : in     vl_logic_vector(0 to 15);
        WB_tagL1        : in     vl_logic_vector(0 to 20);
        p_wbTagL1       : in     vl_logic;
        byteWriteData   : in     vl_logic_vector(0 to 15);
        byteWrite_E1    : in     vl_logic;
        cacheableSpecialOp: in     vl_logic;
        dataIndexA      : in     vl_logic_vector(0 to 9);
        dataIndexB      : in     vl_logic_vector(0 to 9);
        p_dataIndexP    : in     vl_logic_vector(0 to 9);
        dataReadNotWrite_In: in     vl_logic;
        dataReadWriteCycle_In: in     vl_logic;
        dirtyLRUreadIndexL2: in     vl_logic_vector(0 to 8);
        dirtyLRUwriteIndexL2: in     vl_logic_vector(0 to 8);
        newDirty        : in     vl_logic;
        newLRU          : in     vl_logic;
        newValidIn      : in     vl_logic;
        readLRUDirty    : in     vl_logic;
        tagIndex        : in     vl_logic_vector(0 to 9);
        tagReadNotWrite_In: in     vl_logic;
        tagReadWriteCycle_In: in     vl_logic;
        testEn          : in     vl_logic;
        wbU0AttrL1      : in     vl_logic;
        writeDataA0     : in     vl_logic;
        writeDataA1     : in     vl_logic;
        writeDataB0     : in     vl_logic;
        writeDataB1     : in     vl_logic;
        writeDirtyA     : in     vl_logic;
        writeDirtyB     : in     vl_logic;
        writeLRU        : in     vl_logic;
        writeTagA0      : in     vl_logic;
        writeTagA1      : in     vl_logic;
        writeTagB0      : in     vl_logic;
        writeTagB1      : in     vl_logic;
        xltValidLth     : in     vl_logic;
        resetMemBist    : in     vl_logic;
        dcu_bist_debug_si: in     vl_logic_vector(3 downto 0);
        dcu_bist_debug_so: out    vl_logic_vector(3 downto 0);
        dcu_bist_debug_en: in     vl_logic_vector(3 downto 0);
        dcu_bist_mode_reg_in: in     vl_logic_vector(18 downto 0);
        dcu_bist_mode_reg_out: out    vl_logic_vector(18 downto 0);
        dcu_bist_parallel_dr: in     vl_logic;
        dcu_bist_mode_reg_si: in     vl_logic;
        dcu_bist_mode_reg_so: out    vl_logic;
        dcu_bist_shift_dr: in     vl_logic;
        dcu_bist_mbrun  : in     vl_logic
    );
end p405s_DCU_ram16K;
