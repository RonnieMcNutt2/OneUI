.class Landroid/app/ExitTransitionCoordinator$1;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->sharedElementExitBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$1;->this$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$1;->val$decorView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$1;->this$0:Landroid/app/ExitTransitionCoordinator;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$1;->val$decorView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$mstartSharedElementExit(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    .line 154
    return-void
.end method
