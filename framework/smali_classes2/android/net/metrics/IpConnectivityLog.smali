.class public Landroid/net/metrics/IpConnectivityLog;
.super Ljava/lang/Object;
.source "IpConnectivityLog.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpConnectivityLog$Event;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Landroid/net/IIpConnectivityMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/net/IIpConnectivityMetrics;)V
    .registers 2
    .param p1, "service"    # Landroid/net/IIpConnectivityMetrics;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    .line 67
    return-void
.end method

.method private checkLoggerService()Z
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 71
    return v1

    .line 73
    :cond_6
    nop

    .line 74
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 75
    .local v0, "service":Landroid/net/IIpConnectivityMetrics;
    if-nez v0, :cond_15

    .line 79
    const/4 v1, 0x0

    return v1

    .line 83
    :cond_15
    iput-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    .line 84
    return v1
.end method

.method private static makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;
    .registers 2
    .param p0, "data"    # Landroid/net/metrics/IpConnectivityLog$Event;

    .line 222
    new-instance v0, Landroid/net/ConnectivityMetricsEvent;

    invoke-direct {v0}, Landroid/net/ConnectivityMetricsEvent;-><init>()V

    .line 223
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    iput-object p0, v0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    .line 224
    return-object v0
.end method


# virtual methods
.method public log(I[ILandroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 7
    .param p1, "netid"    # I
    .param p2, "transports"    # [I
    .param p3, "data"    # Landroid/net/metrics/IpConnectivityLog$Event;

    .line 156
    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    .line 157
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    iput p1, v0, Landroid/net/ConnectivityMetricsEvent;->netId:I

    .line 158
    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/ConnectivityMetricsEvent;->transports:J

    .line 159
    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method

.method public log(JLandroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 6
    .param p1, "timestamp"    # J
    .param p3, "data"    # Landroid/net/metrics/IpConnectivityLog$Event;

    .line 118
    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    .line 119
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    iput-wide p1, v0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    .line 120
    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method

.method public log(Landroid/net/ConnectivityMetricsEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/net/ConnectivityMetricsEvent;

    .line 95
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 96
    return v1

    .line 98
    :cond_8
    iget-wide v2, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    .line 102
    :cond_16
    :try_start_16
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v0, p1}, Landroid/net/IIpConnectivityMetrics;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_20

    .line 103
    .local v0, "left":I
    if-ltz v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 104
    .end local v0    # "left":I
    :catch_20
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    const-string v3, "Error logging event"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return v1
.end method

.method public log(Landroid/net/Network;[ILandroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "transports"    # [I
    .param p3, "data"    # Landroid/net/metrics/IpConnectivityLog$Event;

    .line 144
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/net/metrics/IpConnectivityLog$Event;)Z

    move-result v0

    return v0
.end method

.method public log(Landroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 3
    .param p1, "data"    # Landroid/net/metrics/IpConnectivityLog$Event;

    .line 168
    invoke-static {p1}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;Landroid/net/metrics/IpConnectivityLog$Event;)Z
    .registers 5
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/metrics/IpConnectivityLog$Event;

    .line 130
    invoke-static {p2}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/net/metrics/IpConnectivityLog$Event;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    .line 131
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    iput-object p1, v0, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method

.method public logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)Z
    .registers 22
    .param p1, "defaultNetwork"    # Landroid/net/Network;
    .param p2, "score"    # I
    .param p3, "validated"    # Z
    .param p4, "lp"    # Landroid/net/LinkProperties;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "previousDefaultNetwork"    # Landroid/net/Network;
    .param p7, "previousScore"    # I
    .param p8, "previousLp"    # Landroid/net/LinkProperties;
    .param p9, "previousNc"    # Landroid/net/NetworkCapabilities;

    .line 209
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_8
    move-object v1, p0

    :try_start_9
    iget-object v2, v1, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/net/IIpConnectivityMetrics;->logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 217
    goto :goto_1f

    .line 215
    :catch_1e
    move-exception v0

    .line 218
    :goto_1f
    const/4 v0, 0x1

    return v0
.end method

.method public logDefaultNetworkValidity(Z)Z
    .registers 3
    .param p1, "valid"    # Z

    .line 179
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 180
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v0, p1}, Landroid/net/IIpConnectivityMetrics;->logDefaultNetworkValidity(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 186
    goto :goto_f

    .line 184
    :catch_e
    move-exception v0

    .line 187
    :goto_f
    const/4 v0, 0x1

    return v0
.end method
