.class public abstract Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;
.super Landroid/os/Binder;
.source "ISubscribeResponseCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISubscribeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCommandError:I = 0x1

.field static final TRANSACTION_onNetworkResponse:I = 0x2

.field static final TRANSACTION_onNotifyCapabilitiesUpdate:I = 0x3

.field static final TRANSACTION_onResourceTerminated:I = 0x4

.field static final TRANSACTION_onTerminated:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_1a

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string/jumbo v0, "onTerminated"

    return-object v0

    .line 81
    :pswitch_9
    const-string/jumbo v0, "onResourceTerminated"

    return-object v0

    .line 77
    :pswitch_d
    const-string/jumbo v0, "onNotifyCapabilitiesUpdate"

    return-object v0

    .line 73
    :pswitch_11
    const-string/jumbo v0, "onNetworkResponse"

    return-object v0

    .line 69
    :pswitch_15
    const-string/jumbo v0, "onCommandError"

    return-object v0

    nop

    :pswitch_data_1a
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

    .line 60
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 248
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    packed-switch p1, :pswitch_data_5e

    .line 112
    packed-switch p1, :pswitch_data_64

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 149
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 152
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onTerminated(Ljava/lang/String;J)V

    .line 154
    goto :goto_5d

    .line 141
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_2b
    sget-object v2, Landroid/telephony/ims/RcsContactTerminatedReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 142
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onResourceTerminated(Ljava/util/List;)V

    .line 144
    goto :goto_5d

    .line 133
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 134
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V

    .line 136
    goto :goto_5d

    .line 125
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_43
    sget-object v2, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/SipDetails;

    .line 126
    .local v2, "_arg0":Landroid/telephony/ims/SipDetails;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V

    .line 128
    goto :goto_5d

    .line 117
    .end local v2    # "_arg0":Landroid/telephony/ims/SipDetails;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onCommandError(I)V

    .line 120
    nop

    .line 161
    .end local v2    # "_arg0":I
    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_52
        :pswitch_43
        :pswitch_38
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
