.class public abstract Landroid/media/tv/tuner/frontend/FrontendSettings;
.super Ljava/lang/Object;
.source "FrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/FrontendSettings$FrontendSpectralInversion;,
        Landroid/media/tv/tuner/frontend/FrontendSettings$InnerFec;,
        Landroid/media/tv/tuner/frontend/FrontendSettings$Type;
    }
.end annotation


# static fields
.field public static final FEC_11_15:J = 0x400000L

.field public static final FEC_11_20:J = 0x800000L

.field public static final FEC_11_45:J = 0x1000000L

.field public static final FEC_13_18:J = 0x2000000L

.field public static final FEC_13_45:J = 0x4000000L

.field public static final FEC_14_45:J = 0x8000000L

.field public static final FEC_1_2:J = 0x2L

.field public static final FEC_1_3:J = 0x4L

.field public static final FEC_1_4:J = 0x8L

.field public static final FEC_1_5:J = 0x10L

.field public static final FEC_23_36:J = 0x10000000L

.field public static final FEC_25_36:J = 0x20000000L

.field public static final FEC_26_45:J = 0x40000000L

.field public static final FEC_28_45:J = 0x80000000L

.field public static final FEC_29_45:J = 0x100000000L

.field public static final FEC_2_3:J = 0x20L

.field public static final FEC_2_5:J = 0x40L

.field public static final FEC_2_9:J = 0x80L

.field public static final FEC_31_45:J = 0x200000000L

.field public static final FEC_32_45:J = 0x400000000L

.field public static final FEC_3_4:J = 0x100L

.field public static final FEC_3_5:J = 0x200L

.field public static final FEC_4_15:J = 0x800L

.field public static final FEC_4_5:J = 0x400L

.field public static final FEC_5_6:J = 0x1000L

.field public static final FEC_5_9:J = 0x2000L

.field public static final FEC_6_7:J = 0x4000L

.field public static final FEC_77_90:J = 0x800000000L

.field public static final FEC_7_15:J = 0x20000L

.field public static final FEC_7_8:J = 0x8000L

.field public static final FEC_7_9:J = 0x10000L

.field public static final FEC_8_15:J = 0x80000L

.field public static final FEC_8_9:J = 0x40000L

.field public static final FEC_9_10:J = 0x100000L

.field public static final FEC_9_20:J = 0x200000L

.field public static final FEC_AUTO:J = 0x1L

.field public static final FEC_UNDEFINED:J = 0x0L

.field public static final FRONTEND_SPECTRAL_INVERSION_INVERTED:I = 0x2

.field public static final FRONTEND_SPECTRAL_INVERSION_NORMAL:I = 0x1

.field public static final FRONTEND_SPECTRAL_INVERSION_UNDEFINED:I = 0x0

.field public static final TYPE_ANALOG:I = 0x1

.field public static final TYPE_ATSC:I = 0x2

.field public static final TYPE_ATSC3:I = 0x3

.field public static final TYPE_DTMB:I = 0xa

.field public static final TYPE_DVBC:I = 0x4

.field public static final TYPE_DVBS:I = 0x5

.field public static final TYPE_DVBT:I = 0x6

.field public static final TYPE_IPTV:I = 0xb

.field public static final TYPE_ISDBS:I = 0x7

.field public static final TYPE_ISDBS3:I = 0x8

.field public static final TYPE_ISDBT:I = 0x9

.field public static final TYPE_UNDEFINED:I


# instance fields
.field private mEndFrequency:J

.field private final mFrequency:J

.field private mSpectralInversion:I


# direct methods
.method constructor <init>(J)V
    .registers 5
    .param p1, "frequency"    # J

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mEndFrequency:J

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mSpectralInversion:I

    .line 282
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mFrequency:J

    return-void
.end method


# virtual methods
.method public getEndFrequency()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getEndFrequencyLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getEndFrequencyLong()J
    .registers 3

    .line 329
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mEndFrequency:J

    return-wide v0
.end method

.method public getFrequency()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getFrequencyLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getFrequencyLong()J
    .registers 3

    .line 307
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mFrequency:J

    return-wide v0
.end method

.method public getFrontendSpectralInversion()I
    .registers 2

    .line 339
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mSpectralInversion:I

    return v0
.end method

.method public abstract getType()I
.end method

.method public setEndFrequency(I)V
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->setEndFrequencyLong(J)V

    .line 374
    return-void
.end method

.method public setEndFrequencyLong(J)V
    .registers 5
    .param p1, "endFrequency"    # J

    .line 389
    const v0, 0x10001

    const-string v1, "setEndFrequency"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 391
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    .line 394
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mEndFrequency:J

    goto :goto_1c

    .line 392
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endFrequency must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setSpectralInversion(I)V
    .registers 4
    .param p1, "inversion"    # I

    .line 352
    const v0, 0x10001

    const-string v1, "setSpectralInversion"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 354
    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mSpectralInversion:I

    .line 356
    :cond_d
    return-void
.end method
