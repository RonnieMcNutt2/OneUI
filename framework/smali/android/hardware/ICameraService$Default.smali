.class public Landroid/hardware/ICameraService$Default;
.super Ljava/lang/Object;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;
    .registers 3
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public applyExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)Z
    .registers 3
    .param p1, "bundles"    # [Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public connect(Landroid/hardware/ICameraClient;ILjava/lang/String;IIIZZ)Landroid/hardware/ICamera;
    .registers 10
    .param p1, "client"    # Landroid/hardware/ICameraClient;
    .param p2, "cameraId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "clientUid"    # I
    .param p5, "clientPid"    # I
    .param p6, "targetSdkVersion"    # I
    .param p7, "overrideToPortrait"    # Z
    .param p8, "forceSlowJpegMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Landroid/hardware/camera2/ICameraDeviceUser;
    .registers 10
    .param p1, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p5, "clientUid"    # I
    .param p6, "oomScoreOffset"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "overrideToPortrait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraCharacteristics(Ljava/lang/String;IZ)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "overrideToPortrait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraInfo(IZ)Landroid/hardware/CameraInfo;
    .registers 4
    .param p1, "cameraId"    # I
    .param p2, "overrideToPortrait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLegacyParameters(I)Ljava/lang/String;
    .registers 3
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfCameras(I)I
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getTorchStrengthLevel(Ljava/lang/String;)I
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "internalCamId"    # Ljava/lang/String;
    .param p3, "externalCamId"    # Ljava/lang/String;
    .param p4, "CameraInjectionCallback"    # Landroid/hardware/camera2/ICameraInjectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z
    .registers 4
    .param p1, "sessions"    # [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isHiddenIdPermittedPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDeviceInjectorOrientationChange()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    return-void
.end method

.method public notifyDeviceStateChange(J)V
    .registers 3
    .param p1, "newState"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public notifyDeviceStateChangeSync(J)V
    .registers 3
    .param p1, "newState"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    return-void
.end method

.method public notifyDisplayConfigurationChange()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public notifyPkgListParamChange([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgList"    # [Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    return-void
.end method

.method public notifySystemEvent(I[I)V
    .registers 3
    .param p1, "eventId"    # I
    .param p2, "args"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public removeListener(Landroid/hardware/ICameraServiceListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;
    .registers 3
    .param p1, "stats"    # Landroid/hardware/CameraExtensionSessionStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDeviceInjectorPending(Z)V
    .registers 2
    .param p1, "pending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public startDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/hardware/IDeviceInjectorCallback;)V
    .registers 5
    .param p1, "targetPackages"    # [Ljava/lang/String;
    .param p2, "targetIds"    # [Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;
    .param p4, "deviceInjectorCallback"    # Landroid/hardware/IDeviceInjectorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public startRemoteDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Landroid/hardware/IRemoteDevice;Landroid/hardware/IDeviceInjectorCallback;)V
    .registers 5
    .param p1, "targetPackages"    # [Ljava/lang/String;
    .param p2, "targetIds"    # [Ljava/lang/String;
    .param p3, "sourceDevice"    # Landroid/hardware/IRemoteDevice;
    .param p4, "deviceInjectorCallback"    # Landroid/hardware/IDeviceInjectorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    return-void
.end method

.method public stopDeviceInjector()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    return-void
.end method

.method public supportsCameraApi(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "strengthLevel"    # I
    .param p3, "clientBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public updateRequestInjectorAllowedList([Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    return-void
.end method
