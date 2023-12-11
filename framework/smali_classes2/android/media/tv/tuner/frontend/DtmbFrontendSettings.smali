.class public final Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "DtmbFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$TransmissionMode;,
        Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$CodeRate;,
        Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Modulation;,
        Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$GuardInterval;,
        Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$TimeInterleaveMode;,
        Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Bandwidth;
    }
.end annotation


# static fields
.field public static final BANDWIDTH_6MHZ:I = 0x4

.field public static final BANDWIDTH_8MHZ:I = 0x2

.field public static final BANDWIDTH_AUTO:I = 0x1

.field public static final BANDWIDTH_UNDEFINED:I = 0x0

.field public static final CODERATE_2_5:I = 0x2

.field public static final CODERATE_3_5:I = 0x4

.field public static final CODERATE_4_5:I = 0x8

.field public static final CODERATE_AUTO:I = 0x1

.field public static final CODERATE_UNDEFINED:I = 0x0

.field public static final GUARD_INTERVAL_AUTO:I = 0x1

.field public static final GUARD_INTERVAL_PN_420_CONST:I = 0x10

.field public static final GUARD_INTERVAL_PN_420_VARIOUS:I = 0x2

.field public static final GUARD_INTERVAL_PN_595_CONST:I = 0x4

.field public static final GUARD_INTERVAL_PN_945_CONST:I = 0x20

.field public static final GUARD_INTERVAL_PN_945_VARIOUS:I = 0x8

.field public static final GUARD_INTERVAL_PN_RESERVED:I = 0x40

.field public static final GUARD_INTERVAL_UNDEFINED:I = 0x0

.field public static final MODULATION_CONSTELLATION_16QAM:I = 0x8

.field public static final MODULATION_CONSTELLATION_32QAM:I = 0x10

.field public static final MODULATION_CONSTELLATION_4QAM:I = 0x2

.field public static final MODULATION_CONSTELLATION_4QAM_NR:I = 0x4

.field public static final MODULATION_CONSTELLATION_64QAM:I = 0x20

.field public static final MODULATION_CONSTELLATION_AUTO:I = 0x1

.field public static final MODULATION_CONSTELLATION_UNDEFINED:I = 0x0

.field public static final TIME_INTERLEAVE_MODE_AUTO:I = 0x1

.field public static final TIME_INTERLEAVE_MODE_TIMER_INT_240:I = 0x2

.field public static final TIME_INTERLEAVE_MODE_TIMER_INT_720:I = 0x4

.field public static final TIME_INTERLEAVE_MODE_UNDEFINED:I = 0x0

.field public static final TRANSMISSION_MODE_AUTO:I = 0x1

.field public static final TRANSMISSION_MODE_C1:I = 0x2

.field public static final TRANSMISSION_MODE_C3780:I = 0x4

.field public static final TRANSMISSION_MODE_UNDEFINED:I


# instance fields
.field private final mBandwidth:I

.field private final mCodeRate:I

.field private final mGuardInterval:I

.field private final mModulation:I

.field private final mTimeInterleaveMode:I

.field private final mTransmissionMode:I


# direct methods
.method private constructor <init>(JIIIIII)V
    .registers 9
    .param p1, "frequency"    # J
    .param p3, "modulation"    # I
    .param p4, "codeRate"    # I
    .param p5, "transmissionMode"    # I
    .param p6, "guardInterval"    # I
    .param p7, "timeInterleaveMode"    # I
    .param p8, "bandwidth"    # I

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 247
    iput p3, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mModulation:I

    .line 248
    iput p4, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mCodeRate:I

    .line 249
    iput p5, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mTransmissionMode:I

    .line 250
    iput p6, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mGuardInterval:I

    .line 251
    iput p7, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mTimeInterleaveMode:I

    .line 252
    iput p8, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mBandwidth:I

    .line 253
    return-void
.end method

.method synthetic constructor <init>(JIIIIIILandroid/media/tv/tuner/frontend/DtmbFrontendSettings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;-><init>(JIIIIII)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;
    .registers 2

    .line 308
    new-instance v0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/DtmbFrontendSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getBandwidth()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mBandwidth:I

    return v0
.end method

.method public getCodeRate()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mCodeRate:I

    return v0
.end method

.method public getGuardInterval()I
    .registers 2

    .line 300
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mGuardInterval:I

    return v0
.end method

.method public getModulation()I
    .registers 2

    .line 260
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mModulation:I

    return v0
.end method

.method public getTimeInterleaveMode()I
    .registers 2

    .line 292
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mTimeInterleaveMode:I

    return v0
.end method

.method public getTransmissionMode()I
    .registers 2

    .line 276
    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendSettings;->mTransmissionMode:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 429
    const/16 v0, 0xa

    return v0
.end method
