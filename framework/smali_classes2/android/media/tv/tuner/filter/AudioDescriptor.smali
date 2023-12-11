.class public Landroid/media/tv/tuner/filter/AudioDescriptor;
.super Ljava/lang/Object;
.source "AudioDescriptor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mAdFade:B

.field private final mAdGainCenter:B

.field private final mAdGainFront:B

.field private final mAdGainSurround:B

.field private final mAdPan:B

.field private final mVersionTextTag:C


# direct methods
.method private constructor <init>(BBCBBB)V
    .registers 7
    .param p1, "adFade"    # B
    .param p2, "adPan"    # B
    .param p3, "versionTextTag"    # C
    .param p4, "adGainCenter"    # B
    .param p5, "adGainFront"    # B
    .param p6, "adGainSurround"    # B

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-byte p1, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdFade:B

    .line 39
    iput-byte p2, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdPan:B

    .line 40
    iput-char p3, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mVersionTextTag:C

    .line 41
    iput-byte p4, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainCenter:B

    .line 42
    iput-byte p5, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainFront:B

    .line 43
    iput-byte p6, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainSurround:B

    .line 44
    return-void
.end method


# virtual methods
.method public getAdFade()B
    .registers 2

    .line 55
    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdFade:B

    return v0
.end method

.method public getAdGainCenter()B
    .registers 2

    .line 89
    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainCenter:B

    return v0
.end method

.method public getAdGainFront()B
    .registers 2

    .line 98
    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainFront:B

    return v0
.end method

.method public getAdGainSurround()B
    .registers 2

    .line 107
    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdGainSurround:B

    return v0
.end method

.method public getAdPan()B
    .registers 2

    .line 66
    iget-byte v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mAdPan:B

    return v0
.end method

.method public getAdVersionTextTag()C
    .registers 2

    .line 75
    iget-char v0, p0, Landroid/media/tv/tuner/filter/AudioDescriptor;->mVersionTextTag:C

    return v0
.end method
