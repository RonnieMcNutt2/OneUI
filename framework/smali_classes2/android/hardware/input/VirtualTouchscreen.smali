.class public Landroid/hardware/input/VirtualTouchscreen;
.super Landroid/hardware/input/VirtualInputDevice;
.source "VirtualTouchscreen.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualInputDevice;-><init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .registers 1

    .line 34
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->close()V

    return-void
.end method

.method public bridge synthetic getInputDeviceId()I
    .registers 2

    .line 34
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->getInputDeviceId()I

    move-result v0

    return v0
.end method

.method public sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/input/VirtualTouchEvent;

    .line 49
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualTouchscreen;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualTouchscreen;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 52
    nop

    .line 53
    return-void

    .line 50
    :catch_9
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
