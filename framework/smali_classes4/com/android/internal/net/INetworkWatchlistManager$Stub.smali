.class public abstract Lcom/android/internal/net/INetworkWatchlistManager$Stub;
.super Landroid/os/Binder;
.source "INetworkWatchlistManager.java"

# interfaces
.implements Lcom/android/internal/net/INetworkWatchlistManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/INetworkWatchlistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.net.INetworkWatchlistManager"

.field static final TRANSACTION_getWatchlistConfigHash:I = 0x5

.field static final TRANSACTION_reloadWatchlist:I = 0x3

.field static final TRANSACTION_reportWatchlistIfNecessary:I = 0x4

.field static final TRANSACTION_startWatchlistLogging:I = 0x1

.field static final TRANSACTION_stopWatchlistLogging:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/net/INetworkWatchlistManager;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/INetworkWatchlistManager;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_18

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "getWatchlistConfigHash"

    return-object v0

    .line 80
    :pswitch_8
    const-string/jumbo v0, "reportWatchlistIfNecessary"

    return-object v0

    .line 76
    :pswitch_c
    const-string/jumbo v0, "reloadWatchlist"

    return-object v0

    .line 72
    :pswitch_10
    const-string/jumbo v0, "stopWatchlistLogging"

    return-object v0

    .line 68
    :pswitch_14
    const-string/jumbo v0, "startWatchlistLogging"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
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

    .line 257
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const-string v0, "com.android.internal.net.INetworkWatchlistManager"

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
    packed-switch p1, :pswitch_data_4c

    .line 111
    packed-switch p1, :pswitch_data_52

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 141
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->getWatchlistConfigHash()[B

    move-result-object v2

    .line 142
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 144
    goto :goto_4b

    .line 135
    .end local v2    # "_result":[B
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->reportWatchlistIfNecessary()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_4b

    .line 129
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->reloadWatchlist()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_4b

    .line 122
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->stopWatchlistLogging()Z

    move-result v2

    .line 123
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 125
    goto :goto_4b

    .line 115
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->startWatchlistLogging()Z

    move-result v2

    .line 116
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    nop

    .line 151
    .end local v2    # "_result":Z
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_40
        :pswitch_35
        :pswitch_2e
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
