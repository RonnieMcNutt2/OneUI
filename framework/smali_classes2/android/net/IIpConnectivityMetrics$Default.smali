.class public Landroid/net/IIpConnectivityMetrics$Default;
.super Ljava/lang/Object;
.source "IIpConnectivityMetrics.java"

# interfaces
.implements Landroid/net/IIpConnectivityMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 4
    .param p1, "callerType"    # I
    .param p2, "callback"    # Landroid/net/INetdEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 10
    .param p1, "defaultNetwork"    # Landroid/net/Network;
    .param p2, "score"    # I
    .param p3, "validated"    # Z
    .param p4, "lp"    # Landroid/net/LinkProperties;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "previousDefaultNetwork"    # Landroid/net/Network;
    .param p7, "previousScore"    # I
    .param p8, "previousLp"    # Landroid/net/LinkProperties;
    .param p9, "previousNc"    # Landroid/net/NetworkCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public logDefaultNetworkValidity(Z)V
    .registers 2
    .param p1, "valid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public removeNetdEventCallback(I)Z
    .registers 3
    .param p1, "callerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method
