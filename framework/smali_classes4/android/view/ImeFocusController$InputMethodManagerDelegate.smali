.class public interface abstract Landroid/view/ImeFocusController$InputMethodManagerDelegate;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ImeFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputMethodManagerDelegate"
.end annotation


# virtual methods
.method public abstract onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V
.end method

.method public abstract onScheduledCheckFocus(Landroid/view/ViewRootImpl;)V
.end method

.method public abstract onViewDetachedFromWindow(Landroid/view/View;Landroid/view/ViewRootImpl;)V
.end method

.method public abstract onViewFocusChanged(Landroid/view/View;Z)V
.end method

.method public abstract onWindowDismissed(Landroid/view/ViewRootImpl;)V
.end method

.method public abstract onWindowLostFocus(Landroid/view/ViewRootImpl;)V
.end method
