.class Landroid/widget/AbsListView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    .line 3620
    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 3627
    iget-object v0, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmForcedClick(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3629
    :cond_f
    iget-object v0, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3630
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3631
    .local v1, "motionPosition":I
    if-eqz v0, :cond_94

    iget-object v2, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v2, :cond_94

    const/4 v2, -0x1

    if-eq v1, v2, :cond_94

    .line 3633
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_94

    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 3634
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 3635
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v4, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3638
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_94

    .line 3639
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v4, v3, v1, v5, v6}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3641
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/AbsListView;)Z

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_94

    :cond_57
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_94

    .line 3642
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 3643
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4, v1, v2}, Landroid/widget/AbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/AbsListView;II)V

    goto :goto_94

    .line 3644
    :cond_6b
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 3645
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3646
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmFirstPressedPoint(Landroid/widget/AbsListView;)I

    move-result v4

    if-ne v4, v2, :cond_8b

    .line 3647
    iget-object v4, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4, v1, v2}, Landroid/widget/AbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/AbsListView;II)V

    .line 3648
    iget-object v2, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2, v1}, Landroid/widget/AbsListView;->-$$Nest$fputmFirstPressedPoint(Landroid/widget/AbsListView;I)V

    goto :goto_94

    .line 3650
    :cond_8b
    iget-object v2, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-$$Nest$fgetmFirstPressedPoint(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-static {v2, v4, v1}, Landroid/widget/AbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/AbsListView;II)V

    .line 3656
    .end local v3    # "view":Landroid/view/View;
    :cond_94
    :goto_94
    return-void
.end method
