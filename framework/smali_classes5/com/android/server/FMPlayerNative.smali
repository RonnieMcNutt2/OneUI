.class public Lcom/android/server/FMPlayerNative;
.super Lcom/android/server/FMPlayerNativeBase;
.source "FMPlayerNative.java"


# static fields
.field private static final DEBUGGABLE:Z

.field private static mService:Lcom/android/server/FMRadioService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 17
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-string v1, "FMPlayerNative"

    if-lez v0, :cond_11

    .line 18
    const-string v0, "fmradio_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const-string v0, "FMRadio lib loaded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 21
    :cond_11
    const-string v0, "FMRadio lib not loaded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :goto_16
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    move v1, v2

    :cond_22
    sput-boolean v1, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/FMRadioService;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/FMPlayerNativeBase;-><init>(Lcom/android/server/FMRadioService;)V

    .line 30
    sput-object p1, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 31
    return-void
.end method

.method public static notifyAFDataReceived(J)V
    .registers 5
    .param p0, "af"    # J

    .line 88
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 89
    return-void

    .line 90
    :cond_9
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAFDataReceived :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 91
    :cond_24
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xe

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static notifyAFStarted()V
    .registers 3

    .line 76
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 77
    return-void

    .line 78
    :cond_9
    const-string v0, "NotifyAFStarted :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static notifyPIECCEvent(Lcom/android/server/FMPlayerNativeBase$PIECCData;)V
    .registers 1
    .param p0, "ob"    # Lcom/android/server/FMPlayerNativeBase$PIECCData;

    .line 67
    return-void
.end method

.method public static notifyRDSEvent(Lcom/android/server/FMPlayerNativeBase$RDSData;)V
    .registers 3
    .param p0, "ob"    # Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 47
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 48
    return-void

    .line 49
    :cond_9
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got Events :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 51
    :cond_23
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public static notifyRTPlusEvent(Lcom/android/server/FMPlayerNativeBase$RTPlusData;)V
    .registers 3
    .param p0, "ob"    # Lcom/android/server/FMPlayerNativeBase$RTPlusData;

    .line 57
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 58
    return-void

    .line 59
    :cond_9
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got notifyRTPlusEvents :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 61
    :cond_23
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method public native cancelAFSwitching()V
.end method

.method public native cancelSeek()V
.end method

.method public native disableAF()V
.end method

.method public native disableDNS()V
.end method

.method public native disableRDS()V
.end method

.method public native enableAF()V
.end method

.method public native enableDNS()V
.end method

.method public native enableRDS()V
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 37
    return-void
.end method

.method public native getAFRMSSISamples()I
.end method

.method public native getAFRMSSIThreshold()I
.end method

.method public native getAFValid_th()I
.end method

.method public native getAF_th()I
.end method

.method public native getBlendRmssi()I
.end method

.method public native getBlendSinr()I
.end method

.method public native getCFOTh12()I
.end method

.method public native getCnt_th()I
.end method

.method public native getCnt_th_2()I
.end method

.method public native getCurrentChannel()J
.end method

.method public native getCurrentRSSI()J
.end method

.method public native getCurrentSNR()J
.end method

.method public native getDeSenseList()Ljava/lang/String;
.end method

.method public native getFakeChannel()Ljava/lang/String;
.end method

.method public native getFrequencyOffsetThreshold()I
.end method

.method public native getGoodChannelRMSSIThreshold()I
.end method

.method public native getHybridSearch()Ljava/lang/String;
.end method

.method public native getMaxVolume()J
.end method

.method public native getNoisePowerThreshold()I
.end method

.method public native getOffChannelThreshold()I
.end method

.method public native getOnChannelThreshold()I
.end method

.method public native getPilotPowerThreshold()I
.end method

.method public native getRMSSIFirstStage()I
.end method

.method public native getRSSI_th()I
.end method

.method public native getRSSI_th_2()I
.end method

