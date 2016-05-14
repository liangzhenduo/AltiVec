library verilog;
use verilog.vl_types.all;
entity p405s_DCU_control is
    port(
        CAR_OF_E1       : out    vl_logic;
        CAR_OF_E2       : out    vl_logic;
        CAR_mmuAttr_E1  : out    vl_logic;
        CAR_mmuAttr_E2  : out    vl_logic;
        DCU_CA          : out    vl_logic;
        DCU_DA          : out    vl_logic;
        DCU_SCL2        : out    vl_logic;
        DCU_apuWbByteEn : out    vl_logic_vector(0 to 3);
        DCU_carByteEn   : out    vl_logic_vector(0 to 3);
        DCU_diagBus     : out    vl_logic_vector(0 to 20);
        DCU_firstCycCarStXltV: out    vl_logic;
        DCU_ocmAbort    : out    vl_logic;
        DCU_ocmLoadReq  : out    vl_logic;
        DCU_ocmStoreReq : out    vl_logic;
        DCU_ocmWait     : out    vl_logic;
        DCU_pclOcmLdPendNoWait: out    vl_logic;
        DCU_plbABus     : out    vl_logic_vector(30 to 31);
        DCU_plbAbort    : out    vl_logic;
        DCU_plbCacheable: out    vl_logic;
        DCU_plbDTags    : out    vl_logic_vector(0 to 7);
        DCU_plbGuarded  : out    vl_logic;
        DCU_plbPriority : out    vl_logic;
        DCU_plbRNW      : out    vl_logic;
        DCU_plbRequest  : out    vl_logic;
        DCU_plbTranSize : out    vl_logic;
        DCU_plbU0Attr   : out    vl_logic;
        DCU_plbWriteThru: out    vl_logic;
        DCU_sleepReq    : out    vl_logic;
        FAR_E2          : out    vl_logic;
        FDR_hiMuxSel    : out    vl_logic;
        FDR_hi_E1       : out    vl_logic;
        FDR_hi_E2       : out    vl_logic;
        FDR_holdMuxSel  : out    vl_logic;
        FDR_loMuxSel    : out    vl_logic;
        FDR_lo_E1       : out    vl_logic;
        FDR_lo_E2       : out    vl_logic;
        FDR_outMuxSel   : out    vl_logic_vector(0 to 1);
        LSA_E1          : out    vl_logic;
        LSA_E2          : out    vl_logic;
        PLBAR_E1        : out    vl_logic;
        PLBAR_E2        : out    vl_logic;
        PLBAR_selFAR    : out    vl_logic;
        PLBAR_selSAQ    : out    vl_logic;
        PLBDR_E2        : out    vl_logic_vector(0 to 3);
        PLBDR_hiMuxSel  : out    vl_logic_vector(0 to 3);
        SAQ_E1          : out    vl_logic;
        SAQ_E2          : out    vl_logic;
        SDP_FDR_muxSel  : out    vl_logic;
        SDQ_E1          : out    vl_logic;
        SDQ_E2          : out    vl_logic;
        SDQ_SDP_OCM_sel : out    vl_logic;
        SDQ_SDP_mux     : out    vl_logic;
        bypassFillSDP_sel: out    vl_logic_vector(0 to 3);
        bypassMuxSel    : out    vl_logic_vector(0 to 2);
        bypassPendOrDcRead: out    vl_logic;
        byteWriteData   : out    vl_logic_vector(0 to 15);
        byteWrite_E1    : out    vl_logic;
        cacheableSpecialOp: out    vl_logic;
        carStore        : out    vl_logic;
        dOutMuxSelBit1Byte0: out    vl_logic;
        dOutMuxSelBit1Byte1: out    vl_logic;
        dOutMuxSelBit1Byte2: out    vl_logic;
        dOutMuxSelBit1Byte3: out    vl_logic;
        dataIndexLSA_dupSel: out    vl_logic;
        dataIndexMuxSel2: out    vl_logic;
        dataIndexMuxSel : out    vl_logic_vector(0 to 1);
        dataIndex_E1    : out    vl_logic;
        dataIndex_E2    : out    vl_logic;
        dataReadNotWrite_In: out    vl_logic;
        dataReadWriteCycle_In: out    vl_logic;
        dirtyLRU_readIndexSel: out    vl_logic;
        dirtyLRU_readIndex_E1: out    vl_logic;
        dirtyLRU_readIndex_E2: out    vl_logic;
        dirtyLRU_writeIndex_E1: out    vl_logic;
        fillBufMuxSel0  : out    vl_logic_vector(0 to 31);
        fillBufMuxSel1  : out    vl_logic_vector(0 to 31);
        fillBuf_E1      : out    vl_logic;
        fillBuf_E2      : out    vl_logic_vector(0 to 7);
        fillUsingArray  : out    vl_logic;
        flushHold_E2    : out    vl_logic;
        forceDataIndexZero_mmu: out    vl_logic;
        loadReadFBvalid : out    vl_logic;
        newDirty        : out    vl_logic;
        newLRU          : out    vl_logic;
        newU0AttrIn     : out    vl_logic;
        newValidIn      : out    vl_logic;
        readLRUDirty    : out    vl_logic;
        sampleCycleL2   : out    vl_logic;
        tagIndexDup_E1  : out    vl_logic;
        tagIndexDup_E2  : out    vl_logic;
        tagIndexSel     : out    vl_logic;
        tagIndex_E1     : out    vl_logic;
        tagOutMuxSelFAR : out    vl_logic;
        tagReadNotWrite_In: out    vl_logic;
        tagReadWriteCycle_In: out    vl_logic;
        writeBufHi_E1   : out    vl_logic;
        writeBufHi_E2   : out    vl_logic_vector(0 to 3);
        writeBufLoTag_E1: out    vl_logic;
        writeBufLo_E2   : out    vl_logic;
        writeBufMuxSelBit0: out    vl_logic;
        writeBufMuxSelBit1: out    vl_logic_vector(0 to 31);
        writeDataA0     : out    vl_logic;
        writeDataA1     : out    vl_logic;
        writeDataB0     : out    vl_logic;
        writeDataB1     : out    vl_logic;
        writeDirtyA     : out    vl_logic;
        writeDirtyB     : out    vl_logic;
        writeLRU        : out    vl_logic;
        writeTagA0      : out    vl_logic;
        writeTagA1      : out    vl_logic;
        writeTagB0      : out    vl_logic;
        writeTagB1      : out    vl_logic;
        xltValidLth     : out    vl_logic;
        CAR_L2_buf1     : in     vl_logic_vector(27 to 29);
        CAR_L2_buf2     : in     vl_logic_vector(27 to 29);
        CAR_LSAcmp      : in     vl_logic;
        CAR_OF_L2       : in     vl_logic_vector(27 to 29);
        CAR_SAQcmp      : in     vl_logic;
        CAR_U0Attr      : in     vl_logic;
        CAR_cacheable   : in     vl_logic;
        CAR_guarded     : in     vl_logic;
        CAR_writethru   : in     vl_logic;
        CB              : in     vl_logic;
        ICU_dcuCCR0_L2  : in     vl_logic_vector(0 to 10);
        ICU_syncAfterReset: in     vl_logic;
        LRU             : in     vl_logic;
        LSA_L2          : in     vl_logic_vector(27 to 29);
        MMU_dcuShadowAbort: in     vl_logic;
        MMU_dcuUTLBAbort: in     vl_logic;
        MMU_dcuXltValid : in     vl_logic;
        MMU_wbHold      : in     vl_logic;
        OCM_dsComplete  : in     vl_logic;
        OCM_dsHold      : in     vl_logic;
        PCL_dcuByteEn   : in     vl_logic_vector(0 to 3);
        PCL_dcuOp       : in     vl_logic_vector(0 to 11);
        PCL_dcuOp_early : in     vl_logic_vector(0 to 2);
        PLB_dcuAddrAck  : in     vl_logic;
        PLB_dcuBusy     : in     vl_logic;
        PLB_dcuRdDAck   : in     vl_logic;
        PLB_dcuRdWdAddr : in     vl_logic_vector(0 to 2);
        PLB_dcuSsize    : in     vl_logic;
        PLB_dcuWrDAck   : in     vl_logic;
        PLB_sampleCycle : in     vl_logic;
        SAQ_FARcmp      : in     vl_logic;
        SAQ_L2          : in     vl_logic_vector(27 to 29);
        U0AttrFAR       : in     vl_logic;
        VCT_exeAbort    : in     vl_logic;
        VCT_wbAbort     : in     vl_logic;
        carOF_FARcmp    : in     vl_logic;
        carOF_LSAcmp    : in     vl_logic;
        dirtyA          : in     vl_logic;
        dirtyB          : in     vl_logic;
        hit_a           : in     vl_logic;
        hit_a_buf1      : in     vl_logic;
        hit_b           : in     vl_logic;
        hit_b_buf1      : in     vl_logic;
        resetCore       : in     vl_logic;
        testEn          : in     vl_logic;
        validA          : in     vl_logic;
        validB          : in     vl_logic;
        carDcRead       : out    vl_logic;
        flushIdle_state : out    vl_logic;
        flushAlmostDone : out    vl_logic;
        flushDone       : out    vl_logic;
        fillFlushToDoL2 : out    vl_logic;
        oneFPL2         : out    vl_logic;
        ocmCompleteXltVNoWaitNoHold: out    vl_logic;
        PLB_sampleCycleAlt: in     vl_logic;
        CPM_c405SyncBypass: in     vl_logic
    );
end p405s_DCU_control;