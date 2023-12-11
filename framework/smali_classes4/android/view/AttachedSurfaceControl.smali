.class public interface abstract Landroid/view/AttachedSurfaceControl;
.super Ljava/lang/Object;
.source "AttachedSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;
    }
.end annotation


# virtual methods
.method public addOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;

    .line 120
    return-void
.end method

.method public abstract applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public abstract buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
.end method

.method public getBufferTransformHint()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;
    .registers 2

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;

    .line 129
    return-void
.end method

.method public setChildBoundingInsets(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 169
    return-void
.end method

.method public setTouchableRegion(Landroid/graphics/Region;)V
    .registers 2
    .param p1, "r"    # Landroid/graphics/Region;

    .line 141
    return-void
.end method
