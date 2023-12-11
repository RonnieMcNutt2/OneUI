.class public interface abstract Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;
.super Ljava/lang/Object;
.source "PlaylistPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/PlaylistPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlaylistPlayerPlaybackResponseListener"
.end annotation


# virtual methods
.method public abstract onGetPlayPositionResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onNextResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onPreviousResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onSeekResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method
