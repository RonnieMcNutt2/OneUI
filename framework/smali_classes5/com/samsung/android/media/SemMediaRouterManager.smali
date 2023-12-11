.class public Lcom/samsung/android/media/SemMediaRouterManager;
.super Ljava/lang/Object;
.source "SemMediaRouterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;,
        Lcom/samsung/android/media/SemMediaRouterManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMRManager"

.field private static sInstance:Lcom/samsung/android/media/SemMediaRouterManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mManager:Landroid/media/MediaRouter2Manager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemMediaRouterManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/media/SemMediaRouterManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/samsung/android/media/SemMediaRouterManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_8
    sget-object v1, Lcom/samsung/android/media/SemMediaRouterManager;->sInstance:Lcom/samsung/android/media/SemMediaRouterManager;

    if-nez v1, :cond_13

    .line 33
    new-instance v1, Lcom/samsung/android/media/SemMediaRouterManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/SemMediaRouterManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/media/SemMediaRouterManager;->sInstance:Lcom/samsung/android/media/SemMediaRouterManager;

    .line 35
    :cond_13
    sget-object v1, Lcom/samsung/android/media/SemMediaRouterManager;->sInstance:Lcom/samsung/android/media/SemMediaRouterManager;

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method


# virtual methods
.method public deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 215
    return-void
.end method

.method public getAllRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDiscoveryPreference(Ljava/lang/String;)Landroid/media/RouteDiscoveryPreference;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getDiscoveryPreference(Ljava/lang/String;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    return-object v0
.end method

.method public getMediaControllerForRoutingSession(Landroid/media/RoutingSessionInfo;)Landroid/media/session/MediaController;
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 122
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getMediaControllerForRoutingSession(Landroid/media/RoutingSessionInfo;)Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRouteAddress(Landroid/media/MediaRoute2Info;)Ljava/lang/String;
    .registers 3
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 223
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRouteType(Landroid/media/MediaRoute2Info;)I
    .registers 3
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 227
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    return v0
.end method

.method public getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;
    .registers 3
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 157
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRoutingSessions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    new-instance v1, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;-><init>(Lcom/samsung/android/media/SemMediaRouterManager;Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaRouter2Manager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    .line 46
    return-void
.end method

.method public releaseSession(Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 219
    return-void
.end method

.method public selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 209
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 210
    return-void
.end method

.method public selectRoute(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->transfer(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 177
    return-void
.end method

.method public setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 4
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "volume"    # I

    .line 185
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    .line 186
    return-void
.end method

.method public setSessionVolume(Landroid/media/RoutingSessionInfo;I)V
    .registers 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "volume"    # I

    .line 189
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->setSessionVolume(Landroid/media/RoutingSessionInfo;I)V

    .line 190
    return-void
.end method

.method public startScan()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->registerScanRequest()V

    .line 113
    return-void
.end method

.method public stopScan()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->unregisterScanRequest()V

    .line 117
    return-void
.end method

.method public transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 182
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    new-instance v1, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;-><init>(Lcom/samsung/android/media/SemMediaRouterManager;Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2Manager;->unregisterCallback(Landroid/media/MediaRouter2Manager$Callback;)V

    .line 50
    return-void
.end method
