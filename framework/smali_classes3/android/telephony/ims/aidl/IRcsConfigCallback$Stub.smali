.class public abstract Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;
.super Landroid/os/Binder;
.source "IRcsConfigCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IRcsConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IRcsConfigCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAutoConfigurationErrorReceived:I = 0x2

.field static final TRANSACTION_onConfigurationChanged:I = 0x1

.field static final TRANSACTION_onConfigurationReset:I = 0x3

.field static final TRANSACTION_onPreProvisioningReceived:I = 0x5

.field static final TRANSACTION_onRemoved:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_1a

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string/jumbo v0, "onPreProvisioningReceived"

    return-object v0

    .line 80
    :pswitch_9
    const-string/jumbo v0, "onRemoved"

    return-object v0

    .line 76
    :pswitch_d
    const-string/jumbo v0, "onConfigurationReset"

    return-object v0

    .line 72
    :pswitch_11
    const-string/jumbo v0, "onAutoConfigurationErrorReceived"

    return-object v0

    .line 68
    :pswitch_15
    const-string/jumbo v0, "onConfigurationChanged"

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

    .line 59
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 239
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    packed-switch p1, :pswitch_data_4a

    .line 111
    packed-switch p1, :pswitch_data_50

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 144
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 145
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onPreProvisioningReceived([B)V

    .line 147
    goto :goto_49

    .line 138
    .end local v2    # "_arg0":[B
    :pswitch_27
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onRemoved()V

    .line 139
    goto :goto_49

    .line 133
    :pswitch_2b
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onConfigurationReset()V

    .line 134
    goto :goto_49

    .line 124
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V

    .line 129
    goto :goto_49

    .line 116
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 117
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onConfigurationChanged([B)V

    .line 119
    nop

    .line 154
    .end local v2    # "_arg0":[B
    :goto_49
    return v1

    :pswitch_data_4a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
