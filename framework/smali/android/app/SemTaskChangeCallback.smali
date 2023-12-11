.class public interface abstract Landroid/app/SemTaskChangeCallback;
.super Ljava/lang/Object;
.source "SemTaskChangeCallback.java"


# virtual methods
.method public abstract onActivityRequestedOrientationChanged(II)V
.end method

.method public abstract onTaskCreated(ILandroid/content/ComponentName;)V
.end method

.method public abstract onTaskDisplayChanged(II)V
.end method

.method public abstract onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onTaskRemoved(I)V
.end method

.method public onTaskRequestedOrientationChanged(II)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 86
    return-void
.end method
