.class Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamEventCallback"
.end annotation


# instance fields
.field public mAJavaAudioTrackPtr:J

.field public mNativeCallbackPtr:J

.field public mUserDataPtr:J


# direct methods
.method constructor <init>(JJJ)V
    .registers 7
    .param p1, "jAudioTrackPtr"    # J
    .param p3, "nativeCallbackPtr"    # J
    .param p5, "userDataPtr"    # J

    .line 3986
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    .line 3987
    iput-wide p1, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mAJavaAudioTrackPtr:J

    .line 3988
    iput-wide p3, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mNativeCallbackPtr:J

    .line 3989
    iput-wide p5, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mUserDataPtr:J

    .line 3990
    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .registers 10
    .param p1, "track"    # Landroid/media/AudioTrack;
    .param p2, "size"    # I

    .line 4004
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mAJavaAudioTrackPtr:J

    iget-wide v2, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v4, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mUserDataPtr:J

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$smnative_stream_event_onStreamDataRequest(JJJI)V

    .line 4006
    return-void
.end method

.method public onPresentationEnded(Landroid/media/AudioTrack;)V
    .registers 6
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3999
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v2, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mUserDataPtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$smnative_stream_event_onStreamPresentationEnd(JJ)V

    .line 4000
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .registers 6
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3994
    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v2, p0, Lcom/samsung/android/media/SemMediaPlayer$StreamEventCallback;->mUserDataPtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$smnative_stream_event_onTearDown(JJ)V

    .line 3995
    return-void
.end method
