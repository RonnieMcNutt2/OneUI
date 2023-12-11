.class public Landroid/media/MediaRouter2$RoutingController;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoutingController"
.end annotation


# static fields
.field private static final CONTROLLER_STATE_ACTIVE:I = 0x1

.field private static final CONTROLLER_STATE_RELEASED:I = 0x3

.field private static final CONTROLLER_STATE_RELEASING:I = 0x2

.field private static final CONTROLLER_STATE_UNKNOWN:I


# instance fields
.field private final mControllerLock:Ljava/lang/Object;

.field private mSessionInfo:Landroid/media/RoutingSessionInfo;

.field private mState:I

.field final synthetic this$0:Landroid/media/MediaRouter2;


# direct methods
.method public static synthetic $r8$lambda$m0saQkDne8AqHwGP8Br4owr-auc(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method constructor <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1463
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    .line 1464
    iput-object p2, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1465
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1466
    return-void
.end method

.method constructor <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p3, "state"    # I

    .line 1468
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    .line 1469
    iput-object p2, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1470
    iput p3, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1471
    return-void
.end method

.method private getRoutesWithIds(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1920
    .local p1, "routeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1921
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-virtual {v0}, Landroid/media/MediaRouter2;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 1922
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1923
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1921
    return-object v0

    .line 1926
    :cond_26
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1927
    :try_start_2d
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v2, v2, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 1928
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;-><init>()V

    .line 1929
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1930
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    .line 1927
    return-object v1

    .line 1931
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_2d .. :try_end_58} :catchall_56

    throw v1
.end method

.method static synthetic lambda$getRoutesWithIds$0(Ljava/util/List;Landroid/media/MediaRoute2Info;)Z
    .registers 3
    .param p0, "routeIds"    # Ljava/util/List;
    .param p1, "r"    # Landroid/media/MediaRoute2Info;

    .line 1922
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deselectRoute(Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1679
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1680
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1681
    const-string v0, "MR2"

    const-string v1, "deselectRoute: called on released controller. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return-void

    .line 1685
    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 1686
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1687
    const-string v1, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring deselecting a route that is not selected. route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    return-void

    .line 1691
    :cond_3a
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1692
    .local v1, "deselectableRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaRouter2;->checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 1693
    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring deselecting a non-deselectable route="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-void

    .line 1697
    :cond_61
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1698
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaRouter2Manager;->deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 1699
    return-void

    .line 1703
    :cond_75
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1704
    :try_start_7c
    iget-object v3, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v3, v3, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1705
    .local v3, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_9a

    .line 1706
    if-eqz v3, :cond_99

    .line 1708
    :try_start_83
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Landroid/media/IMediaRouterService;->deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_90} :catch_91

    .line 1711
    goto :goto_99

    .line 1709
    :catch_91
    move-exception v2

    .line 1710
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "MR2"

    const-string v5, "Unable to deselect route from session."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1713
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_99
    :goto_99
    return-void

    .line 1705
    .end local v3    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_9a
    move-exception v3

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v3
.end method

.method public getControlHints()Landroid/os/Bundle;
    .registers 3

    .line 1503
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getControlHints()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1505
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getDeselectableRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1538
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1539
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1540
    .local v1, "deselectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 1541
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1540
    .end local v1    # "deselectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 1478
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1480
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getOriginalId()Ljava/lang/String;
    .registers 3

    .line 1492
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1493
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1494
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 1549
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1550
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    monitor-exit v0

    return-object v1

    .line 1551
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getSelectableRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1526
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1527
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1528
    .local v1, "selectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 1529
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1528
    .end local v1    # "selectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getSelectedRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1514
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1515
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    .line 1516
    .local v1, "selectedRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 1517
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1516
    .end local v1    # "selectedRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getVolume()I
    .registers 3

    .line 1586
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1587
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1588
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getVolumeHandling()I
    .registers 3

    .line 1565
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1566
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1567
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getVolumeMax()I
    .registers 3

    .line 1572
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1573
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1574
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isReleased()Z
    .registers 4

    .line 1599
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1600
    :try_start_3
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 1601
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public release()V
    .registers 2

    .line 1796
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter2$RoutingController;->releaseInternal(Z)V

    .line 1797
    return-void
.end method

.method releaseInternal(Z)V
    .registers 7
    .param p1, "shouldReleaseSession"    # Z

    .line 1831
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1832
    :try_start_3
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    .line 1833
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1834
    const-string v1, "MR2"

    const-string v2, "releaseInternal: Called on released controller. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_15
    monitor-exit v0

    return-void

    .line 1838
    :cond_17
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    move v1, v3

    .line 1839
    .local v1, "shouldNotifyStop":Z
    iput v2, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1840
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_b4

    .line 1842
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1843
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 1844
    return-void

    .line 1847
    :cond_34
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1848
    :try_start_3b
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1850
    if-eqz p1, :cond_66

    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_b1

    if-eqz v0, :cond_66

    .line 1852
    :try_start_50
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v3, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v3, v3, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/media/IMediaRouterService;->releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_61} :catch_62
    .catchall {:try_start_50 .. :try_end_61} :catchall_b1

    .line 1855
    goto :goto_66

    .line 1853
    :catch_62
    move-exception v0

    .line 1854
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_63
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1858
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_66
    :goto_66
    if-eqz v1, :cond_7a

    .line 1859
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda0;-><init>()V

    iget-object v4, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    .line 1860
    invoke-static {v3, v4, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1859
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1866
    :cond_7a
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    .line 1867
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;
    :try_end_96
    .catchall {:try_start_63 .. :try_end_96} :catchall_b1

    if-eqz v0, :cond_af

    .line 1870
    :try_start_98
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v3, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v3, v3, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    invoke-interface {v0, v3}, Landroid/media/IMediaRouterService;->unregisterRouter2(Landroid/media/IMediaRouter2;)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a5} :catch_a6
    .catchall {:try_start_98 .. :try_end_a5} :catchall_b1

    .line 1873
    goto :goto_aa

    .line 1871
    :catch_a6
    move-exception v0

    .line 1872
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_a7
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1874
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_aa
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1876
    :cond_af
    monitor-exit v2

    .line 1877
    return-void

    .line 1876
    :catchall_b1
    move-exception v0

    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_a7 .. :try_end_b3} :catchall_b1

    throw v0

    .line 1840
    .end local v1    # "shouldNotifyStop":Z
    :catchall_b4
    move-exception v1

    :try_start_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v1
