.class public abstract Landroid/security/identity/IWritableCredential$Stub;
.super Landroid/os/Binder;
.source "IWritableCredential.java"

# interfaces
.implements Landroid/security/identity/IWritableCredential;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/IWritableCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/IWritableCredential$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCredentialKeyCertificateChain:I = 0x1

.field static final TRANSACTION_personalize:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "android.security.identity.IWritableCredential"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/IWritableCredential$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/identity/IWritableCredential;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    const-string v0, "android.security.identity.IWritableCredential"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/identity/IWritableCredential;

    if-eqz v1, :cond_14

    .line 43
    move-object v1, v0

    check-cast v1, Landroid/security/identity/IWritableCredential;

    return-object v1

    .line 45
    :cond_14
    new-instance v1, Landroid/security/identity/IWritableCredential$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/identity/IWritableCredential$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 54
    packed-switch p0, :pswitch_data_c

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 62
    :pswitch_5
    const-string/jumbo v0, "personalize"

    return-object v0

    .line 58
    :pswitch_9
    const-string v0, "getCredentialKeyCertificateChain"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 73
    invoke-static {p1}, Landroid/security/identity/IWritableCredential$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 77
    const-string v0, "android.security.identity.IWritableCredential"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_d
    packed-switch p1, :pswitch_data_52

    .line 89
    packed-switch p1, :pswitch_data_58

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 104
    :pswitch_1c
    sget-object v2, Landroid/security/identity/AccessControlProfileParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/security/identity/AccessControlProfileParcel;

    .line 106
    .local v2, "_arg0":[Landroid/security/identity/AccessControlProfileParcel;
    sget-object v3, Landroid/security/identity/EntryNamespaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/security/identity/EntryNamespaceParcel;

    .line 108
    .local v3, "_arg1":[Landroid/security/identity/EntryNamespaceParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 109
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/security/identity/IWritableCredential$Stub;->personalize([Landroid/security/identity/AccessControlProfileParcel;[Landroid/security/identity/EntryNamespaceParcel;J)[B

    move-result-object v6

    .line 111
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 113
    goto :goto_50

    .line 94
    .end local v2    # "_arg0":[Landroid/security/identity/AccessControlProfileParcel;
    .end local v3    # "_arg1":[Landroid/security/identity/EntryNamespaceParcel;
    .end local v4    # "_arg2":J
    .end local v6    # "_result":[B
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 95
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v2}, Landroid/security/identity/IWritableCredential$Stub;->getCredentialKeyCertificateChain([B)[B

    move-result-object v3

    .line 97
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    nop

    .line 120
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :goto_50
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_1c
    .end packed-switch
.end method
