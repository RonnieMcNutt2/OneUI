.class public Landroid/hardware/IRemoteDevice$Default;
.super Ljava/lang/Object;
.source "IRemoteDevice.java"

# interfaces
.implements Landroid/hardware/IRemoteDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/IRemoteDevice;
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

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearRequest()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public createDefaultRequest()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .registers 3
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public deleteStream(I)V
    .registers 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public getCameraCharacteristic()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "targetLensFacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallback(Landroid/hardware/IRemoteDeviceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/IRemoteDeviceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public submitRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;[IZ)V
    .registers 4
    .param p1, "request"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "outputStreams"    # [I
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method
