.class public Lcom/samsung/android/location/SemGeopointGeofence;
.super Ljava/lang/Object;
.source "SemGeopointGeofence.java"


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D

.field private final mRadius:I

.field private final mRequestId:Ljava/lang/String;

.field private mWifiBssids:[Ljava/lang/String;


# direct methods
.method public constructor <init>(DDILjava/lang/String;)V
    .registers 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # I
    .param p6, "requestId"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLatitude:D

    .line 44
    iput-wide p3, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLongitude:D

    .line 45
    iput p5, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRadius:I

    .line 46
    iput-object p6, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRequestId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRadius:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiBssidList()[Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mWifiBssids:[Ljava/lang/String;

    return-object v0
.end method

.method public setWifiBssids([Ljava/lang/String;)V
    .registers 2
    .param p1, "wifiBssids"    # [Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mWifiBssids:[Ljava/lang/String;

    .line 56
    return-void
.end method
