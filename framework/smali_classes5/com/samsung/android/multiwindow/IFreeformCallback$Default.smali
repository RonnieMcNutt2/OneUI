.class public Lcom/samsung/android/multiwindow/IFreeformCallback$Default;
.super Ljava/lang/Object;
.source "IFreeformCallback.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IFreeformCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IFreeformCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMinimizeAnimationEnd(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onMinimized(Landroid/content/ComponentName;IIIIZ)V
    .registers 7
    .param p1, "realActivity"    # Landroid/content/ComponentName;
    .param p2, "taskId"    # I
    .param p3, "userId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "center"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public onTaskMoveStarted(ILandroid/graphics/Point;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "point"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public onUnminimized(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
