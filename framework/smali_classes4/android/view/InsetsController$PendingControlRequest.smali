.class Landroid/view/InsetsController$PendingControlRequest;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingControlRequest"
.end annotation


# instance fields
.field final animationType:I

.field final cancellationSignal:Landroid/os/CancellationSignal;

.field final durationMs:J

.field final interpolator:Landroid/view/animation/Interpolator;

.field final layoutInsetsDuringAnimation:I

.field final listener:Landroid/view/WindowInsetsAnimationControlListener;

.field types:I

.field final useInsetsAnimationThread:Z


# direct methods
.method constructor <init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V
    .registers 10
    .param p1, "types"    # I
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "durationMs"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animationType"    # I
    .param p7, "layoutInsetsDuringAnimation"    # I
    .param p8, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p9, "useInsetsAnimationThread"    # Z

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput p1, p0, Landroid/view/InsetsController$PendingControlRequest;->types:I

    .line 704
    iput-object p2, p0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 705
    iput-wide p3, p0, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    .line 706
    iput-object p5, p0, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    .line 707
    iput p6, p0, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    .line 708
    iput p7, p0, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    .line 709
    iput-object p8, p0, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 710
    iput-boolean p9, p0, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    .line 711
    return-void
.end method
