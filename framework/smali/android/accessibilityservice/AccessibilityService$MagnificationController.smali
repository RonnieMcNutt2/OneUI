.class public final Landroid/accessibilityservice/AccessibilityService$MagnificationController;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MagnificationController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    }
.end annotation


# instance fields
.field private final mDisplayId:I

.field private mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$xXhi1uhctVdiTCsI3tjPW3v655E(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->lambda$dispatchMagnificationChanged$0(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .registers 4
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1358
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1359
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    .line 1360
    iput p3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    .line 1361
    return-void
.end method

.method private synthetic lambda$dispatchMagnificationChanged$0(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1477
    invoke-interface {p1, p0, p2, p3}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1479
    return-void
.end method

.method private setMagnificationCallbackEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1440
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1441
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1443
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1e

    .line 1445
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationCallbackEnabled(IZ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 1448
    goto :goto_1e

    .line 1446
    :catch_17
    move-exception v1

    .line 1447
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1450
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V

    .line 1381
    return-void
.end method

.method public addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1395
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1396
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    .line 1397
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    .line 1400
    :cond_e
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 1401
    .local v1, "shouldEnableCallback":Z
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    if-eqz v1, :cond_1f

    .line 1406
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1408
    .end local v1    # "shouldEnableCallback":Z
    :cond_1f
    monitor-exit v0

    .line 1409
    return-void

    .line 1408
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method dispatchMagnificationChanged(Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 9
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1459
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3b

    .line 1469
    :cond_e
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1470
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_48

    .line 1472
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_1b
    if-ge v0, v2, :cond_3a

    .line 1473
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1474
    .local v3, "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 1475
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_34

    .line 1476
    new-instance v5, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, p1, p2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 1482
    :cond_34
    invoke-interface {v3, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1472
    .end local v3    # "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1485
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_3a
    return-void

    .line 1461
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    :cond_3b
    :goto_3b
    :try_start_3b
    const-string v1, "AccessibilityService"

    const-string v2, "Received magnification changed callback with no listeners registered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1464
    monitor-exit v0

    return-void

    .line 1470
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public getCenterX()F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1569
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1570
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1572
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1574
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterX(I)F

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1575
    :catch_18
    move-exception v1

    .line 1576
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain center X"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1577
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1580
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public getCenterY()F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1606
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1607
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1609
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1611
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterY(I)F

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1612
    :catch_18
    move-exception v1

    .line 1613
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain center Y"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1617
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentMagnificationRegion()Landroid/graphics/Region;
    .registers 5

    .line 1687
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1688
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1690
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1692
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getCurrentMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return-object v1

    .line 1693
    :catch_18
    move-exception v1

    .line 1694
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain the current magnified region"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1695
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1698
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    return-object v1
.end method

.method public getMagnificationConfig()Landroid/accessibilityservice/MagnificationConfig;
    .registers 5

    .line 1499
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1500
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1502
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1504
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return-object v1

    .line 1505
    :catch_18
    move-exception v1

    .line 1506
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain magnification config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1507
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1510
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMagnificationRegion()Landroid/graphics/Region;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1648
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1649
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1651
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1653
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return-object v1

    .line 1654
    :catch_18
    move-exception v1

    .line 1655
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain magnified region"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1656
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1659
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    return-object v1
.end method

.method public getScale()F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1532
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1533
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1535
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1537
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationScale(I)F

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1538
    :catch_18
    move-exception v1

    .line 1539
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain scale"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1543
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method onServiceConnectedLocked()V
    .registers 2

    .line 1367
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1368
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1370
    :cond_e
    return-void
.end method

.method public removeListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)Z
    .registers 7
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1418
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1419
    return v1

    .line 1422
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_9
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 1424
    .local v2, "keyIndex":I
    if-ltz v2, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v1

    .line 1425
    .local v3, "hasKey":Z
    :goto_14
    if-eqz v3, :cond_1b

    .line 1426
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1429
    :cond_1b
    if-eqz v3, :cond_28

    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1432
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1435
    :cond_28
    monitor-exit v0

    return v3

    .line 1436
    .end local v2    # "keyIndex":I
    .end local v3    # "hasKey":Z
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public reset(Z)Z
    .registers 6
    .param p1, "animate"    # Z

    .line 1721
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1722
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1724
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1726
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetMagnification(IZ)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1727
    :catch_18
    move-exception v1

    .line 1728
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to reset"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1732
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public resetCurrentMagnification(Z)Z
    .registers 6
    .param p1, "animate"    # Z

    .line 1751
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1752
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1754
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1756
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetCurrentMagnification(IZ)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1757
    :catch_18
    move-exception v1

    .line 1758
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to reset"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1759
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1762
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public setCenter(FFZ)Z
    .registers 8
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1859
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1860
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1862
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_39

    .line 1864
    :try_start_11
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 1865
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    .line 1866
    invoke-virtual {v1, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    .line 1867
    .local v1, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v2, v1, p3}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2d} :catch_2e

    return v2

    .line 1868
    .end local v1    # "config":Landroid/accessibilityservice/MagnificationConfig;
    :catch_2e
    move-exception v1

    .line 1869
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set center"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1870
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1873
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_39
    const/4 v1, 0x0

    return v1
.end method

.method public setMagnificationConfig(Landroid/accessibilityservice/MagnificationConfig;Z)Z
    .registers 7
    .param p1, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p2, "animate"    # Z

    .line 1782
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1783
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1785
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1787
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1788
    :catch_18
    move-exception v1

    .line 1789
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set magnification config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1790
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1793
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public setScale(FZ)Z
    .registers 7
    .param p1, "scale"    # F
    .param p2, "animate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1817
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1818
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1820
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_35

    .line 1822
    :try_start_11
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 1823
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    .line 1824
    invoke-virtual {v1, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    .line 1825
    .local v1, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v2, v1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_29} :catch_2a

    return v2

    .line 1826
    .end local v1    # "config":Landroid/accessibilityservice/MagnificationConfig;
    :catch_2a
    move-exception v1

    .line 1827
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set scale"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1828
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1831
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_35
    const/4 v1, 0x0

    return v1
.end method
