.class Landroid/widget/SemHorizontalAbsListView$PerformClick;
.super Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .registers 3

    .line 4402
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$PerformClick-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 4409
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmForcedClick(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_f

    return-void

    .line 4411
    :cond_f
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4412
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    .line 4413
    .local v1, "motionPosition":I
    const/4 v2, 0x0

    .line 4414
    .local v2, "handledNotifykeyPress":Z
    const/4 v3, 0x0

    .line 4415
    .local v3, "handledNotifyMultiSelect":Z
    if-eqz v0, :cond_b0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v4, :cond_b0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_b0

    .line 4417
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_b0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->sameWindow()Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 4418
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v6, v5, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4421
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_b0

    .line 4423
    :try_start_3a
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4425
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_53

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 4426
    :cond_53
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v6

    move v2, v6

    .line 4430
    :cond_5e
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_ab

    :cond_6e
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_ab

    .line 4432
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 4433
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V

    goto :goto_ab

    .line 4434
    :cond_82
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 4435
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v6}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4436
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v6

    if-ne v6, v4, :cond_a2

    .line 4437
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V

    .line 4438
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_ab

    .line 4440
    :cond_a2
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v6

    invoke-static {v4, v6, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V
    :try_end_ab
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_ab} :catch_ac

    .line 4448
    :cond_ab
    :goto_ab
    goto :goto_b0

    .line 4446
    :catch_ac
    move-exception v4

    .line 4447
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 4451
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v5    # "view":Landroid/view/View;
    :cond_b0
    :goto_b0
    return-void
.end method
