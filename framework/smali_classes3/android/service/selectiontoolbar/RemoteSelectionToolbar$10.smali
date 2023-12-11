.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;
.super Landroid/widget/LinearLayout;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createMainPanel()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;


# direct methods
.method constructor <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/selectiontoolbar/RemoteSelectionToolbar;
    .param p2, "context"    # Landroid/content/Context;

    .line 1024
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1040
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$misOverflowAnimating(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1027
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$misOverflowAnimating(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1030
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmMainPanelSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1030
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1034
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1035
    return-void
.end method