.method public native getSINRFirstStage()I
.end method

.method public native getSINRSamples()I
.end method

.method public native getSINRThreshold()I
.end method

.method public native getSNR_th()I
.end method

.method public native getSNR_th_2()I
.end method

.method public native getSearchAlgoType()I
.end method

.method public native getSeekDC()I
.end method

.method public native getSeekQA()I
.end method

.method public native getSoftMuteMode()Z
.end method

.method public native getVolume()J
.end method

.method public native muteOff()V
.end method

.method public native muteOn()V
.end method

.method public native off()V
.end method

.method public offFMService()V
    .registers 1

    .line 103
    return-void
.end method

.method public native on()J
.end method

.method public native preInitialize()J
.end method

.method public native searchAll()J
.end method

.method public native searchDown()J
.end method

.method public native searchUp()J
.end method

.method public native seekDown()J
.end method

.method public native seekUp()J
.end method

.method public native setAFRMSSISamples(I)V
.end method

.method public native setAFRMSSIThreshold(I)V
.end method

.method public native setAFValid_th(I)V
.end method

.method public native setAF_th(I)V
.end method

.method public native setATJ(I)V
.end method

.method public native setBand(I)V
.end method

.method public native setBlendPAMD_th(I)V
.end method

.method public native setBlendRSSI_th(I)V
.end method

.method public native setBlendRmssi(I)V
.end method

.method public native setBlendSinr(I)V
.end method

.method public native setCFOTh12(I)V
.end method

.method public native setChannelSpacing(I)V
.end method

.method public native setCnt_th(I)V
.end method

.method public native setCnt_th_2(I)V
.end method

.method public native setDEConstant(J)V
.end method

.method public native setDeSenseList(Ljava/lang/String;)V
.end method

.method public native setFMIntenna(Z)V
.end method

.method public native setFakeChannel(Ljava/lang/String;)V
.end method

.method public native setFrequencyOffsetThreshold(I)V
.end method

.method public native setGoodChannelRMSSIThreshold(I)V
.end method

.method public native setHybridSearch(Ljava/lang/String;)V
.end method

.method public native setIFCount1(I)V
.end method

.method public native setIFCount2(I)V
.end method

.method public native setMono()V
.end method

.method public native setNoisePowerThreshold(I)V
.end method

.method public native setOffChannelThreshold(I)V
.end method

.method public native setOnChannelThreshold(I)V
.end method

.method public native setPilotPowerThreshold(I)V
.end method

.method public native setRMSSIFirstStage(I)V
.end method

.method public native setRSSI_th(I)V
.end method

.method public native setRSSI_th_2(I)V
.end method

.method public native setRecordMode(I)V
.end method

.method public native setSINRFirstStage(I)V
.end method

.method public native setSINRSamples(I)V
.end method

.method public native setSINRThreshold(I)V
.end method

.method public native setSNR_th(I)V
.end method

.method public native setSNR_th_2(I)V
.end method

.method public native setScanning(Z)V
.end method

.method public native setSearchAlgoType(I)V
.end method

.method public native setSeekDC(I)V
.end method

.method public native setSeekDesenseRSSI(I)V
.end method

.method public native setSeekQA(I)V
.end method

.method public native setSeekRSSI(J)V
.end method

.method public native setSeekSMG(I)V
.end method

.method public native setSeekSNR(J)V
.end method

.method public native setSlimbusEnable(I)V
.end method

.method public native setSoftMuteCoeff(J)V
.end method

.method public native setSoftStereoBlendCoeff(J)V
.end method

.method public native setSoftStereoBlendRef(J)V
.end method

.method public native setSoftmute(Z)V
.end method

.method public native setSoftmute_th(I)V
.end method

.method public native setSpeakerOn(Z)V
.end method

.method public native setStereo()V
.end method

.method public native setVolume(J)V
.end method

.method public native tune(J)V
.end method
