.class public abstract Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback;
.super Ljava/lang/Object;
.source "DeviceInjectorSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/DeviceInjectorSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemoteDeviceCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/DeviceInjectorSession$RemoteDeviceCallback$ErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_REMOTE_BUFFER:I = 0x1

.field public static final ERROR_REMOTE_DEVICE:I = 0x0

.field public static final ERROR_REMOTE_UNKNOWN:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCaptureResult(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
