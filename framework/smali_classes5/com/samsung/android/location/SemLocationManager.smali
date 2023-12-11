.class public Lcom/samsung/android/location/SemLocationManager;
.super Ljava/lang/Object;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;,
        Lcom/samsung/android/location/SemLocationManager$SemLocationManagerModule;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_READY:Ljava/lang/String; = "com.samsung.android.location.SERVICE_READY"

.field public static final BATCHED_LOCATION:Ljava/lang/String; = "batchedlocation"

.field public static final CURRENT_ADDRESS_FROM_LOCATION:I = 0xa

.field public static final CURRENT_LOCATION:Ljava/lang/String; = "currentlocation"

.field public static final CURRENT_LOCATION_ADDRESS:Ljava/lang/String; = "currentlocationaddress"

.field public static final CURRENT_LOCATION_MOST_ACCURATE:I = 0x9

.field public static final CURRENT_LOCATION_SINGLE:I = 0x7

.field public static final CURRENT_LOCATION_TRACKING:I = 0x8

.field public static final ERROR_ALREADY_STARTED:I = -0x5

.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ID_NOT_EXIST:I = -0x3

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_LOCATION_CURRENTLY_UNAVAILABLE:I = -0x64

.field public static final ERROR_NOT_INITIALIZED:I = -0x1

.field public static final ERROR_NOT_SUPPORTED:I = -0x7

.field public static final ERROR_TOO_MANY_GEOFENCE:I = -0x6

.field public static final FLUSH_COMPLETED:Ljava/lang/String; = "flushcompleted"

.field public static final GEOFENCE_BLUETOOTH_ADDRESS:Ljava/lang/String; = "geofencebluetoothaddress"

.field public static final GEOFENCE_ENTER:I = 0x1

.field public static final GEOFENCE_EXIT:I = 0x2

.field public static final GEOFENCE_LOCATION:Ljava/lang/String; = "location"

.field public static final GEOFENCE_REQUEST_ID:Ljava/lang/String; = "requestid"

.field public static final GEOFENCE_TRANSITION:Ljava/lang/String; = "transition"

.field public static final GEOFENCE_TYPE_BLE_SCAN:I = 0x5

.field public static final GEOFENCE_TYPE_BT:I = 0x3

.field public static final GEOFENCE_TYPE_EVENT:I = 0x4

.field public static final GEOFENCE_TYPE_GEOPOINT:I = 0x1

.field public static final GEOFENCE_TYPE_WIFI:I = 0x2

.field public static final GEOFENCE_UNKNOWN:I = 0x0

.field public static final LOCATION_BATCHING:I = 0xb

.field public static final OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_ALWAYS_SCAN:Ljava/lang/String; = "permissionalwaysscan"

.field private static final TAG:Ljava/lang/String; = "SemLocationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/location/SemLocationListener;",
            "Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/samsung/android/location/ISLocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/location/ISLocationManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/location/ISLocationManager;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    .line 465
    iput-object p2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    .line 466
    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    .line 467
    return-void
.end method


# virtual methods
.method public addGeofence(Lcom/samsung/android/location/SemBleScanGeofence;Landroid/app/PendingIntent;)I
    .registers 13
    .param p1, "param"    # Lcom/samsung/android/location/SemBleScanGeofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1119
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 1120
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v0, -0x1

    return v0

    .line 1123
    :cond_d
    const/4 v0, -0x2

    if-nez p2, :cond_17

    .line 1124
    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return v0

    .line 1127
    :cond_17
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1128
    const-string/jumbo v2, "pending intent must be mutable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return v0

    .line 1131
    :cond_24
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request abnormal requestId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return v0

    .line 1136
    :cond_4b
    :try_start_4b
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getAddress()[Ljava/lang/String;

    move-result-object v5

    .line 1137
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getLongitude()D

    move-result-wide v8

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/location/SemGeofence;-><init>(I[Ljava/lang/String;DD)V

    .line 1138
    .local v0, "geofence":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBleScanGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    .line 1139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, p2, v4, v5}, Lcom/samsung/android/location/ISLocationManager;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_7f} :catch_80

    return v1

    .line 1142
    .end local v0    # "geofence":Lcom/samsung/android/location/SemGeofence;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    :catch_80
    move-exception v0

    .line 1143
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v1, -0x4

    return v1
