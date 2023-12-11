.class public final synthetic Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

.field public final synthetic f$1:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iput-object p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->$r8$lambda$BF5si09-tJtKlzhAkr1j4uf7TPo(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
