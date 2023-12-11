.class public abstract Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;
.super Landroid/os/Binder;
.source "ICapabilityExchangeEventListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onPublishUpdated:I = 0x3

.field static final TRANSACTION_onRemoteCapabilityRequest:I = 0x4

.field static final TRANSACTION_onRequestPublishCapabilities:I = 0x1

.field static final TRANSACTION_onUnpublish:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.telephony.ims.aidl.ICapabilityExchangeEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ICapabilityExchangeEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_16

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string/jumbo v0, "onRemoteCapabilityRequest"

    return-object v0

    .line 76
    :pswitch_9
    const-string/jumbo v0, "onPublishUpdated"

    return-object v0

    .line 72
    :pswitch_d
    const-string/jumbo v0, "onUnpublish"

    return-object v0

    .line 68
    :pswitch_11
    const-string/jumbo v0, "onRequestPublishCapabilities"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 221
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    const-string v0, "android.telephony.ims.aidl.ICapabilityExchangeEventListener"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    packed-switch p1, :pswitch_data_56

    .line 107
    packed-switch p1, :pswitch_data_5c

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 133
    :pswitch_1c
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 135
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 137
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    move-result-object v4

    .line 138
    .local v4, "_arg2":Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V

    .line 140
    goto :goto_55

    .line 125
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    :pswitch_37
    sget-object v2, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/SipDetails;

    .line 126
    .local v2, "_arg0":Landroid/telephony/ims/SipDetails;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V

    .line 128
    goto :goto_55

    .line 119
    .end local v2    # "_arg0":Landroid/telephony/ims/SipDetails;
    :pswitch_46
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->onUnpublish()V

    .line 120
    goto :goto_55

    .line 112
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->onRequestPublishCapabilities(I)V

    .line 115
    nop

    .line 147
    .end local v2    # "_arg0":I
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_46
        :pswitch_37
        :pswitch_1c
    .end packed-switch
.end method
