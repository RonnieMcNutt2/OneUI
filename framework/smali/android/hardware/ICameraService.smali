.class public interface abstract Landroid/hardware/ICameraService;
.super Ljava/lang/Object;
.source "ICameraService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub;,
        Landroid/hardware/ICameraService$Default;
    }
.end annotation


# static fields
.field public static final API_VERSION_1:I = 0x1

.field public static final API_VERSION_2:I = 0x2

.field public static final BUNDLE_KEY_I32:Ljava/lang/String; = "key.i32"

.field public static final BUNDLE_KEY_TAG_NAME:Ljava/lang/String; = "key.tagName"

.field public static final BUNDLE_KEY_U8:Ljava/lang/String; = "key.u8"

.field public static final CAMERA_TYPE_ALL:I = 0x1

.field public static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field public static final DEVICE_STATE_BACK_COVERED:I = 0x1

.field public static final DEVICE_STATE_FOLDED:I = 0x4

.field public static final DEVICE_STATE_FRONT_COVERED:I = 0x2

.field public static final DEVICE_STATE_LAST_FRAMEWORK_BIT:I = -0x80000000

.field public static final DEVICE_STATE_NORMAL:I = 0x0

.field public static final ERROR_ALREADY_EXISTS:I = 0x2

.field public static final ERROR_CAMERA_IN_USE:I = 0x7

.field public static final ERROR_DEPRECATED_HAL:I = 0x9

.field public static final ERROR_DISABLED:I = 0x6

.field public static final ERROR_DISABLED_AND_FLUSH:I = 0x64

.field public static final ERROR_DISCONNECTED:I = 0x4

.field public static final ERROR_ILLEGAL_ARGUMENT:I = 0x3

.field public static final ERROR_INVALID_OPERATION:I = 0xa

.field public static final ERROR_MAX_CAMERAS_IN_USE:I = 0x8

.field public static final ERROR_PERMISSION_DENIED:I = 0x1

.field public static final ERROR_TIMED_OUT:I = 0x5

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_USB_DEVICE_ATTACHED:I = 0x2

.field public static final EVENT_USB_DEVICE_DETACHED:I = 0x3

.field public static final EVENT_USER_SWITCHED:I = 0x1

.field public static final USE_CALLING_PID:I = -0x1

.field public static final USE_CALLING_UID:I = -0x1


# virtual methods
.method public abstract addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract applyExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connect(Landroid/hardware/ICameraClient;ILjava/lang/String;IIIZZ)Landroid/hardware/ICamera;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCameraCharacteristics(Ljava/lang/String;IZ)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCameraInfo(IZ)Landroid/hardware/CameraInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLegacyParameters(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNumberOfCameras(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTorchStrengthLevel(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isHiddenIdPermittedPackage(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyDeviceInjectorOrientationChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyDeviceStateChange(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyDeviceStateChangeSync(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyDisplayConfigurationChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyPkgListParamChange([Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySystemEvent(I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Landroid/hardware/ICameraServiceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDeviceInjectorPending(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/hardware/IDeviceInjectorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startRemoteDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Landroid/hardware/IRemoteDevice;Landroid/hardware/IDeviceInjectorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopDeviceInjector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract supportsCameraApi(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateRequestInjectorAllowedList([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
