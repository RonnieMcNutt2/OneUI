.class public abstract Landroid/telephony/INetworkService$Stub;
.super Landroid/os/Binder;
.source "INetworkService.java"

# interfaces
.implements Landroid/telephony/INetworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/INetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/INetworkService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.INetworkService"

.field static final TRANSACTION_createNetworkServiceProvider:I = 0x1

.field static final TRANSACTION_registerForNetworkRegistrationInfoChanged:I = 0x4

.field static final TRANSACTION_removeNetworkServiceProvider:I = 0x2

.field static final TRANSACTION_requestNetworkRegistrationInfo:I = 0x3

.field static final TRANSACTION_unregisterForNetworkRegistrationInfoChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.telephony.INetworkService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/INetworkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.telephony.INetworkService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/INetworkService;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/telephony/INetworkService;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/telephony/INetworkService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/INetworkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_18

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string/jumbo v0, "unregisterForNetworkRegistrationInfoChanged"

    return-object v0

    .line 77
    :pswitch_9
    const-string/jumbo v0, "registerForNetworkRegistrationInfoChanged"

    return-object v0

    .line 73
    :pswitch_d
    const-string/jumbo v0, "requestNetworkRegistrationInfo"

    return-object v0

    .line 69
    :pswitch_11
    const-string/jumbo v0, "removeNetworkServiceProvider"

    return-object v0

    .line 65
    :pswitch_15
    const-string v0, "createNetworkServiceProvider"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 254
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/telephony/INetworkService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "android.telephony.INetworkService"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    packed-switch p1, :pswitch_data_70

    .line 108
    packed-switch p1, :pswitch_data_76

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 151
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object v3

    .line 154
    .local v3, "_arg1":Landroid/telephony/INetworkServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/telephony/INetworkService$Stub;->unregisterForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V

    .line 156
    goto :goto_6f

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/INetworkServiceCallback;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object v3

    .line 144
    .restart local v3    # "_arg1":Landroid/telephony/INetworkServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/telephony/INetworkService$Stub;->registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V

    .line 146
    goto :goto_6f

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/INetworkServiceCallback;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/INetworkServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkServiceCallback;

    move-result-object v4

    .line 134
    .local v4, "_arg2":Landroid/telephony/INetworkServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/INetworkService$Stub;->requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V

    .line 136
    goto :goto_6f

    .line 121
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/INetworkServiceCallback;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Landroid/telephony/INetworkService$Stub;->removeNetworkServiceProvider(I)V

    .line 124
    goto :goto_6f

    .line 113
    .end local v2    # "_arg0":I
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Landroid/telephony/INetworkService$Stub;->createNetworkServiceProvider(I)V

    .line 116
    nop

    .line 163
    .end local v2    # "_arg0":I
    :goto_6f
    return v1

    :pswitch_data_70
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_64
        :pswitch_59
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
