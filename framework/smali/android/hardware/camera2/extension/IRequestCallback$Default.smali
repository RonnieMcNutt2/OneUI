.class public Landroid/hardware/camera2/extension/IRequestCallback$Default;
.super Ljava/lang/Object;
.source "IRequestCallback.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCaptureBufferLost(IJI)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "outputStreamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V
    .registers 3
    .param p1, "requestId"    # I
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V
    .registers 3
    .param p1, "requestId"    # I
    .param p2, "captureFailure"    # Landroid/hardware/camera2/extension/CaptureFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V
    .registers 3
    .param p1, "requestId"    # I
    .param p2, "partialResult"    # Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .registers 2
    .param p1, "sequenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .registers 4
    .param p1, "sequenceId"    # I
    .param p2, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public onCaptureStarted(IJJ)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
