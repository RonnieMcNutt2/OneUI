.class public Lcom/android/server/FMPlayerNativeBase;
.super Ljava/lang/Object;
.source "FMPlayerNativeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMPlayerNativeBase$PIECCData;,
        Lcom/android/server/FMPlayerNativeBase$RTPlusData;,
        Lcom/android/server/FMPlayerNativeBase$RDSData;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/FMRadioService;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public cancelAFSwitching()V
    .registers 1

    .line 141
    return-void
.end method

.method public cancelSeek()V
    .registers 1

    .line 105
    return-void
.end method

.method public disableAF()V
    .registers 1

    .line 139
    return-void
.end method

.method public disableRDS()V
    .registers 1

    .line 135
    return-void
.end method

.method public enableAF()V
    .registers 1

    .line 137
    return-void
.end method

.method public enableRDS()V
    .registers 1

    .line 133
    return-void
.end method

.method public getAFRMSSISamples()I
    .registers 2

    .line 287
    const/4 v0, -0x1

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .registers 2

    .line 281
    const/4 v0, -0x1

    return v0
.end method

.method public getAFValid_th()I
    .registers 2

    .line 218
    const/4 v0, -0x1

    return v0
.end method

.method public getAF_th()I
    .registers 2

    .line 212
    const/4 v0, -0x1

    return v0
.end method

.method public getBlendRmssi()I
    .registers 2

    .line 305
    const/4 v0, -0x1

    return v0
.end method

.method public getBlendSinr()I
    .registers 2

    .line 311
    const/4 v0, -0x1

    return v0
.end method

.method public getCFOTh12()I
    .registers 2

    .line 263
    const/4 v0, -0x1

    return v0
.end method

.method public getCnt_th()I
    .registers 2

    .line 194
    const/4 v0, -0x1

    return v0
.end method

.method public getCnt_th_2()I
    .registers 2

    .line 206
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentChannel()J
    .registers 3

    .line 108
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .registers 3

    .line 162
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentSNR()J
    .registers 3

    .line 166
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDeSenseList()Ljava/lang/String;
    .registers 2

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFakeChannel()Ljava/lang/String;
    .registers 2

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrequencyOffsetThreshold()I
    .registers 2

    .line 335
    const/4 v0, -0x1

    return v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .registers 2

    .line 293
    const/4 v0, -0x1

    return v0
.end method

.method public getHybridSearch()Ljava/lang/String;
    .registers 2

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxVolume()J
    .registers 3

    .line 156
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getNoisePowerThreshold()I
    .registers 2

    .line 341
    const/4 v0, -0x1

    return v0
.end method

.method public getOffChannelThreshold()I
    .registers 2

    .line 251
    const/4 v0, -0x1

    return v0
.end method

.method public getOnChannelThreshold()I
    .registers 2

    .line 245
    const/4 v0, -0x1

    return v0
.end method

.method public getPilotPowerThreshold()I
    .registers 2

    .line 338
    const/4 v0, -0x1

    return v0
.end method

.method public getRMSSIFirstStage()I
    .registers 2

    .line 269
    const/4 v0, -0x1

    return v0
.end method

.method public getRSSI_th()I
    .registers 2

    .line 186
    const/4 v0, -0x1

    return v0
.end method

.method public getRSSI_th_2()I
    .registers 2

    .line 198
    const/4 v0, -0x1

    return v0
.end method

.method public getSINRFirstStage()I
    .registers 2

    .line 275
    const/4 v0, -0x1

    return v0
.end method

.method public getSINRSamples()I
    .registers 2

    .line 239
    const/4 v0, -0x1

    return v0
.end method

.method public getSINRThreshold()I
    .registers 2

    .line 257
    const/4 v0, -0x1

    return v0
.end method

.method public getSNR_th()I
    .registers 2

    .line 190
    const/4 v0, -0x1

    return v0
.end method

.method public getSNR_th_2()I
    .registers 2

    .line 202
    const/4 v0, -0x1

    return v0
.end method

.method public getSearchAlgoType()I
    .registers 2

    .line 233
    const/4 v0, -0x1

    return v0
.end method

.method public getSeekDC()I
    .registers 2

    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public getSeekQA()I
    .registers 2

    .line 325
    const/4 v0, -0x1

    return v0
.end method

.method public getSoftMuteMode()Z
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()J
    .registers 3

    .line 126
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public muteOff()V
    .registers 1

    .line 131
    return-void
.end method

.method public muteOn()V
    .registers 1

    .line 129
    return-void
.end method

.method public off()V
    .registers 1

    .line 93
    return-void
.end method

.method public offFMService()V
    .registers 1

    .line 95
    return-void
.end method

.method public on()J
    .registers 3

    .line 86
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public preInitialize()J
    .registers 3

    .line 90
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchAll()J
    .registers 3

    .line 120
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchDown()J
    .registers 3

    .line 112
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchUp()J
    .registers 3

    .line 116
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekDown()J
    .registers 3

    .line 102
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekUp()J
    .registers 3

    .line 98
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAFRMSSISamples(I)V
    .registers 2
    .param p1, "value"    # I

    .line 284
    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .registers 2
    .param p1, "value"    # I

    .line 278
    return-void
.end method

.method public setAFValid_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 215
    return-void
.end method

