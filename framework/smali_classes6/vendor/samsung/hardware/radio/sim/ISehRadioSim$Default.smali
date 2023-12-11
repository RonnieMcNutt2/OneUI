.class public Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Default;
.super Ljava/lang/Object;
.source "ISehRadioSim.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/sim/ISehRadioSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/sim/ISehRadioSim;
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
.method public accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/sim/SehAdnRecord;Ljava/lang/String;)V
    .registers 7
    .param p1, "serial"    # I
    .param p2, "command"    # I
    .param p3, "fileId"    # I
    .param p4, "index"    # I
    .param p5, "adnRecord"    # Lvendor/samsung/hardware/radio/sim/SehAdnRecord;
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "oldPass"    # Ljava/lang/String;
    .param p3, "newPass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public getAtr(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public getIccCardStatus(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getPhonebookEntry(III)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "fileId"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public getPhonebookStorageInfo(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "fileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public getSimLockInfo(III)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "numOfLockType"    # I
    .param p3, "lockType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public getUsimPhonebookCapability(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public setResponseFunctions(Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;)V
    .registers 3
    .param p1, "radioResponse"    # Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;
    .param p2, "radioIndication"    # Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public setSimInitEvent(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public setSimOnOff(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public supplyIccPersonalization(ILjava/lang/String;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public supplyNetworkDepersonalization(ILjava/lang/String;I)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "netPin"    # Ljava/lang/String;
    .param p3, "subState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
