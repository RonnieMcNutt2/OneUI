.class public Landroid/hardware/CameraStatus;
.super Ljava/lang/Object;
.source "CameraStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cameraId:Ljava/lang/String;

.field public clientPackage:Ljava/lang/String;

.field public status:I

.field public unavailablePhysicalCameras:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/hardware/CameraStatus$1;

    invoke-direct {v0}, Landroid/hardware/CameraStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStatus;->status:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 43
    iget-object v0, p0, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Landroid/hardware/CameraStatus;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method
