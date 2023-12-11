.class public Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Default;
.super Ljava/lang/Object;
.source "ISehRadioNetworkIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;
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
.method public acbInfoChanged(I[I)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "acbInfo"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public callDetailsChanged(I[Lvendor/samsung/hardware/radio/network/SehCallDetails;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "callDetails"    # [Lvendor/samsung/hardware/radio/network/SehCallDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public csFallback(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public currentNetworkScanIsRequested(IB)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "mode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public eriInfoReceived(ILvendor/samsung/hardware/radio/network/SehEriInfo;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "eriInfo"    # Lvendor/samsung/hardware/radio/network/SehEriInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public execute(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public extendedRegistrationState(ILvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "state"    # Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
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

.method public imsPreferenceChanged(I[I)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "imsPref"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public needTurnOnRadioIndication(I)V
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

.method public nrBearerAllocationChanged(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public nrIconTypeChanged(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "nrIconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public nrNetworkTypeAdded(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public roamingNetworkScanIsRequested(I[B)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "scanData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public signalLevelInfoChanged(ILvendor/samsung/hardware/radio/network/SehSignalBar;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "signalBarInfo"    # Lvendor/samsung/hardware/radio/network/SehSignalBar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public vendorConfigurationChanged(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "configurations"    # [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method
