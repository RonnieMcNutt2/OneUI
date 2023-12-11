.class public abstract Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;
.super Landroid/os/Binder;
.source "IGameSDKListener.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/IGameSDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/IGameSDKListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/IGameSDKListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onHighTempWarning:I = 0x1

.field static final TRANSACTION_onRefreshRateChanged:I = 0x2

.field static final TRANSACTION_onReleasedByTimeout:I = 0x3

.field static final TRANSACTION_onReleasedCpuBoost:I = 0x4

.field static final TRANSACTION_onReleasedGpuBoost:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "com.samsung.android.gamesdk.IGameSDKListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "com.samsung.android.gamesdk.IGameSDKListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/gamesdk/IGameSDKListener;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/gamesdk/IGameSDKListener;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_1a

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 106
    :pswitch_5
    const-string/jumbo v0, "onReleasedGpuBoost"

    return-object v0

    .line 102
    :pswitch_9
    const-string/jumbo v0, "onReleasedCpuBoost"

    return-object v0

    .line 98
    :pswitch_d
    const-string/jumbo v0, "onReleasedByTimeout"

    return-object v0

    .line 94
    :pswitch_11
    const-string/jumbo v0, "onRefreshRateChanged"

    return-object v0

    .line 90
    :pswitch_15
    const-string/jumbo v0, "onHighTempWarning"

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

    .line 81
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 275
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 117
    invoke-static {p1}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 121
    const-string v0, "com.samsung.android.gamesdk.IGameSDKListener"

    .line 122
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_d
    packed-switch p1, :pswitch_data_38

    .line 133
    packed-switch p1, :pswitch_data_3e

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 160
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->onReleasedGpuBoost()V

    .line 161
    goto :goto_37

    .line 155
    :pswitch_20
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->onReleasedCpuBoost()V

    .line 156
    goto :goto_37

    .line 150
    :pswitch_24
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->onReleasedByTimeout()V

    .line 151
    goto :goto_37

    .line 145
    :pswitch_28
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->onRefreshRateChanged()V

    .line 146
    goto :goto_37

    .line 138
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->onHighTempWarning(I)V

    .line 141
    nop

    .line 168
    .end local v2    # "_arg0":I
    :goto_37
    return v1

    :pswitch_data_38
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
