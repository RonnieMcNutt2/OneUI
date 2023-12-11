.class public abstract Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AvailabilityCallback"
.end annotation


# instance fields
.field private mIsHiddenIdPermittedPackage:Z

.field private mIsRegisteredWhileServiceDown:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsHiddenIdPermittedPackage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsRegisteredWhileServiceDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsHiddenIdPermittedPackage:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsRegisteredWhileServiceDown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAccessPrioritiesChanged()V
    .registers 1

    .line 1614
    return-void
.end method

.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1574
    return-void
.end method

.method public onCameraClosed(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1778
    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "packageId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1762
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1589
    return-void
.end method

.method public onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 1679
    return-void
.end method

.method public onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 1743
    return-void
.end method

.method public onSemCameraDeviceActive(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 1811
    return-void
.end method

.method public onSemCameraDeviceClose(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 1801
    return-void
.end method

.method public onSemCameraDeviceIdle(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 1806
    return-void
.end method

.method public onSemCameraDeviceOpen(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 1796
    return-void
.end method

.method public onSemCameraDeviceRawStatus(Ljava/lang/String;I)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "rawStatus"    # I

    .line 1816
    return-void
.end method
