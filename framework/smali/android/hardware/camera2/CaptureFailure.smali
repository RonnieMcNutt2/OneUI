.class public Landroid/hardware/camera2/CaptureFailure;
.super Ljava/lang/Object;
.source "CaptureFailure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureFailure$FailureReason;
    }
.end annotation


# static fields
.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_FLUSHED:I = 0x1


# instance fields
.field private final mErrorPhysicalCameraId:Ljava/lang/String;

.field private final mFrameNumber:J

.field private final mReason:I

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mSequenceId:I

.field private final mWasImageCaptured:Z


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V
    .registers 8
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "reason"    # I
    .param p3, "wasImageCaptured"    # Z
    .param p4, "sequenceId"    # I
    .param p5, "frameNumber"    # J
    .param p7, "errorPhysicalCameraId"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 74
    iput p2, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    .line 75
    iput-boolean p3, p0, Landroid/hardware/camera2/CaptureFailure;->mWasImageCaptured:Z

    .line 76
    iput p4, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    .line 77
    iput-wide p5, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    .line 78
    iput-object p7, p0, Landroid/hardware/camera2/CaptureFailure;->mErrorPhysicalCameraId:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getFrameNumber()J
    .registers 3

    .line 119
    iget-wide v0, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    return-wide v0
.end method

.method public getPhysicalCameraId()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mErrorPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    return v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getSequenceId()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    return v0
.end method

.method public wasImageCaptured()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureFailure;->mWasImageCaptured:Z

    return v0
.end method
