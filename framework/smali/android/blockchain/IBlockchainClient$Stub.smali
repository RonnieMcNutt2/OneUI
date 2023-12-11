.class public abstract Landroid/blockchain/IBlockchainClient$Stub;
.super Landroid/os/Binder;
.source "IBlockchainClient.java"

# interfaces
.implements Landroid/blockchain/IBlockchainClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/blockchain/IBlockchainClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/blockchain/IBlockchainClient$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.blockchain.IBlockchainClient"

    invoke-virtual {p0, p0, v0}, Landroid/blockchain/IBlockchainClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/blockchain/IBlockchainClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_4
    const-string v0, "android.blockchain.IBlockchainClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/blockchain/IBlockchainClient;

    if-eqz v1, :cond_14

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/blockchain/IBlockchainClient;

    return-object v1

    .line 37
    :cond_14
    new-instance v1, Landroid/blockchain/IBlockchainClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/blockchain/IBlockchainClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 46
    nop

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 41
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 57
    invoke-static {p1}, Landroid/blockchain/IBlockchainClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-string v0, "android.blockchain.IBlockchainClient"

    .line 62
    .local v0, "descriptor":Ljava/lang/String;
    packed-switch p1, :pswitch_data_10

    .line 70
    goto :goto_b

    .line 66
    :pswitch_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x1

    return v1

    .line 74
    :goto_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_6
    .end packed-switch
.end method
