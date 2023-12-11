.class public abstract Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;
.super Landroid/os/Binder;
.source "ISemKeyStoreService.java"

# interfaces
.implements Lcom/samsung/android/knox/util/ISemKeyStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/util/ISemKeyStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getKeystoreStatus:I = 0x5

.field static final TRANSACTION_grantAccessForAKS:I = 0x3

.field static final TRANSACTION_installCACert:I = 0x4

.field static final TRANSACTION_installCertificateInAndroidKeyStore:I = 0x2

.field static final TRANSACTION_isAliasExists:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/util/ISemKeyStoreService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "com.samsung.android.knox.util.ISemKeyStoreService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/util/ISemKeyStoreService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/util/ISemKeyStoreService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_1a

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_5
    const-string/jumbo v0, "getKeystoreStatus"

    return-object v0

    .line 84
    :pswitch_9
    const-string/jumbo v0, "installCACert"

    return-object v0

    .line 80
    :pswitch_d
    const-string/jumbo v0, "grantAccessForAKS"

    return-object v0

    .line 76
    :pswitch_11
    const-string/jumbo v0, "installCertificateInAndroidKeyStore"

    return-object v0

    .line 72
    :pswitch_15
    const-string/jumbo v0, "isAliasExists"

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

    .line 63
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 292
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 99
    invoke-static {p1}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const-string v0, "com.samsung.android.knox.util.ISemKeyStoreService"

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
    packed-switch p1, :pswitch_data_84

    .line 115
    packed-switch p1, :pswitch_data_8a

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 166
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->getKeystoreStatus()I

    move-result v2

    .line 167
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_83

    .line 157
    .end local v2    # "_result":I
    :pswitch_27
    sget-object v2, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;

    .line 158
    .local v2, "_arg0":Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I

    move-result v3

    .line 160
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    goto :goto_83

    .line 146
    .end local v2    # "_arg0":Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;
    .end local v3    # "_result":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->grantAccessForAKS(ILjava/lang/String;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_83

    .line 130
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4f
    sget-object v2, Lcom/samsung/android/knox/util/SemCertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/util/SemCertByte;

    .line 132
    .local v2, "_arg0":Lcom/samsung/android/knox/util/SemCertByte;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v4

    .line 136
    .local v4, "_arg2":[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 137
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CI)I

    move-result v6

    .line 139
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_83

    .line 120
    .end local v2    # "_arg0":Lcom/samsung/android/knox/util/SemCertByte;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[C
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;->isAliasExists(Ljava/lang/String;)I

    move-result v3

    .line 123
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    nop

    .line 176
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :goto_83
    return v1

    :pswitch_data_84
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_4f
        :pswitch_3d
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
