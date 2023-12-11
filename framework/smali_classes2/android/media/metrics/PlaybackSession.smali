.class public final Landroid/media/metrics/PlaybackSession;
.super Ljava/lang/Object;
.source "PlaybackSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private mClosed:Z

.field private final mId:Ljava/lang/String;

.field private final mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private final mManager:Landroid/media/metrics/MediaMetricsManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/media/metrics/MediaMetricsManager;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/metrics/PlaybackSession;->mClosed:Z

    .line 41
    iput-object p1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    .line 43
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 44
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 45
    new-instance v0, Landroid/media/metrics/LogSessionId;

    invoke-direct {v0, p1}, Landroid/media/metrics/LogSessionId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/metrics/PlaybackSession;->mClosed:Z

    .line 103
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaMetricsManager;->releaseSessionId(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 90
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 91
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/media/metrics/PlaybackSession;

    .line 92
    .local v0, "that":Landroid/media/metrics/PlaybackSession;
    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 90
    .end local v0    # "that":Landroid/media/metrics/PlaybackSession;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/metrics/NetworkEvent;

    .line 66
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;)V

    .line 67
    return-void
.end method

.method public reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/metrics/PlaybackErrorEvent;

    .line 59
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 60
    return-void
.end method

.method public reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V
    .registers 4
    .param p1, "metrics"    # Landroid/media/metrics/PlaybackMetrics;

    .line 52
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;)V

    .line 53
    return-void
.end method

.method public reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/metrics/PlaybackStateEvent;

    .line 73
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 74
    return-void
.end method

.method public reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/metrics/TrackChangeEvent;

    .line 80
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;)V

    .line 81
    return-void
.end method
