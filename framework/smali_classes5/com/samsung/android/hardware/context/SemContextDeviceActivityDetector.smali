.class public Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextDeviceActivityDetector.java"


# static fields
.field public static final ACTIVITY_MOVING:I = 0x2

.field public static final ACTIVITY_STATIONARY:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;",
            ">;"
        }
    .end annotation
.end field

.field public static final DETECTED:I = 0x1

.field public static final ERROR_SENSOR_OUT:I = 0x3

.field public static final NOT_DETECTED:I = 0x2

.field public static final POSTURE_FACE_DOWN:I = 0x800

.field public static final POSTURE_FACE_UP:I = 0x400

.field public static final POSTURE_LANDSCAPE:I = 0x100

.field public static final POSTURE_PORTRAIT:I = 0x200


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 142
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    .line 165
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->readFromParcel(Landroid/os/Parcel;)V

    .line 172
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    .line 245
    return-void
.end method


# virtual methods
.method public getActivity()I
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "property"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getReserved()I
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "reserved"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResult()I
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 220
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    .line 221
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 234
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method
