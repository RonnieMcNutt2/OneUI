.class public abstract Landroid/security/rkp/IRemoteProvisioning$Stub;
.super Landroid/os/Binder;
.source "IRemoteProvisioning.java"

# interfaces
.implements Landroid/security/rkp/IRemoteProvisioning;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IRemoteProvisioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IRemoteProvisioning$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getRegistration:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.security.rkp.IRemoteProvisioning"

    invoke-virtual {p0, p0, v0}, Landroid/security/rkp/IRemoteProvisioning$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IRemoteProvisioning;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    const-string v0, "android.security.rkp.IRemoteProvisioning"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/rkp/IRemoteProvisioning;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/security/rkp/IRemoteProvisioning;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/security/rkp/IRemoteProvisioning$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/rkp/IRemoteProvisioning$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 84
    packed-switch p0, :pswitch_data_a

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_5
    const-string/jumbo v0, "getRegistration"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
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

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 99
    invoke-static {p1}, Landroid/security/rkp/IRemoteProvisioning$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.security.rkp.IRemoteProvisioning"

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
    packed-switch p1, :pswitch_data_30

    .line 115
    packed-switch p1, :pswitch_data_36

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 120
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/security/rkp/IGetRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetRegistrationCallback;

    move-result-object v3

    .line 123
    .local v3, "_arg1":Landroid/security/rkp/IGetRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3}, Landroid/security/rkp/IRemoteProvisioning$Stub;->getRegistration(Ljava/lang/String;Landroid/security/rkp/IGetRegistrationCallback;)V

    .line 125
    nop

    .line 132
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/security/rkp/IGetRegistrationCallback;
    return v1

    :pswitch_data_30
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
