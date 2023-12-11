.class public final synthetic Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/TwoFingerSwipeGestureDetector;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/TwoFingerSwipeGestureDetector;Landroid/view/MotionEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;->f$0:Landroid/view/TwoFingerSwipeGestureDetector;

    iput-object p2, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;->f$0:Landroid/view/TwoFingerSwipeGestureDetector;

    iget-object v1, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda1;->f$1:Landroid/view/MotionEvent;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Landroid/view/TwoFingerSwipeGestureDetector;->$r8$lambda$U5bn3j_AdFfr0-6UWURJxr_Rcms(Landroid/view/TwoFingerSwipeGestureDetector;Landroid/view/MotionEvent;Ljava/lang/Integer;)V

    return-void
.end method
