.class public abstract Landroid/media/session/MediaController$Callback;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .line 626
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 618
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 2
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 589
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 2
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 580
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 600
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 609
    return-void
.end method

.method public onSessionDestroyed()V
    .registers 1

    .line 561
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 572
    return-void
.end method
