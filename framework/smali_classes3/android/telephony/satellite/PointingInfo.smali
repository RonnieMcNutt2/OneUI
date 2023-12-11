.class public final Landroid/telephony/satellite/PointingInfo;
.super Ljava/lang/Object;
.source "PointingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/PointingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSatelliteAzimuthDegrees:F

.field private mSatelliteElevationDegrees:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/telephony/satellite/PointingInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/PointingInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/PointingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .param p1, "satelliteAzimuthDegrees"    # F
    .param p2, "satelliteElevationDegrees"    # F

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    .line 39
    iput p2, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Landroid/telephony/satellite/PointingInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/satellite/PointingInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/PointingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    .line 95
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getSatelliteAzimuthDegrees()F
    .registers 2

    .line 85
    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    return v0
.end method

.method public getSatelliteElevationDegrees()F
    .registers 2

    .line 89
    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SatelliteAzimuthDegrees:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "SatelliteElevationDegrees:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteAzimuthDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    iget v0, p0, Landroid/telephony/satellite/PointingInfo;->mSatelliteElevationDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 55
    return-void
.end method
