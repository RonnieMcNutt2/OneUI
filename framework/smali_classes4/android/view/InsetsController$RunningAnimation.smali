.class Landroid/view/InsetsController$RunningAnimation;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunningAnimation"
.end annotation


# instance fields
.field final runner:Landroid/view/InsetsAnimationControlRunner;

.field startDispatched:Z

.field final type:I


# direct methods
.method constructor <init>(Landroid/view/InsetsAnimationControlRunner;I)V
    .registers 3
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "type"    # I

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 680
    iput p2, p0, Landroid/view/InsetsController$RunningAnimation;->type:I

    .line 681
    return-void
.end method
