.class Lcom/samsung/android/widget/SemHorizontalFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemHorizontalFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemHorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemHorizontalFastScroller;

    .line 236
    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;->this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 239
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;->this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-static {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->-$$Nest$fgetmShowingPrimary(Lcom/samsung/android/widget/SemHorizontalFastScroller;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->-$$Nest$fputmShowingPrimary(Lcom/samsung/android/widget/SemHorizontalFastScroller;Z)V

    .line 240
    return-void
.end method
