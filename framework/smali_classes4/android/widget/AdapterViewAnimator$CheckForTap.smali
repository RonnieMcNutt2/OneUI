.class final Landroid/widget/AdapterViewAnimator$CheckForTap;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/AdapterViewAnimator;

    .line 634
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 636
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-static {v0}, Landroid/widget/AdapterViewAnimator;->-$$Nest$fgetmTouchMode(Landroid/widget/AdapterViewAnimator;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 637
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 638
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 640
    .end local v0    # "v":Landroid/view/View;
    :cond_14
    return-void
.end method
