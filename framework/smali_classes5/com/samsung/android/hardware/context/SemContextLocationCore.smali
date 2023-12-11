.class public Lcom/samsung/android/hardware/context/SemContextLocationCore;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextLocationCore.java"


# static fields
.field public static final ACTION_CURRENT_LOCATION_ACTIVITY_RECOGNITION_START:I = 0xb

.field public static final ACTION_CURRENT_LOCATION_ACTIVITY_RECOGNITION_STOP:I = 0xc

.field public static final ACTION_CURRENT_LOCATION_DISTANCE_CALLBACK:I = 0x4

.field public static final ACTION_CURRENT_LOCATION_INJECT_PASSIVE_LOCATION:I = 0x8

.field public static final ACTION_CURRENT_LOCATION_REQUEST_DISTANCE:I = 0xd

.field public static final ACTION_CURRENT_LOCATION_RESET_DISTANCE:I = 0xe

.field public static final ACTION_DUMPSTATE:I = 0x6

.field public static final ACTION_EXTRA_DATA_ARRAY_CALLBACK:I = 0xa

.field public static final ACTION_FLP_BATCHING_CALLBACK:I = 0x7

.field public static final ACTION_FLP_BATCHING_CLEANUP:I = 0x16

.field public static final ACTION_FLP_BATCHING_FLUSH:I = 0x14

.field public static final ACTION_FLP_BATCHING_INJECT_LOCATION:I = 0x15

.field public static final ACTION_FLP_BATCHING_REQUEST_LOCATION:I = 0x13

.field public static final ACTION_FLP_BATCHING_START:I = 0x10

.field public static final ACTION_FLP_BATCHING_STOP:I = 0x12

.field public static final ACTION_FLP_BATCHING_UPDATE:I = 0x11

.field public static final ACTION_GEOFENCE_ACTIVITY_RECOGNITION_START:I = 0x9

.field public static final ACTION_GEOFENCE_ACTIVITY_RECOGNITION_STOP:I = 0xa

.field public static final ACTION_GEOFENCE_ACTIVITY_RECOGNITION_TRACKING_CALLBACK:I = 0x3

.field public static final ACTION_GEOFENCE_ADD:I = 0x1

.field public static final ACTION_GEOFENCE_ERROR_CALLBACK:I = 0x5

.field public static final ACTION_GEOFENCE_ERROR_CODE_GENERIC:I = -0x64

.field public static final ACTION_GEOFENCE_ERROR_CODE_SUCCESS:I = 0x0

.field public static final ACTION_GEOFENCE_GPS_PAUSE:I = 0x3

.field public static final ACTION_GEOFENCE_GPS_RESUME:I = 0x4

.field public static final ACTION_GEOFENCE_NLP_PAUSE:I = 0x5

.field public static final ACTION_GEOFENCE_NLP_RESUME:I = 0x6

.field public static final ACTION_GEOFENCE_REMOVE:I = 0x2

.field public static final ACTION_GEOFENCE_STATUS_ENTER:I = 0x0

.field public static final ACTION_GEOFENCE_STATUS_EXIT:I = 0x1

.field public static final ACTION_GEOFENCE_STATUS_REMOVE:I = 0xf

.field public static final ACTION_GEOFENCE_TRANSITION_CALLBACK:I = 0x1

.field public static final ACTION_GEOFENCE_UPDATE:I = 0x7

.field public static final ACTION_GEOFENCE_UPDATE_CALLBACK:I = 0x2

.field public static final ACTION_GEOFENCE_VERSION:I = 0x1

.field public static final ACTION_GEOFENCE_VERSION_CALLBACK:I = 0x0

.field public static final ACTION_SEND_EXTRA_CMD:I = 0x17

.field public static final ACTION_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextLocationCore;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_CURRENT_LOCATION:I = 0x1

.field public static final MODE_DUMPSTATE:I = 0x2

.field public static final MODE_EXTRA_DATA:I = 0x3

.field public static final MODE_FLP_BATCHING:I = 0x3

.field public static final MODE_GEOFENCE:I = 0x0

.field public static final MODE_UNKNOWN:I = -0x1


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 405
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCore$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCore$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    .line 429
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 436
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 437
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextLocationCore;->readFromParcel(Landroid/os/Parcel;)V

    .line 438
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 724
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    .line 725
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .registers 3

    .line 509
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAccuracyArray()[I
    .registers 3

    .line 659
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "AccuracyArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAltitudeArray()[I
    .registers 3

    .line 629
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "AltitudeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getBearingArray()[I
    .registers 3

    .line 649
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "BearingArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDataArray()[I
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "DataArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDataSequence()I
    .registers 3

    .line 669
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "DataSequence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .registers 3

    .line 563
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDistance()F
    .registers 3

    .line 554
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Distance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getErrorCallbackType()I
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "FunctionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .registers 3

    .line 545
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "ErrorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExtraDataArray()[I
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "ExtraDataArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getFenceId()I
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "GeoFenceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .line 491
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeArray()[D
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "LatitudeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()D
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeArray()[D
    .registers 3

    .line 619
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "LongitudeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSpeedArray()[I
    .registers 3

    .line 639
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "SpeedArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "GeoFenceStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatusArray()[I
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "EventStatusArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSuccessGpsCount()I
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "SuccessGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStampArray()[J
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "TimeStampArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getTotalGpsCount()I
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalSequence()I
    .registers 3

    .line 679
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalSequence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTypeArray()[I
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "EventTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 700
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    .line 701
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 714
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 715
    return-void
.end method
