.class public abstract Landroid/security/rkp/IGetKeyCallback$Stub;
.super Landroid/os/Binder;
.source "IGetKeyCallback.java"

# interfaces
.implements Landroid/security/rkp/IGetKeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IGetKeyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IGetKeyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCancel:I = 0x2

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.security.rkp.IGetKeyCallback"

    invoke-virtual {p0, p0, v0}, Landroid/security/rkp/IGetKeyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetKeyCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.security.rkp.IGetKeyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/rkp/IGetKeyCallback;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/security/rkp/IGetKeyCallback;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/security/rkp/IGetKeyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/rkp/IGetKeyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_12

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_5
    const-string/jumbo v0, "onError"

    return-object v0

    .line 84
    :pswitch_9
    const-string/jumbo v0, "onCancel"

    return-object v0

    .line 80
    :pswitch_d
    const-string/jumbo v0, "onSuccess"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 221
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 99
    invoke-static {p1}, Landroid/security/rkp/IGetKeyCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 103
    const-string v0, "android.security.rkp.IGetKeyCallback"

    .line 104
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_d
    packed-switch p1, :pswitch_data_40

    .line 115
    packed-switch p1, :pswitch_data_46

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 133
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 135
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3}, Landroid/security/rkp/IGetKeyCallback$Stub;->onError(BLjava/lang/String;)V

    .line 138
    goto :goto_3e

    .line 127
    .end local v2    # "_arg0":B
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual {p0}, Landroid/security/rkp/IGetKeyCallback$Stub;->onCancel()V

    .line 128
    goto :goto_3e

    .line 120
    :pswitch_2f
    sget-object v2, Landroid/security/rkp/RemotelyProvisionedKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/rkp/RemotelyProvisionedKey;

    .line 121
    .local v2, "_arg0":Landroid/security/rkp/RemotelyProvisionedKey;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/security/rkp/IGetKeyCallback$Stub;->onSuccess(Landroid/security/rkp/RemotelyProvisionedKey;)V

    .line 123
    nop

    .line 145
    .end local v2    # "_arg0":Landroid/security/rkp/RemotelyProvisionedKey;
    :goto_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
