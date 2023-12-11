.class public interface abstract Landroid/view/ViewRootImpl$SurfaceChangedCallback;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceChangedCallback"
.end annotation


# virtual methods
.method public abstract surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract surfaceDestroyed()V
.end method

.method public abstract surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public vriDrawStarted(Z)V
    .registers 2
    .param p1, "isWmSync"    # Z

    .line 2883
    return-void
.end method