.end method

.method public addGeofence(Lcom/samsung/android/location/SemBluetoothGeofence;Landroid/app/PendingIntent;)I
    .registers 9
    .param p1, "param"    # Lcom/samsung/android/location/SemBluetoothGeofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1018
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 1019
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v0, -0x1

    return v0

    .line 1022
    :cond_d
    const/4 v0, -0x2

    if-nez p2, :cond_17

    .line 1023
    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return v0

    .line 1026
    :cond_17
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1027
    const-string/jumbo v2, "pending intent must be mutable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return v0

    .line 1030
    :cond_24
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBluetoothGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request abnormal requestId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return v0

    .line 1035
    :cond_4b
    :try_start_4b
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    invoke-virtual {p1}, Lcom/samsung/android/location/SemBluetoothGeofence;->getBssid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/location/SemGeofence;-><init>(ILjava/lang/String;)V

    .line 1036
    .local v0, "geofence":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual {p1}, Lcom/samsung/android/location/SemBluetoothGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    .line 1037
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, p2, v4, v5}, Lcom/samsung/android/location/ISLocationManager;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_76} :catch_77

    return v1

    .line 1040
    .end local v0    # "geofence":Lcom/samsung/android/location/SemGeofence;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    :catch_77
    move-exception v0

    .line 1041
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v1, -0x4

    return v1
.end method

.method public addGeofence(Lcom/samsung/android/location/SemGeopointGeofence;Landroid/app/PendingIntent;)I
    .registers 14
    .param p1, "param"    # Lcom/samsung/android/location/SemGeopointGeofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 968
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 969
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v0, -0x1

    return v0

    .line 972
    :cond_d
    const/4 v0, -0x2

    if-nez p2, :cond_17

    .line 973
    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return v0

    .line 976
    :cond_17
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 977
    const-string/jumbo v2, "pending intent must be mutable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return v0

    .line 980
    :cond_24
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request abnormal requestId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return v0

    .line 985
    :cond_4b
    :try_start_4b
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getLatitude()D

    move-result-wide v5

    .line 986
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getLongitude()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getRadius()I

    move-result v9

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getWifiBssidList()[Ljava/lang/String;

    move-result-object v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/location/SemGeofence;-><init>(IDDI[Ljava/lang/String;)V

    .line 987
    .local v0, "geofence":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeopointGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    .line 988
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, p2, v4, v5}, Lcom/samsung/android/location/ISLocationManager;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_83} :catch_84

    return v1

    .line 991
    .end local v0    # "geofence":Lcom/samsung/android/location/SemGeofence;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    :catch_84
    move-exception v0

    .line 992
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v1, -0x4

    return v1
.end method

.method public addGeofence(Lcom/samsung/android/location/SemWifiGeofence;Landroid/app/PendingIntent;)I
    .registers 9
    .param p1, "param"    # Lcom/samsung/android/location/SemWifiGeofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1067
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 1068
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v0, -0x1

    return v0

    .line 1071
    :cond_d
    const/4 v0, -0x2

    if-nez p2, :cond_17

    .line 1072
    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return v0

    .line 1075
    :cond_17
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1076
    const-string/jumbo v2, "pending intent must be mutable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return v0

    .line 1079
    :cond_24
    invoke-virtual {p1}, Lcom/samsung/android/location/SemWifiGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request abnormal requestId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return v0

    .line 1084
    :cond_4b
    :try_start_4b
    new-instance v0, Lcom/samsung/android/location/SemGeofence;

    invoke-virtual {p1}, Lcom/samsung/android/location/SemWifiGeofence;->getBssid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/location/SemGeofence;-><init>(ILjava/lang/String;)V

    .line 1085
    .local v0, "geofence":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual {p1}, Lcom/samsung/android/location/SemWifiGeofence;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemGeofence;->setRequestId(Ljava/lang/String;)V

    .line 1086
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, p2, v4, v5}, Lcom/samsung/android/location/ISLocationManager;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_76} :catch_77

    return v1

    .line 1089
    .end local v0    # "geofence":Lcom/samsung/android/location/SemGeofence;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    :catch_77
    move-exception v0

    .line 1090
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v1, -0x4

    return v1
