.class Landroid/widget/MultiSelectPopupWindow$SelectionController;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionController"
.end annotation


# instance fields
.field private mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

.field private mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStartHandle(Landroid/widget/MultiSelectPopupWindow$SelectionController;)Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;
    .registers 1

    iget-object p0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitDrawables(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initDrawables()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitHandles(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initHandles()V

    return-void
.end method

.method private constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .registers 2

    .line 566
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$SelectionController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$SelectionController;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private initDrawables()V
    .registers 4

    .line 577
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_23

    .line 578
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fputmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)V

    .line 580
    :cond_23
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_46

    .line 581
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fputmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)V

    .line 583
    :cond_46
    return-void
.end method

.method private initHandles()V
    .registers 5

    .line 586
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-nez v0, :cond_17

    .line 587
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    .line 589
    :cond_17
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-nez v0, :cond_2e

    .line 590
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    .line 593
    :cond_2e
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->show()V

    .line 594
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->show()V

    .line 596
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 599
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_7

    .line 600
    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->hide()V

    .line 602
    :cond_7
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_e

    .line 603
    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->hide()V

    .line 605
    :cond_e
    return-void
.end method

.method public initPreviousOffset()V
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_7

    .line 642
    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->initPreviousOffset()V

    .line 644
    :cond_7
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_e

    .line 645
    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->initPreviousOffset()V

    .line 647
    :cond_e
    return-void
.end method

.method public isSelectionEndDragged()Z
    .registers 2

    .line 620
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isSelectionStartDragged()Z
    .registers 2

    .line 612
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onDetached()V
    .registers 3

    .line 631
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 632
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 634
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v1, :cond_12

    .line 635
    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->onDetached()V

    .line 636
    :cond_12
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v1, :cond_19

    .line 637
    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->onDetached()V

    .line 638
    :cond_19
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .param p1, "isInTouchMode"    # Z

    .line 624
    if-nez p1, :cond_5

    .line 625
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    .line 627
    :cond_5
    return-void
.end method

.method public show()V
    .registers 1

    .line 572
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initDrawables()V

    .line 573
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initHandles()V

    .line 574
    return-void
.end method
