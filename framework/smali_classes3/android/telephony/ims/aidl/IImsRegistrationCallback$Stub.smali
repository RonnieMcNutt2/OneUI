.class public abstract Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.super Landroid/os/Binder;
.source "IImsRegistrationCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeregistered:I = 0x3

.field static final TRANSACTION_onDeregisteredWithDetails:I = 0x4

.field static final TRANSACTION_onRegistered:I = 0x1

.field static final TRANSACTION_onRegistering:I = 0x2

.field static final TRANSACTION_onSubscriberAssociatedUriChanged:I = 0x6

.field static final TRANSACTION_onTechnologyChangeFailed:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_1e

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string/jumbo v0, "onSubscriberAssociatedUriChanged"

    return-object v0

    .line 88
    :pswitch_9
    const-string/jumbo v0, "onTechnologyChangeFailed"

    return-object v0

    .line 84
    :pswitch_d
    const-string/jumbo v0, "onDeregisteredWithDetails"

    return-object v0

    .line 80
    :pswitch_11
    const-string/jumbo v0, "onDeregistered"

    return-object v0

    .line 76
    :pswitch_15
    const-string/jumbo v0, "onRegistering"

    return-object v0

    .line 72
    :pswitch_19
    const-string/jumbo v0, "onRegistered"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 63
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 291
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    packed-switch p1, :pswitch_data_94

    .line 119
    packed-switch p1, :pswitch_data_9a

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 176
    :pswitch_1c
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 177
    .local v2, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 179
    goto :goto_92

    .line 166
    .end local v2    # "_arg0":[Landroid/net/Uri;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 169
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 171
    goto :goto_92

    .line 152
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_3e
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 154
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    .local v4, "_arg2":I
    sget-object v5, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/SipDetails;

    .line 159
    .local v5, "_arg3":Landroid/telephony/ims/SipDetails;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V

    .line 161
    goto :goto_92

    .line 140
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telephony/ims/SipDetails;
    :pswitch_5d
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 142
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 147
    goto :goto_92

    .line 132
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_74
    sget-object v2, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 133
    .local v2, "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 135
    goto :goto_92

    .line 124
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    :pswitch_83
    sget-object v2, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 125
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 127
    nop

    .line 186
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    :goto_92
    return v1

    nop

    :pswitch_data_94
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_83
        :pswitch_74
        :pswitch_5d
        :pswitch_3e
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