.end method

.method scheduleRelease()Z
    .registers 6

    .line 1806
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1807
    :try_start_3
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    .line 1808
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1810
    :cond_b
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1811
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3b

    .line 1813
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1816
    :try_start_16
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1819
    monitor-exit v1

    return v2

    .line 1821
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_38

    .line 1823
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaRouter2$RoutingController;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1825
    return v2

    .line 1821
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0

    .line 1811
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public selectRoute(Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1625
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1626
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1627
    const-string v0, "MR2"

    const-string v1, "selectRoute: Called on released controller. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    return-void

    .line 1631
    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 1632
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1633
    const-string v1, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring selecting a route that is already selected. route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    return-void

    .line 1637
    :cond_3a
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1638
    .local v1, "selectableRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaRouter2;->checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 1639
    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring selecting a non-selectable route="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    return-void

    .line 1643
    :cond_61
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1644
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaRouter2Manager;->selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 1645
    return-void

    .line 1649
    :cond_75
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1650
    :try_start_7c
    iget-object v3, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v3, v3, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1651
    .local v3, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_9a

    .line 1652
    if-eqz v3, :cond_99

    .line 1654
    :try_start_83
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Landroid/media/IMediaRouterService;->selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_90} :catch_91

    .line 1657
    goto :goto_99

    .line 1655
    :catch_91
    move-exception v2

    .line 1656
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "MR2"

    const-string v5, "Unable to select route for session."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1659
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_99
    :goto_99
    return-void

    .line 1651
    .end local v3    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_9a
    move-exception v3

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v3
.end method

.method setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/media/RoutingSessionInfo;

    .line 1914
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1915
    :try_start_3
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1916
    monitor-exit v0

    .line 1917
    return-void

    .line 1916
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setVolume(I)V
    .registers 6
    .param p1, "volume"    # I

    .line 1758
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getVolumeHandling()I

    move-result v0

    if-nez v0, :cond_e

    .line 1759
    const-string v0, "MR2"

    const-string v1, "setVolume: The routing session has fixed volume. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    return-void

    .line 1762
    :cond_e
    if-ltz p1, :cond_61

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getVolumeMax()I

    move-result v0

    if-le p1, v0, :cond_17

    goto :goto_61

    .line 1767
    :cond_17
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1768
    const-string v0, "MR2"

    const-string v1, "setVolume: Called on released controller. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    return-void

    .line 1772
    :cond_25
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1773
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter2Manager;->setSessionVolume(Landroid/media/RoutingSessionInfo;I)V

    .line 1774
    return-void

    .line 1778
    :cond_39
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1779
    :try_start_40
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v1, v1, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1780
    .local v1, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_5e

    .line 1781
    if-eqz v1, :cond_5d

    .line 1783
    :try_start_47
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroid/media/IMediaRouterService;->setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_54} :catch_55

    .line 1786
    goto :goto_5d

    .line 1784
    :catch_55
    move-exception v0

    .line 1785
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2"

    const-string v3, "setVolume: Failed to deliver request."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1788
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    return-void

    .line 1780
    .end local v1    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1

    .line 1763
    :cond_61
    :goto_61
    const-string v0, "MR2"

    const-string v1, "setVolume: The target volume is out of range. Ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1882
    nop

    .line 1883
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>()V

    .line 1884
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1885
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1886
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1887
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>()V

    .line 1888
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1889
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1890
    .local v1, "selectableRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1891
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>()V

    .line 1892
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1893
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1895
    .local v2, "deselectableRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    const-string v4, "RoutingController{ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1898
    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1899
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1900
    const-string v4, ", selectedRoutes={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1901
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1902
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1903
    const-string v5, ", selectableRoutes={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1904
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1905
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1906
    const-string v5, ", deselectableRoutes={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1907
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1908
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1909
    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1910
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method transferToRoute(Landroid/media/MediaRoute2Info;)V
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1724
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1725
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1726
    :try_start_8
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1727
    const-string v1, "MR2"

    const-string v2, "transferToRoute: Called on released controller. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    monitor-exit v0

    return-void

    .line 1731
    :cond_17
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1732
    const-string v1, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring transferring to a non-transferable route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    monitor-exit v0

    return-void

    .line 1735
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_6a

    .line 1738
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1739
    :try_start_49
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1740
    .local v0, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_67

    .line 1741
    if-eqz v0, :cond_66

    .line 1743
    :try_start_50
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2, p1}, Landroid/media/IMediaRouterService;->transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5d} :catch_5e

    .line 1746
    goto :goto_66

    .line 1744
    :catch_5e
    move-exception v1

    .line 1745
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2"

    const-string v3, "Unable to transfer to route for session."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1748
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_66
    :goto_66
    return-void

    .line 1740
    .end local v0    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0

    .line 1735
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1
.end method
