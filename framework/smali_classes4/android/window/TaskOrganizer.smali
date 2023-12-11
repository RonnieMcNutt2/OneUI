.class public Landroid/window/TaskOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskOrganizer.java"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInterface:Landroid/window/ITaskOrganizer;

.field private final mTaskOrganizerController:Landroid/window/ITaskOrganizerController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/window/TaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "taskOrganizerController"    # Landroid/window/ITaskOrganizerController;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 61
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 423
    new-instance v0, Landroid/window/TaskOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskOrganizer$1;-><init>(Landroid/window/TaskOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    .line 62
    if-eqz p2, :cond_e

    move-object v0, p2

    goto :goto_13

    :cond_e
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    :goto_13
    iput-object v0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 63
    if-eqz p1, :cond_19

    .line 64
    move-object v0, p1

    goto :goto_1d

    :cond_19
    invoke-direct {p0}, Landroid/window/TaskOrganizer;->getController()Landroid/window/ITaskOrganizerController;

    move-result-object v0

    :goto_1d
    iput-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    .line 65
    return-void
.end method

.method private getController()Landroid/window/ITaskOrganizerController;
    .registers 3

    .line 514
    :try_start_0
    invoke-static {}, Landroid/window/TaskOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 515
    :catch_9
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addStartingWindow(Landroid/window/StartingWindowInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/window/StartingWindowInfo;

    .line 104
    return-void
.end method

.method public copySplashScreenView(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 118
    return-void
.end method

.method public createRootTask(IILandroid/os/IBinder;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/window/TaskOrganizer;->createRootTask(IILandroid/os/IBinder;Z)V

    .line 209
    return-void
.end method

.method public createRootTask(IILandroid/os/IBinder;Z)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;
    .param p4, "removeWithTaskOrganizer"    # Z

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController;->createRootTask(IILandroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 185
    nop

    .line 186
    return-void

    .line 183
    :catch_7
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createStageRootTask(IIILandroid/os/IBinder;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "stageType"    # I
    .param p4, "launchCookie"    # Landroid/os/IBinder;

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController;->createStageRootTask(IIILandroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 229
    nop

    .line 230
    return-void

    .line 227
    :catch_7
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .registers 4
    .param p1, "task"    # Landroid/window/WindowContainerToken;

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 239
    :catch_7
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .registers 5
    .param p1, "parent"    # Landroid/window/WindowContainerToken;
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 252
    :catch_7
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getFreeformTaskOpacity(I)F
    .registers 3
    .param p1, "taskId"    # I

    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->getFreeformTaskOpacity(I)F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 368
    :catch_7
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getImeTarget(I)Landroid/window/WindowContainerToken;
    .registers 4
    .param p1, "display"    # I

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 276
    :catch_7
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRootTasks(I[I)Ljava/util/List;
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 265
    :catch_7
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isKeepScreenOn(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .line 406
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->isKeepScreenOn(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 407
    :catch_7
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isPinStateChangeable(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .line 395
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->isPinStateChangeable(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 396
    :catch_7
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 399
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public onAppSplashScreenViewRemoved(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 128
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 146
    return-void
.end method

.method public onImeDrawnOnTask(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 156
    return-void
.end method

.method public onImmersiveModeChanged(IZ)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "immersive"    # Z

    .line 165
    return-void
.end method

.method public onKeepScreenOnChanged(IZ)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "keepScreenOn"    # Z

    .line 160
    return-void
.end method

.method public onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "infoBundle"    # Landroid/os/Bundle;

    .line 151
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 137
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 143
    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 140
    return-void
.end method

.method public preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 190
    return-void
.end method

.method public registerOrganizer()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object v1, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizerController;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 79
    :catch_d
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 2
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 112
    return-void
.end method

.method public resetStashedFreeform(IZ)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "anim"    # Z

    .line 195
    return-void
.end method

.method public restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .registers 4
    .param p1, "task"    # Landroid/window/WindowContainerToken;

    .line 303
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 306
    nop

    .line 307
    return-void

    .line 304
    :catch_7
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setFreeformTaskOpacity(IF)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "alpha"    # F

    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->setFreeformTaskOpacity(IF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 379
    goto :goto_a

    .line 377
    :catch_6
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 380
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V
    .registers 5
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "overlap"    # Z

    .line 357
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 360
    nop

    .line 361
    return-void

    .line 358
    :catch_7
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .registers 5
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "interceptBackPressed"    # Z

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 292
    nop

    .line 293
    return-void

    .line 290
    :catch_7
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOrientationRequestPolicy(Z[I[I)V
    .registers 6
    .param p1, "isIgnoreOrientationRequestDisabled"    # Z
    .param p2, "fromOrientations"    # [I
    .param p3, "toOrientations"    # [I

    .line 341
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2, p3}, Landroid/window/ITaskOrganizerController;->setOrientationRequestPolicy(Z[I[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 345
    nop

    .line 346
    return-void

    .line 343
    :catch_7
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public togglePinTaskState(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .line 386
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->togglePinTaskState(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 387
    :catch_7
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterOrganizer()V
    .registers 3

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object v1, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizerController;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catch_9
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V
    .registers 5
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "state"    # I

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 320
    nop

    .line 321
    return-void

    .line 318
    :catch_7
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
