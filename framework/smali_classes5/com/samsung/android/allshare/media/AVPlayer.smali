.class public abstract Lcom/samsung/android/allshare/media/AVPlayer;
.super Lcom/samsung/android/allshare/Device;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;,
        Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    .line 183
    return-void
.end method


# virtual methods
.method public abstract CreateWHAParty()V
.end method

.method public abstract GetWHADeviceStatusInfo()V
.end method

.method public abstract JoinWHAParty(Ljava/lang/String;)V
.end method

.method public abstract LeaveWHAParty()V
.end method

.method public abstract SetWHAResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;)V
.end method

.method public abstract controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V
.end method

.method public abstract getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMediaInfo()V
.end method

.method public abstract getMute()V
.end method

.method public abstract getPlayPosition()V
.end method

.method public abstract getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
.end method

.method public abstract getPlaylistPlayer()Lcom/samsung/android/allshare/media/PlaylistPlayer;
.end method

.method public abstract getState()V
.end method

.method public abstract getVolume()V
.end method

.method public abstract isRedirectSupportable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSupport360View()Z
.end method

.method public abstract isSupportAspectRatio()Z
.end method

.method public abstract isSupportAudio()Z
.end method

.method public abstract isSupportCaptionControl()Z
.end method

.method public abstract isSupportDynamicBuffering()Z
.end method

.method public abstract isSupportRedirect()Z
.end method

.method public abstract isSupportVideo()Z
.end method

.method public abstract move360View(FF)V
.end method

.method public abstract pause()V
.end method

.method public abstract play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
.end method

.method public abstract prepare(Lcom/samsung/android/allshare/Item;)V
.end method

.method public abstract requestAspectRatioState()V
.end method

.method public abstract requestCaptionState()V
.end method

.method public abstract reset360View()V
.end method

.method public abstract resume()V
.end method

.method public abstract seek(J)V
.end method

.method public abstract setAspectRatio(Ljava/lang/String;)V
.end method

.method public abstract setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
.end method

.method public abstract setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V
.end method

.method public abstract setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
.end method

.method public abstract setVolume(I)V
.end method

.method public abstract setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
.end method

.method public abstract skipDynamicBuffering()V
.end method

.method public abstract stop()V
.end method

.method public abstract zoom360View(F)V
.end method
