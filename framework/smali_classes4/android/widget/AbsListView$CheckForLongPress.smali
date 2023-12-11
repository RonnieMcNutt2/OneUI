.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# static fields
.field private static final INVALID_COORD:I = -0x1


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method static bridge synthetic -$$Nest$msetCoords(Landroid/widget/AbsListView$CheckForLongPress;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$CheckForLongPress;->setCoords(FF)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    .line 3659
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable-IA;)V

    .line 3661
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3662
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private setCoords(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3665
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3666
    iput p2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    .line 3667
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 3671
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3672
    .local v0, "motionPosition":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3673
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_82

    .line 3674
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3675
    .local v2, "longPressPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 3677
    .local v10, "longPressId":J
    const/4 v12, 0x0

    .line 3678
    .local v12, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_51

    .line 3680
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3, v13}, Landroid/widget/AbsListView;->-$$Nest$fputmIsLongPressTriggeredByKey(Landroid/widget/AbsListView;Z)V

    .line 3682
    iget v8, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v8, v3

    if-eqz v4, :cond_4b

    iget v9, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    cmpl-float v3, v9, v3

    if-eqz v3, :cond_4b

    .line 3683
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    move-object v4, v1

    move v5, v2

    move-wide v6, v10

    invoke-virtual/range {v3 .. v9}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v12

    goto :goto_51

    .line 3685
    :cond_4b
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1, v2, v10, v11}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v12

    .line 3689
    :cond_51
    :goto_51
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v12, :cond_67

    .line 3690
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v4}, Landroid/widget/AbsListView;->-$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V

    .line 3691
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iput v3, v5, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3692
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v13}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3693
    invoke-virtual {v1, v13}, Landroid/view/View;->setPressed(Z)V

    goto :goto_6c

    .line 3695
    :cond_67
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x2

    iput v6, v5, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3698
    :goto_6c
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-$$Nest$fgetmLongPressMultiSelectionEnabled(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 3699
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v13}, Landroid/widget/AbsListView;->-$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V

    .line 3700
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v4}, Landroid/widget/AbsListView;->-$$Nest$fputmIsLongPressMultiSelection(Landroid/widget/AbsListView;Z)V

    .line 3701
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iput v3, v4, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3704
    .end local v2    # "longPressPosition":I
    .end local v10    # "longPressId":J
    .end local v12    # "handled":Z
    :cond_82
    return-void
.end method
