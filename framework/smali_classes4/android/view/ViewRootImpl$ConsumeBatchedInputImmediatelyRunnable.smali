.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsumeBatchedInputImmediatelyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 11345
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 11348
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 11349
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;->this$0:Landroid/view/ViewRootImpl;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)Z

    .line 11350
    return-void
.end method
