.class public Lcom/samsung/android/location/SemBleScanGeofence;
.super Ljava/lang/Object;
.source "SemBleScanGeofence.java"


# instance fields
.field private final mAddress:[Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private final mRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # [Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    iput-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    .line 33
    iput-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    .line 42
    iput-object p1, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mAddress:[Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mRequestId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private isLatLonValid(DD)Z
    .registers 11
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 64
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 65
    .local v0, "ERROR_TORLERANCE":D
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    .line 68
    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v2, v2, p1

    const/4 v3, 0x0

    if-gez v2, :cond_18

    .line 69
    return v3

    .line 70
    :cond_18
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v2, v4, p3

    if-gez v2, :cond_22

    .line 71
    return v3

    .line 75
    :cond_22
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, p1, v4

    if-gez v2, :cond_2f

    cmpg-double v2, p3, v4

    if-ltz v2, :cond_30

    :cond_2f
    const/4 v3, 0x1

    :cond_30
    return v3
.end method


# virtual methods
.method public getAddress()[Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mAddress:[Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    return-wide v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public setGeopoint(DD)Z
    .registers 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/location/SemBleScanGeofence;->isLatLonValid(DD)Z

    move-result v0

    if-nez v0, :cond_8

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_8
    iput-wide p1, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    .line 59
    iput-wide p3, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    .line 60
    const/4 v0, 0x1

    return v0
.end method
