.class public abstract Lcom/samsung/android/allshare/media/PlaylistPlayer;
.super Ljava/lang/Object;
.source "PlaylistPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;,
        Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;,
        Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public abstract getPlayPosition()V
.end method

.method public abstract isSeekable()Z
.end method

.method public abstract isSupportAudio()Z
.end method

.method public abstract isSupportImage()Z
.end method

.method public abstract isSupportNavigateInPause()Z
.end method

.method public abstract isSupportSetAutoFlipMode()Z
.end method

.method public abstract isSupportVideo()Z
.end method

.method public abstract next()V
.end method

.method public abstract pause()V
.end method

.method public abstract play(Lcom/samsung/android/allshare/media/Playlist;I)V
.end method

.method public abstract previous()V
.end method

.method public abstract resume()V
.end method

.method public abstract seek(I)V
.end method

.method public abstract setAutoFlipMode(Z)V
.end method

.method public abstract setPlaybackResponseListener(Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;)V
.end method

.method public abstract setPlaylistPlayerEventListener(Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;)V
.end method

.method public abstract setQuickNavigate(Z)V
.end method

.method public abstract stop()V
.end method
