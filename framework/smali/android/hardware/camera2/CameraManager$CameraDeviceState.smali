.class Landroid/hardware/camera2/CameraManager$CameraDeviceState;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraDeviceState"
.end annotation


# instance fields
.field public final mClientName:Ljava/lang/String;

.field public final mDeviceState:I

.field public final mFacing:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5
    .param p1, "facing"    # I
    .param p2, "deviceState"    # I
    .param p3, "clientName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    .line 142
    iput p2, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    .line 143
    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    .line 144
    iput p4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mUserId:I

    .line 145
    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cameraFacing"    # I

    .line 175
    packed-switch p0, :pswitch_data_10

    .line 181
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 178
    :pswitch_6
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 177
    :pswitch_9
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 176
    :pswitch_c
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "newCameraState"    # I

    .line 162
    sparse-switch p0, :sswitch_data_18

    .line 171
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 168
    :sswitch_6
    const-string v0, "CAMERA_STATE_OPENING_FAILED"

    return-object v0

    .line 167
    :sswitch_9
    const-string v0, "CAMERA_STATE_OPENING"

    return-object v0

    .line 166
    :sswitch_c
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 165
    :sswitch_f
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 164
    :sswitch_12
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 163
    :sswitch_15
    const-string v0, "CAMERA_STATE_OPEN"

    return-object v0

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_15
        0x1 -> :sswitch_12
        0x2 -> :sswitch_f
        0x3 -> :sswitch_c
        0x64 -> :sswitch_9
        0x65 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 149
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 150
    :cond_4
    instance-of v1, p1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 151
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 153
    .local v1, "other":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    iget v3, v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    iget v4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    if-ne v3, v4, :cond_2a

    iget v3, v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    iget v4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    if-ne v3, v4, :cond_2a

    iget-object v3, v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mUserId:I

    iget v4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mUserId:I

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 158
    iget v0, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "facing %s state now %s for client %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
