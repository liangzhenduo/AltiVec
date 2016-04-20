library verilog;
use verilog.vl_types.all;
entity p405s_core_top is
    port(
        C405_jtgCaptureDR: out    vl_logic;
        C405_jtgExtest  : out    vl_logic;
        C405_jtgPgmOut  : out    vl_logic;
        C405_jtgShiftDR : out    vl_logic;
        C405_jtgTDO     : out    vl_logic;
        C405_jtgTDOEn   : out    vl_logic;
        C405_jtgUpdateDR: out    vl_logic;
        C405_lssdDiagBistDone: out    vl_logic;
        C405_rstChipResetReq: out    vl_logic;
        C405_rstCoreResetReq: out    vl_logic;
        C405_rstSystemResetReq: out    vl_logic;
        CPU_TEType      : out    vl_logic_vector(0 to 10);
        DCS_plbABus     : out    vl_logic_vector(0 to 31);
        DCS_plbWrDBus   : out    vl_logic_vector(0 to 63);
        DCS_plbPriority : out    vl_logic_vector(0 to 1);
        DCS_plbRNW      : out    vl_logic;
        DCS_plbAbort    : out    vl_logic;
        DCU_apuWbByteEn : out    vl_logic_vector(0 to 3);
        DCS_plbCacheable: out    vl_logic;
        DCS_plbBE       : out    vl_logic_vector(0 to 7);
        DCS_plbGuarded  : out    vl_logic;
        DCS_plbU0Attr   : out    vl_logic;
        DCU_ocmAbort    : out    vl_logic;
        DCU_ocmAbortReq : out    vl_logic;
        DCU_ocmData     : out    vl_logic_vector(0 to 31);
        DCU_ocmLoadReq  : out    vl_logic;
        DCU_ocmStoreReq : out    vl_logic;
        DCU_ocmWait     : out    vl_logic;
        DCS_plbRequest  : out    vl_logic;
        DCS_plbSize2    : out    vl_logic;
        DCS_plbWriteThru: out    vl_logic;
        EXE_apuLoadData : out    vl_logic_vector(0 to 31);
        EXE_dcrAddr     : out    vl_logic_vector(0 to 9);
        EXE_dcrDataBus  : out    vl_logic_vector(0 to 31);
        EXE_raData      : out    vl_logic_vector(0 to 31);
        EXE_rbData      : out    vl_logic_vector(0 to 31);
        EXE_xerCa       : out    vl_logic;
        ICS_plbABus     : out    vl_logic_vector(0 to 29);
        ICS_plbPriority : out    vl_logic_vector(0 to 1);
        ICS_plbAbort    : out    vl_logic;
        ICS_plbCacheable: out    vl_logic;
        ICU_ocmIcuReady : out    vl_logic;
        ICU_ocmReqPending: out    vl_logic;
        ICS_plbU0Attr   : out    vl_logic;
        ICS_plbRequest  : out    vl_logic;
        ICS_plbTranSize : out    vl_logic_vector(2 to 3);
        IFB_TE          : out    vl_logic;
        IFB_cntxSyncOCM : out    vl_logic;
        IFB_coreSleepReq: out    vl_logic;
        IFB_dcdFullApuL2: out    vl_logic;
        IFB_extStopAck  : out    vl_logic;
        IFB_isOcmAbus   : out    vl_logic_vector(0 to 29);
        IFB_ocmAbort    : out    vl_logic;
        IFB_reqDcdApuL2 : out    vl_logic_vector(0 to 31);
        IFB_wbIar       : out    vl_logic_vector(0 to 29);
        MMU_apuWbEndian : out    vl_logic;
        MMU_dsocmABus   : out    vl_logic_vector(0 to 29);
        MMU_dsocmCacheable: out    vl_logic;
        MMU_dsocmGuarded: out    vl_logic;
        MMU_dsocmU0Attr : out    vl_logic;
        MMU_dsocmXltValid: out    vl_logic;
        MMU_isocmCacheable: out    vl_logic;
        MMU_isocmU0Attr : out    vl_logic;
        MMU_isocmXltValid: out    vl_logic;
        PCL_apuExeWdCnt : out    vl_logic_vector(0 to 1);
        PCL_apuLoadDV   : out    vl_logic;
        PCL_apuWbHold   : out    vl_logic;
        PCL_dcdHoldForApu: out    vl_logic;
        PCL_dsOcmByteEn : out    vl_logic_vector(0 to 3);
        PCL_exeFlushForApu: out    vl_logic;
        PCL_exeHoldForApu: out    vl_logic;
        PCL_exeStringMultiple: out    vl_logic;
        PCL_mfDCR       : out    vl_logic;
        PCL_mtDCR       : out    vl_logic;
        PCL_trcLoadDV   : out    vl_logic;
        PCL_wbComplete  : out    vl_logic;
        PCL_wbFull      : out    vl_logic;
        TIM_timerResetL2: out    vl_logic;
        TRC_evenESBusL2 : out    vl_logic_vector(0 to 1);
        TRC_oddCycle    : out    vl_logic;
        TRC_oddESBusL2  : out    vl_logic_vector(0 to 1);
        TRC_tsBusL2     : out    vl_logic_vector(0 to 3);
        VCT_apuWbFlush  : out    vl_logic;
        VCT_errorOut    : out    vl_logic;
        VCT_msrCE       : out    vl_logic;
        VCT_msrEE       : out    vl_logic;
        VCT_msrFE0      : out    vl_logic;
        VCT_msrFE1      : out    vl_logic;
        VCT_msrWE       : out    vl_logic;
        VCT_timerIntrp  : out    vl_logic;
        APU_dcdApuOp    : in     vl_logic;
        APU_dcdExeLdDepend: in     vl_logic;
        APU_dcdForceAlgn: in     vl_logic;
        APU_dcdForceBESteering: in     vl_logic;
        APU_dcdFpuOp    : in     vl_logic;
        APU_dcdGprWr    : in     vl_logic;
        APU_dcdLdStByte : in     vl_logic;
        APU_dcdLdStDw   : in     vl_logic;
        APU_dcdLdStHw   : in     vl_logic;
        APU_dcdLdStQw   : in     vl_logic;
        APU_dcdLdStWd   : in     vl_logic;
        APU_dcdLoad     : in     vl_logic;
        APU_dcdLwbLdDepend: in     vl_logic;
        APU_dcdPrivOp   : in     vl_logic;
        APU_dcdRaEn     : in     vl_logic;
        APU_dcdRbEn     : in     vl_logic;
        APU_dcdRc       : in     vl_logic;
        APU_dcdStore    : in     vl_logic;
        APU_dcdTrapBE   : in     vl_logic;
        APU_dcdTrapLE   : in     vl_logic;
        APU_dcdUpdate   : in     vl_logic;
        APU_dcdValidOp  : in     vl_logic;
        APU_dcdWbLdDepend: in     vl_logic;
        APU_dcdXerCAEn  : in     vl_logic;
        APU_dcdXerOVEn  : in     vl_logic;
        APU_exception   : in     vl_logic;
        APU_exeBlkingMco: in     vl_logic;
        APU_exeBusy     : in     vl_logic;
        APU_exeCa       : in     vl_logic;
        APU_exeCr0      : in     vl_logic_vector(0 to 3);
        APU_exeCrField  : in     vl_logic_vector(0 to 2);
        APU_exeNonBlkingMco: in     vl_logic;
        APU_exeOv       : in     vl_logic;
        APU_exeResult   : in     vl_logic_vector(0 to 31);
        APU_fpuException: in     vl_logic;
        APU_sleepReq    : in     vl_logic;
        C405_timerTick  : in     vl_logic;
        CB              : in     vl_logic;
        CPM_CpuEn       : in     vl_logic;
        CPM_coreClkOff  : in     vl_logic;
        DBG_c405DebugHalt: in     vl_logic;
        DBG_c405ExtBusHoldAck: in     vl_logic;
        EIC_critIntrp   : in     vl_logic;
        EIC_extIntrp    : in     vl_logic;
        JTG_c405BndScanTDO: in     vl_logic;
        JTG_c405TCK     : in     vl_logic;
        JTG_c405TDI     : in     vl_logic;
        JTG_c405TMS     : in     vl_logic;
        JTG_c405TRST_NEG: in     vl_logic;
        LSSD_bistCClk   : in     vl_logic;
        LSSD_coreTestEn : in     vl_logic;
        CPM_jtgEn       : in     vl_logic;
        LSSD_testM1     : in     vl_logic;
        LSSD_testM3     : in     vl_logic;
        CPM_timerEn     : in     vl_logic;
        OCM_DOF         : in     vl_logic;
        OCM_dsComplete  : in     vl_logic;
        OCM_dsData      : in     vl_logic_vector(0 to 31);
        OCM_dsHold      : in     vl_logic;
        OCM_isDATA      : in     vl_logic_vector(0 to 63);
        OCM_isDValid    : in     vl_logic_vector(0 to 1);
        OCM_isHold      : in     vl_logic;
        PGM_coprocPresent: in     vl_logic;
        PGM_dcu_DOF     : in     vl_logic;
        PGM_deterministicMult: in     vl_logic;
        PGM_divEn       : in     vl_logic;
        PGM_mmuEn       : in     vl_logic;
        PGM_pvrBus      : in     vl_logic_vector(0 to 31);
        PLB_dcuAddrAck  : in     vl_logic;
        PLB_dcuBusy     : in     vl_logic;
        PLB_dcuErr      : in     vl_logic;
        PLB_dcuRdDAck   : in     vl_logic;
        PLB_dcuRdDBus   : in     vl_logic_vector(0 to 63);
        PLB_dcuRdWdAddr : in     vl_logic_vector(0 to 2);
        PLB_dcuSsize    : in     vl_logic;
        PLB_dcuWrDAck   : in     vl_logic;
        PLB_icuAddrAck  : in     vl_logic;
        PLB_icuBusy     : in     vl_logic;
        PLB_icuDBus     : in     vl_logic_vector(0 to 63);
        PLB_icuError    : in     vl_logic;
        PLB_icuRdDAck   : in     vl_logic;
        PLB_icuRdWrAddr : in     vl_logic_vector(1 to 3);
        PLB_icuSSize    : in     vl_logic;
        PLB_sampleCycle : in     vl_logic;
        RST_c405ResetChip: in     vl_logic;
        RST_c405ResetSystem: in     vl_logic;
        TRC_c405TE      : in     vl_logic;
        TRC_c405TraceDisable: in     vl_logic;
        XXX_dcrAck      : in     vl_logic;
        XXX_dcrDataBus  : in     vl_logic_vector(0 to 31);
        XXX_uncondEvent : in     vl_logic;
        resetCore       : in     vl_logic;
        BIST_pepsPF     : out    vl_logic_vector(0 to 2);
        LSSD_c405CE0EVS : in     vl_logic;
        LSSD_c405BistCE0StClk: in     vl_logic;
        LSSD_c405BistCE1Enable: in     vl_logic;
        LSSD_c405BistCE1Mode: in     vl_logic;
        TIE_c405ClockEnable: in     vl_logic;
        TIE_c405DutyEnable: in     vl_logic;
        CPM_c405PLBClock: in     vl_logic;
        CPM_c405SyncBypass: in     vl_logic;
        PLB_sampleCycleAlt: in     vl_logic;
        testmode        : in     vl_logic;
        dcu_bist_debug_si: in     vl_logic_vector(3 downto 0);
        dcu_bist_debug_so: out    vl_logic_vector(3 downto 0);
        dcu_bist_debug_en: in     vl_logic_vector(3 downto 0);
        dcu_bist_mode_reg_in: in     vl_logic_vector(18 downto 0);
        dcu_bist_mode_reg_out: out    vl_logic_vector(18 downto 0);
        dcu_bist_parallel_dr: in     vl_logic;
        dcu_bist_mode_reg_si: in     vl_logic;
        dcu_bist_mode_reg_so: out    vl_logic;
        dcu_bist_shift_dr: in     vl_logic;
        dcu_bist_mbrun  : in     vl_logic;
        icu_bist_debug_si: in     vl_logic_vector(3 downto 0);
        icu_bist_debug_so: out    vl_logic_vector(3 downto 0);
        icu_bist_debug_en: in     vl_logic_vector(3 downto 0);
        icu_bist_mode_reg_in: in     vl_logic_vector(18 downto 0);
        icu_bist_mode_reg_out: out    vl_logic_vector(18 downto 0);
        icu_bist_parallel_dr: in     vl_logic;
        icu_bist_mode_reg_si: in     vl_logic;
        icu_bist_mode_reg_so: out    vl_logic;
        icu_bist_shift_dr: in     vl_logic;
        icu_bist_mbrun  : in     vl_logic
    );
end p405s_core_top;
