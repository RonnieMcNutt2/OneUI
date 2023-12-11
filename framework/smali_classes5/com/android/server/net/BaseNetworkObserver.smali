.class public Lcom/android/server/net/BaseNetworkObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "BaseNetworkObserver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 54
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 49
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 64
    return-void
.end method

.method public interfaceClassDataActivityChanged(IZJI)V
    .registers 6
    .param p1, "transportType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I

    .line 70
    return-void
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "servers"    # [Ljava/lang/String;

    .line 80
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 59
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 44
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 39
    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .line 75
    return-void
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .registers 2
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 90
    return-void
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .registers 2
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 85
    return-void
.end method