.method public setAF_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 209
    return-void
.end method

.method public setATJ(I)V
    .registers 2
    .param p1, "bATJOn"    # I

    .line 364
    return-void
.end method

.method public setBand(I)V
    .registers 2
    .param p1, "band"    # I

    .line 143
    return-void
.end method

.method public setBlendPAMD_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 355
    return-void
.end method

.method public setBlendRSSI_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 354
    return-void
.end method

.method public setBlendRmssi(I)V
    .registers 2
    .param p1, "value"    # I

    .line 302
    return-void
.end method

.method public setBlendSinr(I)V
    .registers 2
    .param p1, "value"    # I

    .line 308
    return-void
.end method

.method public setCFOTh12(I)V
    .registers 2
    .param p1, "value"    # I

    .line 260
    return-void
.end method

.method public setChannelSpacing(I)V
    .registers 2
    .param p1, "spacing"    # I

    .line 145
    return-void
.end method

.method public setCnt_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 177
    return-void
.end method

.method public setCnt_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .line 183
    return-void
.end method

.method public setDEConstant(J)V
    .registers 3
    .param p1, "value"    # J

    .line 159
    return-void
.end method

.method public setDeSenseList(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setFMIntenna(Z)V
    .registers 2
    .param p1, "setFMIntenna"    # Z

    .line 221
    return-void
.end method

.method public setFakeChannel(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setFrequencyOffsetThreshold(I)V
    .registers 2
    .param p1, "value"    # I

    .line 331
    return-void
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .registers 2
    .param p1, "value"    # I

    .line 290
    return-void
.end method

.method public setHybridSearch(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setIFCount1(I)V
    .registers 2
    .param p1, "value"    # I

    .line 344
    return-void
.end method

.method public setIFCount2(I)V
    .registers 2
    .param p1, "value"    # I

    .line 345
    return-void
.end method

.method public setMono()V
    .registers 1

    .line 149
    return-void
.end method

.method public setNoisePowerThreshold(I)V
    .registers 2
    .param p1, "value"    # I

    .line 333
    return-void
.end method

.method public setOffChannelThreshold(I)V
    .registers 2
    .param p1, "value"    # I

    .line 248
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .registers 2
    .param p1, "value"    # I

    .line 242
    return-void
.end method

.method public setPilotPowerThreshold(I)V
    .registers 2
    .param p1, "value"    # I

    .line 332
    return-void
.end method

.method public setRMSSIFirstStage(I)V
    .registers 2
    .param p1, "value"    # I

    .line 266
    return-void
.end method

.method public setRSSI_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 173
    return-void
.end method

.method public setRSSI_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .line 179
    return-void
.end method

.method public setRecordMode(I)V
    .registers 2
    .param p1, "is_record"    # I

    .line 153
    return-void
.end method

.method public setSINRFirstStage(I)V
    .registers 2
    .param p1, "value"    # I

    .line 272
    return-void
.end method

.method public setSINRSamples(I)V
    .registers 2
    .param p1, "value"    # I

    .line 236
    return-void
.end method

.method public setSINRThreshold(I)V
    .registers 2
    .param p1, "value"    # I

    .line 254
    return-void
.end method

.method public setSNR_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 175
    return-void
.end method

.method public setSNR_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .line 181
    return-void
.end method

.method public setScanning(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 329
    return-void
.end method

.method public setSearchAlgoType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 230
    return-void
.end method

.method public setSeekDC(I)V
    .registers 2
    .param p1, "value"    # I

    .line 316
    return-void
.end method

.method public setSeekDesenseRSSI(I)V
    .registers 2
    .param p1, "value"    # I

    .line 351
    return-void
.end method

.method public setSeekQA(I)V
    .registers 2
    .param p1, "value"    # I

    .line 322
    return-void
.end method

.method public setSeekRSSI(J)V
    .registers 3
    .param p1, "value"    # J

    .line 169
    return-void
.end method

.method public setSeekSMG(I)V
    .registers 2
    .param p1, "value"    # I

    .line 352
    return-void
.end method

.method public setSeekSNR(J)V
    .registers 3
    .param p1, "value"    # J

    .line 171
    return-void
.end method

.method public setSlimbusEnable(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 371
    return-void
.end method

.method public setSoftMuteCoeff(J)V
    .registers 3
    .param p1, "value"    # J

    .line 347
    return-void
.end method

.method public setSoftStereoBlendCoeff(J)V
    .registers 3
    .param p1, "value"    # J

    .line 346
    return-void
.end method

.method public setSoftStereoBlendRef(J)V
    .registers 3
    .param p1, "value"    # J

    .line 348
    return-void
.end method

.method public setSoftmute(Z)V
    .registers 2
    .param p1, "setSoftmute"    # Z

    .line 223
    return-void
.end method

.method public setSoftmute_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 353
    return-void
.end method

.method public setSpeakerOn(Z)V
    .registers 2
    .param p1, "setSpeakerOn"    # Z

    .line 151
    return-void
.end method

.method public setStereo()V
    .registers 1

    .line 147
    return-void
.end method

.method public setVolume(J)V
    .registers 3
    .param p1, "volume"    # J

    .line 123
    return-void
.end method

.method public tune(J)V
    .registers 3
    .param p1, "freq"    # J

    .line 83
    return-void
.end method
