.class public final Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DtmbFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mBandwidthCap:I

.field private final mCodeRateCap:I

.field private final mGuardIntervalCap:I

.field private final mModulationCap:I

.field private final mTimeInterleaveModeCap:I

.field private final mTransmissionModeCap:I


# direct methods
.method private constructor <init>(IIIIII)V
    .registers 7
    .param p1, "modulationCap"    # I
    .param p2, "transmissionModeCap"    # I
    .param p3, "guardIntervalCap"    # I
    .param p4, "timeInterleaveModeCap"    # I
    .param p5, "codeRateCap"    # I
    .param p6, "bandwidthCap"    # I

    .line 37
    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    .line 38
    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mModulationCap:I

    .line 39
    iput p2, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTransmissionModeCap:I

    .line 40
    iput p3, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mGuardIntervalCap:I

    .line 41
    iput p4, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTimeInterleaveModeCap:I

    .line 42
    iput p5, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mCodeRateCap:I

    .line 43
    iput p6, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mBandwidthCap:I

    .line 44
    return-void
.end method


# virtual methods
.method public getBandwidthCapability()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public getCodeRateCapability()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public getGuardIntervalCapability()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public getModulationCapability()I
    .registers 2

    .line 53
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public getTimeInterleaveModeCapability()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTimeInterleaveModeCap:I

    return v0
.end method

.method public getTransmissionModeCapability()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTransmissionModeCap:I

    return v0
.end method
