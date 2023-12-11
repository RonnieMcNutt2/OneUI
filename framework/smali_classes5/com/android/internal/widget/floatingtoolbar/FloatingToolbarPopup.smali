.class public interface abstract Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "FloatingToolbarPopup.java"


# direct methods
.method public static createInstance(Landroid/content/Context;Landroid/view/View;Z)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "isSemTypeFloating"    # Z

    .line 111
    invoke-static {p0}, Landroid/view/selectiontoolbar/SelectionToolbarManager;->isRemoteSelectionToolbarEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 112
    .local v0, "enabled":Z
    if-eqz v0, :cond_c

    .line 113
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_11

    .line 114
    :cond_c
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 112
    :goto_11
    return-object v1
.end method


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract getMovedPos()Landroid/graphics/Point;
.end method

.method public abstract hide()V
.end method

.method public abstract isDiscardTouch()Z
.end method

.method public abstract isDismissed()Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isMovingStarted()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onDetachFromWindow()V
.end method

.method public abstract setIsMovingStarted(Z)V
.end method

.method public abstract setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z
.end method

.method public abstract setSuggestedWidth(I)V
.end method

.method public abstract setWidthChanged(Z)V
.end method

.method public abstract show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method
