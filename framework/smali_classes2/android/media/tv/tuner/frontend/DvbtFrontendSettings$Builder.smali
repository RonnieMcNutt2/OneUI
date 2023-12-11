.class public Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DvbtFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBandwidth:I

.field private mConstellation:I

.field private mFrequency:J

.field private mGuardInterval:I

.field private mHierarchy:I

.field private mHpCodeRate:I

.field private mIsHighPriority:Z

.field private mIsMiso:Z

.field private mLpCodeRate:I

.field private mPlpGroupId:I

.field private mPlpId:I

.field private mPlpMode:I

.field private mStandard:I

.field private mTransmissionMode:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    .line 530
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    .line 531
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    .line 532
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    .line 533
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    .line 534
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    .line 535
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    .line 536
    iput-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    .line 537
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    .line 538
    iput-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    .line 539
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    .line 540
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    .line 541
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    .line 544
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;
    .registers 21

    .line 726
    move-object/from16 v0, p0

    new-instance v18, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;

    move-object/from16 v1, v18

    iget-wide v2, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    iget v4, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    iget v5, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    iget v6, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    iget v7, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    iget v8, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    iget v9, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    iget v10, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    iget-boolean v11, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    iget v12, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    iget-boolean v13, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    iget v14, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    iget v15, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    move-object/from16 v19, v1

    iget v1, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    move/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;-><init>(JIIIIIIIZIZIIILandroid/media/tv/tuner/frontend/DvbtFrontendSettings-IA;)V

    return-object v18
.end method

.method public setBandwidth(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "bandwidth"    # I

    .line 598
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    .line 599
    return-object p0
.end method

.method public setConstellation(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4
    .param p1, "constellation"    # I

    .line 613
    invoke-static {p1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;->-$$Nest$smisExtendedConstellation(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 614
    const v0, 0x10001

    const-string v1, "set Constellation Ext"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 616
    :cond_11
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    .line 618
    :cond_13
    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 567
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    .line 568
    return-object p0
.end method

.method public setGuardInterval(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "guardInterval"    # I

    .line 657
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    .line 658
    return-object p0
.end method

.method public setHierarchy(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "hierarchy"    # I

    .line 627
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    .line 628
    return-object p0
.end method

.method public setHighPriority(Z)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "isHighPriority"    # Z

    .line 667
    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    .line 668
    return-object p0
.end method

.method public setHighPriorityCodeRate(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "hpCodeRate"    # I

    .line 637
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    .line 638
    return-object p0
.end method

.method public setLowPriorityCodeRate(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "lpCodeRate"    # I

    .line 647
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    .line 648
    return-object p0
.end method

.method public setMiso(Z)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "isMiso"    # Z

    .line 687
    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    .line 688
    return-object p0
.end method

.method public setPlpGroupId(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "plpGroupId"    # I

    .line 717
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    .line 718
    return-object p0
.end method

.method public setPlpId(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "plpId"    # I

    .line 707
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    .line 708
    return-object p0
.end method

.method public setPlpMode(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "plpMode"    # I

    .line 697
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    .line 698
    return-object p0
.end method

.method public setStandard(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "standard"    # I

    .line 677
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    .line 678
    return-object p0
.end method

.method public setTransmissionMode(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4
    .param p1, "transmissionMode"    # I

    .line 583
    invoke-static {p1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;->-$$Nest$smisExtendedTransmissionMode(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 584
    const v0, 0x10001

    const-string v1, "set TransmissionMode Ext"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 586
    :cond_11
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    .line 588
    :cond_13
    return-object p0
.end method
