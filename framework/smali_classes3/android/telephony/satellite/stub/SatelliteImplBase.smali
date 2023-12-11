.class public Landroid/telephony/satellite/stub/SatelliteImplBase;
.super Landroid/telephony/satellite/stub/SatelliteService;
.source "SatelliteImplBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SatelliteImplBase"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field protected final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 52
    invoke-direct {p0}, Landroid/telephony/satellite/stub/SatelliteService;-><init>()V

    .line 64
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/stub/SatelliteImplBase$1;-><init>(Landroid/telephony/satellite/stub/SatelliteImplBase;)V

    iput-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mBinder:Landroid/os/IBinder;

    .line 53
    iput-object p1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 54
    return-void
.end method


# virtual methods
.method public deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 470
    return-void
.end method

.method public enableCellularModemWhileSatelliteModeIsOn(ZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 281
    return-void
.end method

.method public final getBinder()Landroid/os/IBinder;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public pollPendingSatelliteDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 519
    return-void
.end method

.method public provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "provisionData"    # [B
    .param p3, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 444
    return-void
.end method

.method public requestIsSatelliteCommunicationAllowedForCurrentLocation(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IBooleanConsumer;)V
    .registers 3
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Lcom/android/internal/telephony/IBooleanConsumer;

    .line 595
    return-void
.end method

.method public requestIsSatelliteEnabled(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IBooleanConsumer;)V
    .registers 3
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Lcom/android/internal/telephony/IBooleanConsumer;

    .line 328
    return-void
.end method

.method public requestIsSatelliteProvisioned(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IBooleanConsumer;)V
    .registers 3
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Lcom/android/internal/telephony/IBooleanConsumer;

    .line 493
    return-void
.end method

.method public requestIsSatelliteSupported(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IBooleanConsumer;)V
    .registers 3
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Lcom/android/internal/telephony/IBooleanConsumer;

    .line 351
    return-void
.end method

.method public requestSatelliteCapabilities(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    .registers 3
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;

    .line 374
    return-void
.end method

.method public requestSatelliteEnabled(ZZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "enableSatellite"    # Z
    .param p2, "enableDemoMode"    # Z
    .param p3, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 305
    return-void
.end method

.method public requestSatelliteListeningEnabled(ZILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "timeout"    # I
    .param p3, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 270
    return-void
.end method

.method public requestSatelliteModemState(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 572
    return-void
.end method

.method public requestTimeForNextSatelliteVisibility(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 620
    return-void
.end method

.method public sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4
    .param p1, "datagram"    # Landroid/telephony/satellite/stub/SatelliteDatagram;
    .param p2, "isEmergency"    # Z
    .param p3, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 547
    return-void
.end method

.method public setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/satellite/stub/ISatelliteListener;

    .line 246
    return-void
.end method

.method public startSendingSatellitePointingInfo(Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 395
    return-void
.end method

.method public stopSendingSatellitePointingInfo(Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 2
    .param p1, "errorCallback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 415
    return-void
.end method
