.class final Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;
.super Landroid/view/ISurfaceControlViewHost$Stub;
.source "SurfaceControlViewHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ISurfaceControlViewHostImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static synthetic $r8$lambda$8Bu0Mjl1WnWbjGXpkd9OaewGqrM(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$onDispatchDetachedFromWindow$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$LMCB5PBCOSj1jTN9g06U2FGm2Dc(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$getSurfaceSyncGroup$3(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_gAY5wgTGuz_kXpxF7e0cxfmXE8(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e4gjJg1uiAt5NDuC7j6GqZ_RHjU(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->lambda$onInsetsChanged$2(Landroid/graphics/Rect;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceControlViewHost;)V
    .registers 2

    .line 67
    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-direct {p0}, Landroid/view/ISurfaceControlViewHost$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;)V

    return-void
.end method

.method private synthetic lambda$getSurfaceSyncGroup$3(Ljava/util/concurrent/CompletableFuture;)V
    .registers 3
    .param p1, "surfaceSyncGroup"    # Ljava/util/concurrent/CompletableFuture;

    .line 113
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;

    move-result-object v0

    iget-object v0, v0, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 74
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 75
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 77
    :cond_11
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 78
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->forceWmRelayout()V

    .line 80
    :cond_22
    return-void
.end method

.method private synthetic lambda$onDispatchDetachedFromWindow$1()V
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 90
    return-void
.end method

.method private synthetic lambda$onInsetsChanged$2(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 97
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setOverrideInsetsFrame(Landroid/graphics/Rect;)V

    .line 98
    return-void
.end method


# virtual methods
.method public getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;
    .registers 5

    .line 105
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 109
    .local v0, "surfaceSyncGroup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/window/ISurfaceSyncGroup;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v2}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_20

    .line 110
    iget-object v1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v1}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;

    move-result-object v1

    iget-object v1, v1, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    return-object v1

    .line 112
    :cond_20
    iget-object v1, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v1}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v2, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 117
    :try_start_30
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ISurfaceSyncGroup;
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_3a} :catch_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_30 .. :try_end_3a} :catch_3b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_30 .. :try_end_3a} :catch_3b

    return-object v1

    .line 118
    :catch_3b
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SurfaceControlViewHost"

    const-string v3, "Failed to get SurfaceSyncGroup for SCVH"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 70
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_9

    .line 71
    return-void

    .line 73
    :cond_9
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public onDispatchDetachedFromWindow()V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_9

    .line 86
    return-void

    .line 88
    :cond_9
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 95
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 96
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_18
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;->this$0:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/view/SurfaceControlViewHost;->-$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowlessWindowManager;->setInsetsState(Landroid/view/InsetsState;)V

    .line 101
    return-void
.end method
