.class public Landroid/media/AudioGainConfig;
.super Ljava/lang/Object;
.source "AudioGainConfig.java"


# instance fields
.field private final mChannelMask:I

.field mGain:Landroid/media/AudioGain;

.field private final mIndex:I

.field private final mMode:I

.field private final mRampDurationMs:I

.field private final mValues:[I


# direct methods
.method constructor <init>(ILandroid/media/AudioGain;II[II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "gain"    # Landroid/media/AudioGain;
    .param p3, "mode"    # I
    .param p4, "channelMask"    # I
    .param p5, "values"    # [I
    .param p6, "rampDurationMs"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/media/AudioGainConfig;->mIndex:I

    .line 46
    iput-object p2, p0, Landroid/media/AudioGainConfig;->mGain:Landroid/media/AudioGain;

    .line 47
    iput p3, p0, Landroid/media/AudioGainConfig;->mMode:I

    .line 48
    iput p4, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    .line 49
    iput-object p5, p0, Landroid/media/AudioGainConfig;->mValues:[I

    .line 50
    iput p6, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    .line 51
    return-void
.end method


# virtual methods
.method public channelMask()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    return v0
.end method

.method index()I
    .registers 2

    .line 58
    iget v0, p0, Landroid/media/AudioGainConfig;->mIndex:I

    return v0
.end method

.method public mode()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/media/AudioGainConfig;->mMode:I

    return v0
.end method

.method public rampDurationMs()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    return v0
.end method

.method public values()[I
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/media/AudioGainConfig;->mValues:[I

    return-object v0
.end method