.end method

.method public flushBatchedLocations()V
    .registers 5

    .line 935
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_c

    .line 936
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void

    .line 941
    :cond_c
    :try_start_c
    invoke-interface {v0}, Lcom/samsung/android/location/ISLocationManager;->flushBatchedLocations()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 944
    goto :goto_2b

    .line 942
    :catchall_10
    move-exception v0

    .line 943
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_2b
    return-void
.end method

.method public isAvailable(I)Z
    .registers 7
    .param p1, "module"    # I

    .line 479
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v1, 0x0

    const-string v2, "SemLocationManager"

    if-nez v0, :cond_d

    .line 480
    const-string v0, "SLocationService is not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return v1

    .line 484
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/samsung/android/location/ISLocationManager;->isAvailable(I)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 485
    :catch_12
    move-exception v0

    .line 486
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAvailable : RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return v1
.end method

.method public removeBatchedLocations(Landroid/app/PendingIntent;)I
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 891
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 892
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v0, -0x1

    return v0

    .line 895
    :cond_d
    if-nez p1, :cond_17

    .line 896
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v0, -0x2

    return v0

    .line 900
    :cond_17
    const/4 v2, 0x0

    :try_start_18
    invoke-interface {v0, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removeBatchedLocations(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;)I

    move-result v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1d

    return v0

    .line 901
    :catchall_1d
    move-exception v0

    .line 902
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationBatchingUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v1, -0x4

    return v1
.end method

.method public removeBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingListener;)I
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/location/SemLocationBatchingListener;

    .line 920
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 921
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v0, -0x1

    return v0

    .line 924
    :cond_d
    if-nez p1, :cond_17

    .line 925
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v0, -0x2

    return v0

    .line 928
    :cond_17
    const/4 v0, -0x7

    return v0
.end method

.method public removeGeofence(Landroid/app/PendingIntent;)I
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 506
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 507
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v0, -0x1

    return v0

    .line 511
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/samsung/android/location/ISLocationManager;->removeGeofencesPendingIntent(Landroid/app/PendingIntent;)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 512
    :catch_12
    move-exception v0

    .line 513
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v1, -0x4

    return v1
.end method

.method public removeGeofence(Ljava/lang/String;)I
    .registers 7
    .param p1, "requestId"    # Ljava/lang/String;

    .line 1163
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 1164
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v0, -0x1

    return v0

    .line 1168
    :cond_d
    :try_start_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v0, "requestIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/samsung/android/location/ISLocationManager;->removeGeofences(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_27} :catch_28

    return v1

    .line 1171
    .end local v0    # "requestIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_28
    move-exception v0

    .line 1172
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/4 v1, -0x4

    return v1
.end method

.method public removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 755
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 756
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v0, -0x1

    return v0

    .line 759
    :cond_d
    if-nez p1, :cond_17

    .line 760
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, -0x2

    return v0

    .line 765
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 766
    .local v0, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v0, :cond_28

    .line 767
    const-string v2, "Already stopped location"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v1, -0x3

    return v1

    .line 770
    :cond_28
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/location/ISLocationManager;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I

    move-result v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2e} :catch_2f

    return v1

    .line 772
    .end local v0    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catch_2f
    move-exception v0

    .line 773
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeLocationUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v1, -0x4

    return v1
