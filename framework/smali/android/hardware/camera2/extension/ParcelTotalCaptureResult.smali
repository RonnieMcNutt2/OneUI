.class public Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
.super Ljava/lang/Object;
.source "ParcelTotalCaptureResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public frameNumber:J

.field public logicalCameraId:Ljava/lang/String;

.field public parent:Landroid/hardware/camera2/CaptureRequest;

.field public partials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/ParcelCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field public physicalResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field public results:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field public sequenceId:I

.field public sessionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult$1;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    .line 12
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    .line 14
    iput v0, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 85
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_21

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "_mask":I
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v0, v3

    .line 89
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_10

    .line 90
    :cond_20
    return v0

    .line 92
    .end local v0    # "_mask":I
    :cond_21
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2d

    .line 93
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 95
    :cond_2d
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 80
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_10e

    .line 51
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 69
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->logicalCameraId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 69
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object v2, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 69
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_62
    :try_start_62
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    iput-object v2, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 69
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 69
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_9e
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 69
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_ba
    :try_start_ba
    sget-object v2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c6
    .catchall {:try_start_ba .. :try_end_c6} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d8

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d2

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 69
    :cond_d2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_d8
    :try_start_d8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e2
    .catchall {:try_start_d8 .. :try_end_e2} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f4

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ee

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 69
    :cond_ee
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_f4
    :try_start_f4
    sget-object v2, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;
    :try_end_fc
    .catchall {:try_start_f4 .. :try_end_fc} :catchall_10c

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_106

    .line 71
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    nop

    .line 73
    return-void

    .line 69
    :cond_106
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :catchall_10c
    move-exception v2

    goto :goto_116

    .line 50
    :cond_10e
    :try_start_10e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_116
    .catchall {:try_start_10e .. :try_end_116} :catchall_10c

    .line 68
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_116
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_11f

    .line 69
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_11f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 31
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->logicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 35
    iget v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-wide v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 38
    iget v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 41
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void
.end method
