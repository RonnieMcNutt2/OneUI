.class Landroid/view/ViewRootImpl$6;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbackForPendingTransactions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;

.field final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic $r8$lambda$9ThyGB6fC3mub7oMSjoAoWLhwMM(Landroid/view/ViewRootImpl$6;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$6;->lambda$onFrameDraw$0(JZ)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5536
    iput-object p1, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFrameDraw$0(JZ)V
    .registers 5
    .param p1, "frame"    # J
    .param p3, "didProduceBuffer"    # Z

    .line 5547
    if-nez p3, :cond_b

    .line 5548
    iget-object v0, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->applyPendingTransactions(J)V

    .line 5550
    :cond_b
    return-void
.end method


# virtual methods
.method public onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 6
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 5539
    iget-object v0, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 5540
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_16

    .line 5542
    iget-object v0, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/BLASTBufferQueue;->applyPendingTransactions(J)V

    .line 5543
    const/4 v0, 0x0

    return-object v0

    .line 5546
    :cond_16
    new-instance v0, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Landroid/view/ViewRootImpl$6$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$6;J)V

    return-object v0
.end method

.method public onFrameDraw(J)V
    .registers 3
    .param p1, "frame"    # J

    .line 5556
    return-void
.end method
