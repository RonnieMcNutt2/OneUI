.class public interface abstract Landroid/view/InsetsAnimationControlRunner;
.super Ljava/lang/Object;
.source "InsetsAnimationControlRunner.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public controlsType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 70
    invoke-interface {p0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract getAnimation()Landroid/view/WindowInsetsAnimation;
.end method

.method public abstract getAnimationType()I
.end method

.method public abstract getControllingTypes()I
.end method

.method public abstract getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
.end method

.method public abstract getTypes()I
.end method

.method public abstract isCancelRequested()Z
.end method

.method public abstract notifyControlRevoked(I)V
.end method

.method public abstract updateSurfacePosition(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation
.end method
