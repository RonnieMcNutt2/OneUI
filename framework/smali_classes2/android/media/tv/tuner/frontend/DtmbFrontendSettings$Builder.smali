.class public final Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DtmbFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBandwidth:I

.field private mCodeRate:I

.field private mFrequency:J

.field private mGuardInterval:I

.field private mModulation:I

.field private mTimeInterleaveMode:I

.field private mTransmissionMode:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mFrequency:J

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mModulation:I

    .line 317
    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mCodeRate:I

    .line 318
    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTransmissionMode:I

    .line 319
    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mBandwidth:I

    .line 320
    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTimeInterleaveMode:I

    .line 321
    iput v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mGuardInterval:I

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;
    .registers 12

    .line 422
    new-instance v10, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mModulation:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mCodeRate:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTransmissionMode:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mGuardInterval:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTimeInterleaveMode:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mBandwidth:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;-><init>(JIIIIIILandroid/media/tv/tuner/frontend/DtmbFrontendSettings-IA;)V

    return-object v10
.end method

.method public setBandwidth(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 2
    .param p1, "bandwidth"    # I

    .line 381
    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mBandwidth:I

    .line 382
    return-object p0
.end method

.method public setCodeRate(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 2
    .param p1, "codeRate"    # I

    .line 370
    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mCodeRate:I

    .line 371
    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 348
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mFrequency:J

    .line 349
    return-object p0
.end method

.method public setGuardInterval(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 2
    .param p1, "guardInterval"    # I

    .line 403
    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mGuardInterval:I

    .line 404
    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 2
    .param p1, "modulation"    # I

    .line 359
    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mModulation:I

    .line 360
    return-object p0
.end method

.method public setTimeInterleaveMode(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 2
    .param p1, "timeInterleaveMode"    # I

    .line 392
    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTimeInterleaveMode:I

    .line 393
    return-object p0
.end method

.method public setTransmissionMode(I)Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 2
    .param p1, "transmissionMode"    # I

    .line 413
    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;->mTransmissionMode:I

    .line 414
    return-object p0
.end method
