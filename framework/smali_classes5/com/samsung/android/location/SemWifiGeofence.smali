.class public Lcom/samsung/android/location/SemWifiGeofence;
.super Ljava/lang/Object;
.source "SemWifiGeofence.java"


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private final mRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/location/SemWifiGeofence;->mBssid:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/location/SemWifiGeofence;->mRequestId:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/location/SemWifiGeofence;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/location/SemWifiGeofence;->mRequestId:Ljava/lang/String;

    return-object v0
.end method
