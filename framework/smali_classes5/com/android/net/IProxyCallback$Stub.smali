.class public abstract Lcom/android/net/IProxyCallback$Stub;
.super Landroid/os/Binder;
.source "IProxyCallback.java"

# interfaces
.implements Lcom/android/net/IProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/IProxyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/IProxyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearProxyServerCache:I = 0x2

.field static final TRANSACTION_getProxyPort:I = 0x1

.field static final TRANSACTION_onCredentialsReceived:I = 0x3

.field static final TRANSACTION_setEnterpriseProxy:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.android.net.IProxyCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/net/IProxyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "com.android.net.IProxyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/net/IProxyCallback;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/android/net/IProxyCallback;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Lcom/android/net/IProxyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/net/IProxyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_14

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_5
    const-string/jumbo v0, "setEnterpriseProxy"

    return-object v0

    .line 72
    :pswitch_9
    const-string/jumbo v0, "onCredentialsReceived"

    return-object v0

    .line 68
    :pswitch_d
    const-string v0, "clearProxyServerCache"

    return-object v0

    .line 64
    :pswitch_10
    const-string/jumbo v0, "getProxyPort"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 219
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Lcom/android/net/IProxyCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    const-string v0, "com.android.net.IProxyCallback"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_d
    packed-switch p1, :pswitch_data_52

    .line 103
    packed-switch p1, :pswitch_data_58

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 99
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 132
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 133
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/net/IProxyCallback$Stub;->setEnterpriseProxy(Z)V

    .line 135
    goto :goto_50

    .line 121
    .end local v2    # "_arg0":Z
    :pswitch_27
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 123
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/enterprise/proxy/IProxyCredentialsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    move-result-object v3

    .line 124
    .local v3, "_arg1":Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3}, Lcom/android/net/IProxyCallback$Stub;->onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_50

    .line 115
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    :pswitch_41
    invoke-virtual {p0}, Lcom/android/net/IProxyCallback$Stub;->clearProxyServerCache()V

    .line 116
    goto :goto_50

    .line 108
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/net/IProxyCallback$Stub;->getProxyPort(Landroid/os/IBinder;)V

    .line 111
    nop

    .line 142
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_50
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_45
        :pswitch_41
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
