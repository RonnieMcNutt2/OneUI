.class Landroid/app/EnterTransitionCoordinator$4;
.super Landroid/transition/TransitionListenerAdapter;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;

    .line 536
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 544
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 545
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 546
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 539
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$msharedElementTransitionStarted(Landroid/app/EnterTransitionCoordinator;)V

    .line 540
    return-void
.end method
