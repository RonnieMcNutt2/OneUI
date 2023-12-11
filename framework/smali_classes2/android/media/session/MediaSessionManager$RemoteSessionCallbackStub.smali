.class final Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;
.super Landroid/media/IRemoteSessionCallback$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteSessionCallbackStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaSessionManager;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaSessionManager;)V
    .registers 2

    .line 1417
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-direct {p0}, Landroid/media/IRemoteSessionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;-><init>(Landroid/media/session/MediaSessionManager;)V

    return-void
.end method

.method static synthetic lambda$onSessionChanged$1(Ljava/util/Map$Entry;Landroid/media/session/MediaSession$Token;)V
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1437
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager$RemoteSessionCallback;

    invoke-interface {v0, p1}, Landroid/media/session/MediaSessionManager$RemoteSessionCallback;->onDefaultRemoteSessionChanged(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method static synthetic lambda$onVolumeChanged$0(Ljava/util/Map$Entry;Landroid/media/session/MediaSession$Token;I)V
    .registers 4
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;
    .param p2, "flags"    # I

    .line 1426
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager$RemoteSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/session/MediaSessionManager$RemoteSessionCallback;->onVolumeChanged(Landroid/media/session/MediaSession$Token;I)V

    return-void
.end method


# virtual methods
.method public onSessionChanged(Landroid/media/session/MediaSession$Token;)V
    .registers 7
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1432
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1433
    .local v0, "callbacks":Ljava/util/Map;, "Ljava/util/Map<Landroid/media/session/MediaSessionManager$RemoteSessionCallback;Ljava/util/concurrent/Executor;>;"
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager;->-$$Nest$fgetmLock(Landroid/media/session/MediaSessionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1434
    :try_start_c
    iget-object v2, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-static {v2}, Landroid/media/session/MediaSessionManager;->-$$Nest$fgetmRemoteSessionCallbacks(Landroid/media/session/MediaSessionManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1435
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_3a

    .line 1436
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1437
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSessionManager$RemoteSessionCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1}, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map$Entry;Landroid/media/session/MediaSession$Token;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1438
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSessionManager$RemoteSessionCallback;Ljava/util/concurrent/Executor;>;"
    goto :goto_1e

    .line 1439
    :cond_39
    return-void

    .line 1435
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public onVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .registers 8
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;
    .param p2, "flags"    # I

    .line 1421
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1422
    .local v0, "callbacks":Ljava/util/Map;, "Ljava/util/Map<Landroid/media/session/MediaSessionManager$RemoteSessionCallback;Ljava/util/concurrent/Executor;>;"
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager;->-$$Nest$fgetmLock(Landroid/media/session/MediaSessionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1423
    :try_start_c
    iget-object v2, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-static {v2}, Landroid/media/session/MediaSessionManager;->-$$Nest$fgetmRemoteSessionCallbacks(Landroid/media/session/MediaSessionManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1424
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_3a

    .line 1425
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1426
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSessionManager$RemoteSessionCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map$Entry;Landroid/media/session/MediaSession$Token;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1427
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSessionManager$RemoteSessionCallback;Ljava/util/concurrent/Executor;>;"
    goto :goto_1e

    .line 1428
    :cond_39
    return-void

    .line 1424
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method
