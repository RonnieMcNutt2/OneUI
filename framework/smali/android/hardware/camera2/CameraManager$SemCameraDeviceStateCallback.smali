.class public abstract Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemCameraDeviceStateCallback"
.end annotation


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final CAMERA_FACING_FRONT:I = 0x1

.field public static final CAMERA_STATE_ACTIVE:I = 0x1

.field public static final CAMERA_STATE_CLOSED:I = 0x3

.field public static final CAMERA_STATE_IDLE:I = 0x2

.field public static final CAMERA_STATE_OPEN:I = 0x0

.field public static final CAMERA_STATE_OPENING:I = 0x64

.field public static final CAMERA_STATE_OPENING_FAILED:I = 0x65


# instance fields
.field private isExtended:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetisExtended(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;->isExtended:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisExtended(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;->isExtended:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1905
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;->isExtended:Z

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;

    .line 1977
    return-void
.end method

.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 1982
    return-void
.end method
