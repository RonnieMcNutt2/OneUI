.class public abstract Landroid/net/wifi/nl80211/IClientInterface$Stub;
.super Landroid/os/Binder;
.source "IClientInterface.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IClientInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IClientInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_SendMgmtFrame:I = 0x6

.field static final TRANSACTION_getInterfaceName:I = 0x4

.field static final TRANSACTION_getMacAddress:I = 0x3

.field static final TRANSACTION_getPacketCounters:I = 0x1

.field static final TRANSACTION_getWifiScannerImpl:I = 0x5

.field static final TRANSACTION_signalPoll:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IClientInterface;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IClientInterface;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 100
    packed-switch p0, :pswitch_data_1c

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 124
    :pswitch_5
    const-string v0, "SendMgmtFrame"

    return-object v0

    .line 120
    :pswitch_8
    const-string/jumbo v0, "getWifiScannerImpl"

    return-object v0

    .line 116
    :pswitch_c
    const-string v0, "getInterfaceName"

    return-object v0

    .line 112
    :pswitch_f
    const-string/jumbo v0, "getMacAddress"

    return-object v0

    .line 108
    :pswitch_13
    const-string/jumbo v0, "signalPoll"

    return-object v0

    .line 104
    :pswitch_17
    const-string/jumbo v0, "getPacketCounters"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 358
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 135
    invoke-static {p1}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    .line 140
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_d
    packed-switch p1, :pswitch_data_6c

    .line 151
    packed-switch p1, :pswitch_data_72

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 147
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 191
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 193
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->SendMgmtFrame([BLandroid/net/wifi/nl80211/ISendMgmtFrameEvent;I)V

    .line 198
    goto :goto_6a

    .line 183
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;
    .end local v4    # "_arg2":I
    :pswitch_33
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getWifiScannerImpl()Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v2

    .line 184
    .local v2, "_result":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 186
    goto :goto_6a

    .line 176
    .end local v2    # "_result":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    :pswitch_3e
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    goto :goto_6a

    .line 169
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_49
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getMacAddress()[B

    move-result-object v2

    .line 170
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 172
    goto :goto_6a

    .line 162
    .end local v2    # "_result":[B
    :pswitch_54
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->signalPoll()[I

    move-result-object v2

    .line 163
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 165
    goto :goto_6a

    .line 155
    .end local v2    # "_result":[I
    :pswitch_5f
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getPacketCounters()[I

    move-result-object v2

    .line 156
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 158
    nop

    .line 205
    .end local v2    # "_result":[I
    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_54
        :pswitch_49
        :pswitch_3e
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
