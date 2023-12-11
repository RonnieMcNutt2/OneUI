.class public final Landroid/graphics/HardwareRenderer$FrameRenderRequest;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameRenderRequest"
.end annotation


# instance fields
.field private mFrameInfo:Landroid/graphics/FrameInfo;

.field private mWaitForPresent:Z

.field final synthetic this$0:Landroid/graphics/HardwareRenderer;


# direct methods
.method static bridge synthetic -$$Nest$mreset(Landroid/graphics/HardwareRenderer$FrameRenderRequest;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->reset()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/HardwareRenderer;)V
    .registers 3
    .param p1, "this$0"    # Landroid/graphics/HardwareRenderer;

    .line 369
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Landroid/graphics/FrameInfo;

    invoke-direct {v0}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/HardwareRenderer;Landroid/graphics/HardwareRenderer$FrameRenderRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;-><init>(Landroid/graphics/HardwareRenderer;)V

    return-void
.end method

.method static synthetic lambda$setFrameCommitCallback$0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Z)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "frameCommitCallback"    # Ljava/lang/Runnable;
    .param p2, "didProduceBuffer"    # Z

    .line 425
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reset()V
    .registers 6

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mWaitForPresent:Z

    .line 375
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$fgetmRenderRequest(Landroid/graphics/HardwareRenderer;)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    .line 376
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    .line 377
    return-void
.end method


# virtual methods
.method public setFrameCommitCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "frameCommitCallback"    # Ljava/lang/Runnable;

    .line 424
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$fgetmNativeProxy(Landroid/graphics/HardwareRenderer;)J

    move-result-wide v0

    new-instance v2, Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-static {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetFrameCommitCallback(JLandroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    .line 426
    return-object p0
.end method

.method public setFrameInfo(Landroid/graphics/FrameInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/graphics/FrameInfo;

    .line 381
    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    iget-object v1, v1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget-object v2, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    return-void
.end method

.method public setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 16
    .param p1, "vsyncTime"    # J

    .line 401
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    const-wide/16 v5, -0x1

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v11, -0x1

    move-wide v1, p1

    move-wide v3, p1

    move-wide v9, p1

    invoke-virtual/range {v0 .. v12}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V

    .line 403
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/FrameInfo;->addFlags(J)V

    .line 404
    return-object p0
.end method

.method public setWaitForPresent(Z)Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    .registers 2
    .param p1, "shouldWait"    # Z

    .line 445
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mWaitForPresent:Z

    .line 446
    return-object p0
.end method

.method public syncAndDraw()I
    .registers 3

    .line 459
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->syncAndDrawFrame(Landroid/graphics/FrameInfo;)I

    move-result v0

    .line 460
    .local v0, "syncResult":I
    iget-boolean v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->mWaitForPresent:Z

    if-eqz v1, :cond_15

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_15

    .line 461
    iget-object v1, p0, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->this$0:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v1}, Landroid/graphics/HardwareRenderer;->fence()V

    .line 463
    :cond_15
    return v0
.end method