.end method

.method public removePassiveLocation(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 809
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_c

    .line 810
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void

    .line 813
    :cond_c
    if-nez p1, :cond_15

    .line 814
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 818
    :cond_15
    const/4 v2, 0x0

    :try_start_16
    invoke-interface {v0, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removePassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    .line 821
    goto :goto_36

    .line 819
    :catchall_1a
    move-exception v0

    .line 820
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_36
    return-void
.end method

.method public removeSingleLocation(Landroid/app/PendingIntent;)I
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 566
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 567
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v0, -0x1

    return v0

    .line 570
    :cond_d
    if-nez p1, :cond_17

    .line 571
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, -0x2

    return v0

    .line 575
    :cond_17
    const/4 v2, 0x0

    :try_start_18
    invoke-interface {v0, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v0

    .line 576
    :catch_1d
    move-exception v0

    .line 577
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, -0x4

    return v1
.end method

.method public removeSingleLocation(Lcom/samsung/android/location/SemLocationListener;)I
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 637
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 638
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, -0x1

    return v0

    .line 641
    :cond_d
    if-nez p1, :cond_17

    .line 642
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, -0x2

    return v0

    .line 646
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 647
    .local v0, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v0, :cond_28

    .line 648
    const-string v2, "Already stopped location"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v1, -0x3

    return v1

    .line 651
    :cond_28
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I

    move-result v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2f} :catch_30

    return v1

    .line 653
    .end local v0    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catch_30
    move-exception v0

    .line 654
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v1, -0x4

    return v1
.end method

.method public requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Landroid/app/PendingIntent;)I
    .registers 10
    .param p1, "request"    # Lcom/samsung/android/location/SemLocationBatchingRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 837
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v6, "SemLocationManager"

    if-nez v0, :cond_d

    .line 838
    const-string v0, "SLocationService is not supported"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v0, -0x1

    return v0

    .line 841
    :cond_d
    if-eqz p2, :cond_44

    if-nez p1, :cond_12

    goto :goto_44

    .line 847
    :cond_12
    const/4 v3, 0x0

    :try_start_13
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager;->requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    return v0

    .line 848
    :catchall_26
    move-exception v0

    .line 849
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLocationBatchingUpdates: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v1, -0x4

    return v1

    .line 842
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_44
    :goto_44
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v0, -0x2

    return v0
.end method

.method public requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Lcom/samsung/android/location/SemLocationBatchingListener;)I
    .registers 5
    .param p1, "request"    # Lcom/samsung/android/location/SemLocationBatchingRequest;
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationBatchingListener;

    .line 867
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_d

    .line 868
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v0, -0x1

    return v0

    .line 871
    :cond_d
    if-eqz p2, :cond_14

    if-nez p1, :cond_12

    goto :goto_14

    .line 875
    :cond_12
    const/4 v0, -0x7

    return v0

    .line 872
    :cond_14
    :goto_14
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v0, -0x2

    return v0
.end method

.method public requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I
    .registers 8
    .param p1, "isAddress"    # Z
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 721
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_d

    .line 722
    const-string v0, "SemLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/4 v0, -0x1

    return v0

    .line 725
    :cond_d
    if-nez p2, :cond_19

    .line 726
    const-string v0, "SemLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, -0x2

    return v0

    .line 730
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_48

    .line 731
    :try_start_1c
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 732
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2c

    .line 733
    new-instance v2, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    move-object v1, v2

    .line 735
    :cond_2c
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v1, v3, v4}, Lcom/samsung/android/location/ISLocationManager;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 737
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1c .. :try_end_47} :catchall_45

    .end local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .end local p1    # "isAddress":Z
    .end local p2    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :try_start_47
    throw v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_48} :catch_48

    .line 738
    .restart local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .restart local p1    # "isAddress":Z
    .restart local p2    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :catch_48
    move-exception v0

    .line 739
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationUpdates: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v1, -0x4

    return v1
