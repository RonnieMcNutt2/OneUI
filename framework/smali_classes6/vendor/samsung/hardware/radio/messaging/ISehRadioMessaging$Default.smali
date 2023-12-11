.class public Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Default;
.super Ljava/lang/Object;
.source "ISehRadioMessaging.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;
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

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastConfig(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public getImsRegistrationState(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 139
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getStoredMsgCountFromSim(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public readSmsFromSim(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public sendCdmaSms(ILvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public sendCdmaSmsExpectMore(ILvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehCdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public sendSMSExpectMore(ILvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "message"    # Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public sendSms(ILvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "message"    # Lvendor/samsung/hardware/radio/messaging/SehGsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public setResponseFunctions(Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;)V
    .registers 3
    .param p1, "radioMessagingResponse"    # Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;
    .param p2, "radioMessagingIndication"    # Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public writeSmsToSim(ILvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "arg"    # Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method
