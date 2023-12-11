.class public Landroid/hardware/radio/network/IRadioNetworkIndication$Default;
.super Ljava/lang/Object;
.source "IRadioNetworkIndication.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetworkIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetworkIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public barringInfoChanged(ILandroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "cellIdentity"    # Landroid/hardware/radio/network/CellIdentity;
    .param p3, "barringInfos"    # [Landroid/hardware/radio/network/BarringInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public cdmaPrlChanged(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public cellInfoList(I[Landroid/hardware/radio/network/CellInfo;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "records"    # [Landroid/hardware/radio/network/CellInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public currentLinkCapacityEstimate(ILandroid/hardware/radio/network/LinkCapacityEstimate;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "lce"    # Landroid/hardware/radio/network/LinkCapacityEstimate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public currentPhysicalChannelConfigs(I[Landroid/hardware/radio/network/PhysicalChannelConfig;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "configs"    # [Landroid/hardware/radio/network/PhysicalChannelConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public currentSignalStrength(ILandroid/hardware/radio/network/SignalStrength;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "signalStrength"    # Landroid/hardware/radio/network/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public emergencyNetworkScanResult(ILandroid/hardware/radio/network/EmergencyRegResult;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/hardware/radio/network/EmergencyRegResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 69
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public imsNetworkStateChanged(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public networkScanResult(ILandroid/hardware/radio/network/NetworkScanResult;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/hardware/radio/network/NetworkScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public networkStateChanged(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public nitzTimeReceived(ILjava/lang/String;JJ)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "nitzTime"    # Ljava/lang/String;
    .param p3, "receivedTimeMs"    # J
    .param p5, "ageMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public registrationFailed(ILandroid/hardware/radio/network/CellIdentity;Ljava/lang/String;III)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "cellIdentity"    # Landroid/hardware/radio/network/CellIdentity;
    .param p3, "chosenPlmn"    # Ljava/lang/String;
    .param p4, "domain"    # I
    .param p5, "causeCode"    # I
    .param p6, "additionalCauseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public restrictedStateChanged(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public suppSvcNotify(ILandroid/hardware/radio/network/SuppSvcNotification;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "suppSvc"    # Landroid/hardware/radio/network/SuppSvcNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public voiceRadioTechChanged(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "rat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method
