.class public Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DvbsFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

.field private mFrequency:J

.field private mInputStreamId:I

.field private mIsDiseqcRxMessage:Z

.field private mModulation:I

.field private mPilot:I

.field private mRolloff:I

.field private mScanType:I

.field private mStandard:I

.field private mSymbolRate:I

.field private mVcmMode:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:J

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    .line 366
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    .line 367
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    .line 368
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    .line 369
    const v1, 0xffff

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    .line 370
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    .line 371
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    .line 372
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mScanType:I

    .line 373
    iput-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mIsDiseqcRxMessage:Z

    .line 376
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;
    .registers 16

    .line 524
    new-instance v14, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    iget-object v4, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    iget v5, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    iget v9, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    iget v10, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    iget v11, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mScanType:I

    iget-boolean v12, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mIsDiseqcRxMessage:Z

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;-><init>(JILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIIIZLandroid/media/tv/tuner/frontend/DvbsFrontendSettings-IA;)V

    return-object v14
.end method

.method public setCanHandleDiseqcRxMessage(Z)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 4
    .param p1, "canHandleDiseqcMessage"    # Z

    .line 431
    const v0, 0x10001

    const-string v1, "setCanHandleDiseqcRxMessage"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 433
    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mIsDiseqcRxMessage:Z

    .line 435
    :cond_d
    return-object p0
.end method

.method public setCodeRate(Landroid/media/tv/tuner/frontend/DvbsCodeRate;)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2
    .param p1, "codeRate"    # Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    .line 455
    iput-object p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    .line 456
    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 399
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:J

    .line 400
    return-object p0
.end method

.method public setInputStreamId(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2
    .param p1, "inputStreamId"    # I

    .line 495
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    .line 496
    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2
    .param p1, "modulation"    # I

    .line 445
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    .line 446
    return-object p0
.end method

.method public setPilot(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2
    .param p1, "pilot"    # I

    .line 485
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    .line 486
    return-object p0
.end method

.method public setRolloff(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2
    .param p1, "rolloff"    # I

    .line 475
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    .line 476
    return-object p0
.end method

.method public setScanType(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 4
    .param p1, "scanType"    # I

    .line 414
    const v0, 0x10001

    const-string v1, "setScanType"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 416
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mScanType:I

    .line 418
    :cond_d
    return-object p0
.end method

.method public setStandard(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2
    .param p1, "standard"    # I

    .line 505
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    .line 506
    return-object p0
.end method

.method public setSymbolRate(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2
    .param p1, "symbolRate"    # I

    .line 465
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    .line 466
    return-object p0
.end method

.method public setVcmMode(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2
    .param p1, "vcm"    # I

    .line 515
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    .line 516
    return-object p0
.end method
