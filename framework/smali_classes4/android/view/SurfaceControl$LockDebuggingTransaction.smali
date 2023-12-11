.class public Landroid/view/SurfaceControl$LockDebuggingTransaction;
.super Landroid/view/SurfaceControl$Transaction;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockDebuggingTransaction"
.end annotation


# instance fields
.field mMonitor:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 4669
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4670
    iput-object p1, p0, Landroid/view/SurfaceControl$LockDebuggingTransaction;->mMonitor:Ljava/lang/Object;

    .line 4671
    return-void
.end method


# virtual methods
.method protected checkPreconditions(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 4675
    invoke-super {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4676
    iget-object v0, p0, Landroid/view/SurfaceControl$LockDebuggingTransaction;->mMonitor:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4680
    return-void

    .line 4677
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unlocked access to synchronized SurfaceControl.Transaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
