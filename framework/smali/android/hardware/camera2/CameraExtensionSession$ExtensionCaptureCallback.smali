.class public abstract Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtensionCaptureCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 132
    return-void
.end method

.method public onCaptureProcessProgressed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;I)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "progress"    # I

    .line 238
    return-void
.end method

.method public onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 107
    return-void
.end method

.method public onCaptureResultAvailable(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 203
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "sequenceId"    # I

    .line 177
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "sequenceId"    # I

    .line 155
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V
    .registers 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J

    .line 85
    return-void
.end method
