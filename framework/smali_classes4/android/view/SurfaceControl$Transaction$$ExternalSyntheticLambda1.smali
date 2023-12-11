.class public final synthetic Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$TransactionCommittedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl$TransactionCommittedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl$TransactionCommittedListener;

    invoke-interface {v0}, Landroid/view/SurfaceControl$TransactionCommittedListener;->onTransactionCommitted()V

    return-void
.end method
