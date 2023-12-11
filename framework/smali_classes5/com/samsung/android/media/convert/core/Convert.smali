.class public abstract Lcom/samsung/android/media/convert/core/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/convert/core/Convert$ContentType;,
        Lcom/samsung/android/media/convert/core/Convert$BitRate;,
        Lcom/samsung/android/media/convert/core/Convert$HDRType;,
        Lcom/samsung/android/media/convert/core/Convert$CodecType;,
        Lcom/samsung/android/media/convert/core/Convert$CodecsMime;,
        Lcom/samsung/android/media/convert/core/Convert$EncodeResolution;,
        Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;
    }
.end annotation


# static fields
.field private static final ONE_BILLION:J = 0x3b9aca00L

.field protected static final ORIENTATION_0:I = 0x0

.field protected static final ORIENTATION_180:I = 0xb4

.field protected static final ORIENTATION_270:I = 0x10e

.field protected static final ORIENTATION_90:I = 0x5a

.field private static final VERSION:Ljava/lang/String; = "2.02"


# instance fields
.field protected mAudioTrackIndex:I

.field protected mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

.field protected volatile mConverting:Z

.field protected volatile mError:Z

.field protected mInputAudioDecoder:Landroid/media/MediaCodec;

.field protected mInputVideoDecoder:Landroid/media/MediaCodec;

.field protected mMuxer:Landroid/media/MediaMuxer;

.field protected mMuxerStarted:Z

.field protected mOutputAudioAACProfile:I

.field protected mOutputAudioBitRate:I

.field protected mOutputAudioChannelCount:I

.field protected mOutputAudioEncoder:Landroid/media/MediaCodec;

.field protected mOutputAudioMimeType:Ljava/lang/String;

.field protected mOutputAudioSampleRateHZ:I

.field protected mOutputBitdepth:I

.field protected mOutputFilePath:Ljava/lang/String;

.field protected mOutputFormat:I

.field protected mOutputHeight:I

.field protected mOutputMaxSizeKB:J

.field protected mOutputVideoBitRate:I

.field protected mOutputVideoEncoder:Landroid/media/MediaCodec;

.field protected mOutputVideoFrameRate:I

.field protected mOutputVideoIFrameInterval:I

.field protected mOutputVideoMimeType:Ljava/lang/String;

.field protected mOutputVideoProfile:I

.field protected mOutputWidth:I

.field protected mSizeFraction:F

.field protected mSourceFrameRate:I

.field protected mThread:Ljava/lang/Thread;

.field protected volatile mUserStop:Z

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputFormat:I

    .line 40
    const-string/jumbo v1, "video/avc"

    iput-object v1, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputVideoMimeType:Ljava/lang/String;

    .line 42
    const/16 v1, 0x1e

    iput v1, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputVideoFrameRate:I

    .line 43
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputVideoIFrameInterval:I

    .line 45
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputVideoProfile:I

    .line 46
    const/16 v3, 0x8

    iput v3, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputBitdepth:I

    .line 49
    const-string v3, "audio/mp4a-latm"

    iput-object v3, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputAudioMimeType:Ljava/lang/String;

    .line 50
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputAudioChannelCount:I

    .line 51
    const v4, 0x1f400

    iput v4, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputAudioBitRate:I

    .line 52
    iput v3, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputAudioAACProfile:I

    .line 53
    const v3, 0xac44

    iput v3, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputAudioSampleRateHZ:I

    .line 65
    iput v2, p0, Lcom/samsung/android/media/convert/core/Convert;->mVideoTrackIndex:I

    .line 66
    iput v2, p0, Lcom/samsung/android/media/convert/core/Convert;->mAudioTrackIndex:I

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/Convert;->mUserStop:Z

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/Convert;->mError:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/Convert;->mConverting:Z

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/media/convert/core/Convert;->mSizeFraction:F

    .line 74
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputMaxSizeKB:J

    .line 75
    iput v1, p0, Lcom/samsung/android/media/convert/core/Convert;->mSourceFrameRate:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/convert/core/Convert;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method private printVersionInfo()V
    .registers 3

    .line 291
    const-string v0, "SemVideoConverter"

    const-string v1, "Transcode Framework v.2.02"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method


# virtual methods
.method protected computePresentationTimeNsec(I)J
    .registers 6
    .param p1, "frameIndex"    # I

    .line 154
    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/media/convert/core/Convert;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public convert()Z
    .registers 3

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/media/convert/core/Convert;->printVersionInfo()V

    .line 93
    const-string/jumbo v0, "starting to convert"

    const-string v1, "SemVideoConverter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/media/convert/core/Convert;->prepare()Z

    move-result v0

    if-nez v0, :cond_18

    .line 97
    const-string v0, "convert preparation done."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_18
    new-instance v0, Lcom/samsung/android/media/convert/core/Convert$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/convert/core/Convert$1;-><init>(Lcom/samsung/android/media/convert/core/Convert;)V

    iput-object v0, p0, Lcom/samsung/android/media/convert/core/Convert;->mThread:Ljava/lang/Thread;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract prepare()Z
.end method

.method protected abstract release()V
.end method

.method public setProgressUpdateListener(Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;)V
    .registers 2
    .param p1, "updateListner"    # Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    .line 147
    iput-object p1, p0, Lcom/samsung/android/media/convert/core/Convert;->mConvertEventListener:Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;

    .line 148
    return-void
.end method

.method protected abstract startConverting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()Z
.end method
