.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;
.super Landroid/view/animation/Animation;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

.field final synthetic val$overflowButtonStartX:F

.field final synthetic val$overflowButtonTargetX:F

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;FFI)V
    .registers 5
    .param p1, "this$0"    # Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    .line 529
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    iput p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonStartX:F

    iput p3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonTargetX:F

    iput p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$startWidth:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 532
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonStartX:F

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonTargetX:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 535
    .local v0, "overflowButtonX":F
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$misInRTLMode(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_1f

    :cond_11
    iget-object v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$startWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 536
    .local v1, "deltaContainerWidth":F
    :goto_1f
    add-float v2, v0, v1

    .line 537
    .local v2, "actualOverflowButtonX":F
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowButton(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 538
    iget-object v3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$mupdateFloatingToolbarRootContentRect(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    .line 539
    return-void
.end method