.end method

.method public requestMostAccurateLocation(IIILcom/samsung/android/location/SemLocationListener;)I
    .registers 15
    .param p1, "accuracyLimit"    # I
    .param p2, "requestTimeout"    # I
    .param p3, "locationTimeout"    # I
    .param p4, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 685
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_d

    .line 686
    const-string v0, "SemLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, -0x1

    return v0

    .line 689
    :cond_d
    if-nez p4, :cond_19

    .line 690
    const-string v0, "SemLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v0, -0x2

    return v0

    .line 694
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_4d

    .line 695
    :try_start_1c
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 696
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2c

    .line 697
    new-instance v2, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    move-object v1, v2

    .line 699
    :cond_2c
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/location/ISLocationManager;->requestMostAccurateLocation(IIILandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 701
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4a

    .end local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .end local p1    # "accuracyLimit":I
    .end local p2    # "requestTimeout":I
    .end local p3    # "locationTimeout":I
    .end local p4    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :try_start_4c
    throw v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4d} :catch_4d

    .line 702
    .restart local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .restart local p1    # "accuracyLimit":I
    .restart local p2    # "requestTimeout":I
    .restart local p3    # "locationTimeout":I
    .restart local p4    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :catch_4d
    move-exception v0

    .line 703
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestMostAccurateLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v1, -0x4

    return v1
.end method

.method public requestPassiveLocation(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 786
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v1, "SemLocationManager"

    if-nez v0, :cond_c

    .line 787
    const-string v0, "SLocationService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void

    .line 790
    :cond_c
    if-nez p1, :cond_15

    .line 791
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void

    .line 795
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, p1, v4, v2, v3}, Lcom/samsung/android/location/ISLocationManager;->requestPassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_26

    .line 798
    goto :goto_42

    .line 796
    :catchall_26
    move-exception v0

    .line 797
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_42
    return-void
.end method

.method public requestSingleLocation(IIZLandroid/app/PendingIntent;)I
    .registers 14
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "isAddress"    # Z
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .line 539
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const-string v8, "SemLocationManager"

    if-nez v0, :cond_d

    .line 540
    const-string v0, "SLocationService is not supported"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, -0x1

    return v0

    .line 543
    :cond_d
    if-nez p4, :cond_17

    .line 544
    const-string/jumbo v0, "parameters are not vaild"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v0, -0x2

    return v0

    .line 548
    :cond_17
    const/4 v5, 0x0

    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2c} :catch_2d

    return v0

    .line 549
    :catch_2d
    move-exception v0

    .line 550
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSingleLocation: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v1, -0x4

    return v1
.end method

.method public requestSingleLocation(IIZLcom/samsung/android/location/SemLocationListener;)I
    .registers 15
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "isAddress"    # Z
    .param p4, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 603
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_d

    .line 604
    const-string v0, "SemLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, -0x1

    return v0

    .line 607
    :cond_d
    if-nez p4, :cond_19

    .line 608
    const-string v0, "SemLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v0, -0x2

    return v0

    .line 612
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_4d

    .line 613
    :try_start_1c
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 614
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2c

    .line 615
    new-instance v2, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    move-object v1, v2

    .line 617
    :cond_2c
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 619
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4a

    .end local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .end local p1    # "accuracy":I
    .end local p2    # "timeout":I
    .end local p3    # "isAddress":Z
    .end local p4    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :try_start_4c
    throw v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4d} :catch_4d

    .line 620
    .restart local p0    # "this":Lcom/samsung/android/location/SemLocationManager;
    .restart local p1    # "accuracy":I
    .restart local p2    # "timeout":I
    .restart local p3    # "isAddress":Z
    .restart local p4    # "listener":Lcom/samsung/android/location/SemLocationListener;
    :catch_4d
    move-exception v0

    .line 621
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v1, -0x4

    return v1
.end method
