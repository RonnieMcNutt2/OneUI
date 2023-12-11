.class public abstract Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;
.super Landroid/os/Binder;
.source "IImsRcsFeature.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRcsFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRcsFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addCapabilityCallback:I = 0x3

.field static final TRANSACTION_changeCapabilitiesConfiguration:I = 0x5

.field static final TRANSACTION_getFeatureState:I = 0x2

.field static final TRANSACTION_publishCapabilities:I = 0x8

.field static final TRANSACTION_queryCapabilityConfiguration:I = 0x6

.field static final TRANSACTION_queryCapabilityStatus:I = 0x1

.field static final TRANSACTION_removeCapabilityCallback:I = 0x4

.field static final TRANSACTION_sendOptionsCapabilityRequest:I = 0xa

.field static final TRANSACTION_setCapabilityExchangeEventListener:I = 0x7

.field static final TRANSACTION_subscribeForCapabilities:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.telephony.ims.aidl.IImsRcsFeature"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRcsFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRcsFeature;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsFeature;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 84
    packed-switch p0, :pswitch_data_2a

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 124
    :pswitch_5
    const-string/jumbo v0, "sendOptionsCapabilityRequest"

    return-object v0

    .line 120
    :pswitch_9
    const-string/jumbo v0, "subscribeForCapabilities"

    return-object v0

    .line 116
    :pswitch_d
    const-string/jumbo v0, "publishCapabilities"

    return-object v0

    .line 112
    :pswitch_11
    const-string/jumbo v0, "setCapabilityExchangeEventListener"

    return-object v0

    .line 108
    :pswitch_15
    const-string/jumbo v0, "queryCapabilityConfiguration"

    return-object v0

    .line 104
    :pswitch_19
    const-string v0, "changeCapabilitiesConfiguration"

    return-object v0

    .line 100
    :pswitch_1c
    const-string/jumbo v0, "removeCapabilityCallback"

    return-object v0

    .line 96
    :pswitch_20
    const-string v0, "addCapabilityCallback"

    return-object v0

    .line 92
    :pswitch_23
    const-string v0, "getFeatureState"

    return-object v0

    .line 88
    :pswitch_26
    const-string/jumbo v0, "queryCapabilityStatus"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_19
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

    .line 79
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 421
    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 135
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.telephony.ims.aidl.IImsRcsFeature"

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
    packed-switch p1, :pswitch_data_d4

    .line 151
    packed-switch p1, :pswitch_data_da

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 147
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 236
    :pswitch_1c
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 238
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 240
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/IOptionsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    move-result-object v4

    .line 241
    .local v4, "_arg2":Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    .line 243
    goto/16 :goto_d3

    .line 226
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    :pswitch_38
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 228
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    move-result-object v3

    .line 229
    .local v3, "_arg1":Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->subscribeForCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    .line 231
    goto/16 :goto_d3

    .line 216
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IPublishResponseCallback;

    move-result-object v3

    .line 219
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IPublishResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    .line 221
    goto/16 :goto_d3

    .line 208
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IPublishResponseCallback;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    move-result-object v2

    .line 209
    .local v2, "_arg0":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V

    .line 211
    goto :goto_d3

    .line 196
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v4

    .line 201
    .local v4, "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 203
    goto :goto_d3

    .line 186
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_88
    sget-object v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 188
    .local v2, "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    .line 189
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 191
    goto :goto_d3

    .line 178
    .end local v2    # "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 179
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 181
    goto :goto_d3

    .line 170
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 171
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 173
    goto :goto_d3

    .line 162
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_bd
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->getFeatureState()I

    move-result v2

    .line 163
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    goto :goto_d3

    .line 155
    .end local v2    # "_result":I
    :pswitch_c8
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->queryCapabilityStatus()I

    move-result v2

    .line 156
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    nop

    .line 250
    .end local v2    # "_result":I
    :goto_d3
    return v1

    :pswitch_data_d4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_bd
        :pswitch_ae
        :pswitch_9f
        :pswitch_88
        :pswitch_71
        :pswitch_62
        :pswitch_4e
        :pswitch_38
        :pswitch_1c
    .end packed-switch
.end method
