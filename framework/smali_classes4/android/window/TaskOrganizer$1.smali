.class Landroid/window/TaskOrganizer$1;
.super Landroid/window/ITaskOrganizer$Stub;
.source "TaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/window/TaskOrganizer;


# direct methods
.method public static synthetic $r8$lambda$2JHKaaOagq73z_eNGwNUJayE2KI(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$removeStartingWindow$1(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3HLQrinGcqfDCjvNvTOluowveMo(Landroid/window/TaskOrganizer$1;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/TaskOrganizer$1;->lambda$onImmersiveModeChanged$13(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$9LrsNjz7t9bauXpA1eBU3Y_Zdj8(Landroid/window/TaskOrganizer$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$copySplashScreenView$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DmApbYReUitTtmz_b06PuBlMDJc(Landroid/window/TaskOrganizer$1;Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/window/TaskOrganizer$1;->lambda$preloadSplashScreenAppIcon$10(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FmJPvZyGqAGeVe9o6dSQkNL3f3g(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onTaskInfoChanged$6(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HNTgtsSkM6kZqSm72JLfjlKU7P4(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onBackPressedOnTaskRoot$7(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1U4XE0jHytqwfqzkmnTaCrhmDg(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$addStartingWindow$0(Landroid/window/StartingWindowInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z3SZqVKLE-2zO9NE5htsmlBghFs(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/TaskOrganizer$1;->lambda$onTaskAppeared$4(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZyMb3VLUGqcxmkfPxysyD8XSK24(Landroid/window/TaskOrganizer$1;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/TaskOrganizer$1;->lambda$resetStashedFreeform$11(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bX7mFSIt78wXUT1mkevnDo2bTpw(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/TaskOrganizer$1;->lambda$onSplitLayoutChangeRequested$9(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnLAmEuLf_BQ_jFuhQbGGs5ghXo(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onTaskVanished$5(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hfc0IGpuKWhnSrIpQKWIk6QTyGE(Landroid/window/TaskOrganizer$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onAppSplashScreenViewRemoved$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m4t9-2dSja3w13wcAadkxYZTjO8(Landroid/window/TaskOrganizer$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onImeDrawnOnTask$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vg0xyZ-SgRDCwgupHwOJGYiO_dg(Landroid/window/TaskOrganizer$1;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/TaskOrganizer$1;->lambda$onKeepScreenOnChanged$12(IZ)V

    return-void
.end method

.method constructor <init>(Landroid/window/TaskOrganizer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/window/TaskOrganizer;

    .line 423
    iput-object p1, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskOrganizer$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$addStartingWindow$0(Landroid/window/StartingWindowInfo;)V
    .registers 3
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;

    .line 426
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;)V

    return-void
.end method

.method private synthetic lambda$copySplashScreenView$2(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 436
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->copySplashScreenView(I)V

    return-void
.end method

.method private synthetic lambda$onAppSplashScreenViewRemoved$3(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 441
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onAppSplashScreenViewRemoved(I)V

    return-void
.end method

.method private synthetic lambda$onBackPressedOnTaskRoot$7(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 461
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onImeDrawnOnTask$8(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 466
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onImeDrawnOnTask(I)V

    return-void
.end method

.method private synthetic lambda$onImmersiveModeChanged$13(IZ)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "immersive"    # Z

    .line 506
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onImmersiveModeChanged(IZ)V

    return-void
.end method

.method private synthetic lambda$onKeepScreenOnChanged$12(IZ)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "keepScreenOn"    # Z

    .line 498
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onKeepScreenOnChanged(IZ)V

    return-void
.end method

.method private synthetic lambda$onSplitLayoutChangeRequested$9(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "infoBundle"    # Landroid/os/Bundle;

    .line 474
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$4(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 446
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private synthetic lambda$onTaskInfoChanged$6(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 456
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onTaskVanished$5(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 451
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$preloadSplashScreenAppIcon$10(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 482
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/TaskOrganizer;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$removeStartingWindow$1(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 3
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 431
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method private synthetic lambda$resetStashedFreeform$11(IZ)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "anim"    # Z

    .line 490
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->resetStashedFreeform(IZ)V

    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/window/StartingWindowInfo;)V
    .registers 4
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;

    .line 426
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method public copySplashScreenView(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 436
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public onAppSplashScreenViewRemoved(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 441
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 461
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public onImeDrawnOnTask(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 466
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method public onImmersiveModeChanged(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "immersive"    # Z

    .line 505
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;-><init>(Landroid/window/TaskOrganizer$1;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method public onKeepScreenOnChanged(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "keepScreenOn"    # Z

    .line 497
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;-><init>(Landroid/window/TaskOrganizer$1;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 499
    return-void
.end method

.method public onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "infoBundle"    # Landroid/os/Bundle;

    .line 473
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 446
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 456
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 451
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda11;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 481
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskOrganizer$1;Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 4
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 431
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method public resetStashedFreeform(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "anim"    # Z

    .line 489
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda12;-><init>(Landroid/window/TaskOrganizer$1;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method
