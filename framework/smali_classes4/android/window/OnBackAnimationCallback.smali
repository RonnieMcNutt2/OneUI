.class public interface abstract Landroid/window/OnBackAnimationCallback;
.super Ljava/lang/Object;
.source "OnBackAnimationCallback.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# virtual methods
.method public onBackCancelled()V
    .registers 1

    .line 62
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .registers 2
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 58
    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .registers 2
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 49
    return-void
.end method
