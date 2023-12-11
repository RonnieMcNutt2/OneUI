.class public abstract Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.super Landroid/os/Binder;
.source "INfcLedCoverTouchListenerCallback.java"

# interfaces
.implements Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCoverTapLeft:I = 0x3

.field static final TRANSACTION_onCoverTapMid:I = 0x4

.field static final TRANSACTION_onCoverTapRight:I = 0x5

.field static final TRANSACTION_onCoverTouchAccept:I = 0x1

.field static final TRANSACTION_onCoverTouchReject:I = 0x2

.field static final TRANSACTION_onSystemCoverEvent:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.samsung.android.cover.INfcLedCoverTouchListenerCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.samsung.android.cover.INfcLedCoverTouchListenerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_1e

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_5
    const-string/jumbo v0, "onSystemCoverEvent"

    return-object v0

    .line 84
    :pswitch_9
    const-string/jumbo v0, "onCoverTapRight"

    return-object v0

    .line 80
    :pswitch_d
    const-string/jumbo v0, "onCoverTapMid"

    return-object v0

    .line 76
    :pswitch_11
    const-string/jumbo v0, "onCoverTapLeft"

    return-object v0

    .line 72
    :pswitch_15
    const-string/jumbo v0, "onCoverTouchReject"

    return-object v0

    .line 68
    :pswitch_19
    const-string/jumbo v0, "onCoverTouchAccept"

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

    .line 59
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 276
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 99
    invoke-static {p1}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "com.samsung.android.cover.INfcLedCoverTouchListenerCallback"

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
    packed-switch p1, :pswitch_data_56

    .line 115
    packed-switch p1, :pswitch_data_5c

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 150
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 153
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_55

    .line 143
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_32
    invoke-virtual {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->onCoverTapRight()V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_55

    .line 137
    :pswitch_39
    invoke-virtual {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->onCoverTapMid()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_55

    .line 131
    :pswitch_40
    invoke-virtual {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->onCoverTapLeft()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_55

    .line 125
    :pswitch_47
    invoke-virtual {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->onCoverTouchReject()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_55

    .line 119
    :pswitch_4e
    invoke-virtual {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->onCoverTouchAccept()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    nop

    .line 163
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
