.class public final synthetic Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/IntConsumer;

.field public final synthetic f$1:Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntConsumer;Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntConsumer;

    iput-object p2, p0, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;->f$1:Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntConsumer;

    iget-object v1, p0, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;->f$1:Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    invoke-static {v0, v1}, Landroid/view/WindowManagerGlobal;->lambda$registerProposedRotationListener$1(Ljava/util/function/IntConsumer;Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;)V

    return-void
.end method
