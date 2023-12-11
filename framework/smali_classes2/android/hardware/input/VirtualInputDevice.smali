.class abstract Landroid/hardware/input/VirtualInputDevice;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final mToken:Landroid/os/IBinder;

.field protected final mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method constructor <init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 49
    iput-object p2, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 68
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 71
    nop

    .line 72
    return-void

    .line 69
    :catch_9
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInputDeviceId()I
    .registers 3

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getInputDeviceId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 59
    :catch_9
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
