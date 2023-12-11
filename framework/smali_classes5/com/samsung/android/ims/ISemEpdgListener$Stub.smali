.class public abstract Lcom/samsung/android/ims/ISemEpdgListener$Stub;
.super Landroid/os/Binder;
.source "ISemEpdgListener.java"

# interfaces
.implements Lcom/samsung/android/ims/ISemEpdgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/ISemEpdgListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onEpdgAvailable:I = 0x1

.field static final TRANSACTION_onEpdgShowPopup:I = 0x5

.field static final TRANSACTION_onHandoverResult:I = 0x2

.field static final TRANSACTION_onIpsecConnection:I = 0x3

.field static final TRANSACTION_onIpsecDisconnection:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.ims.ISemEpdgListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/ISemEpdgListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.samsung.android.ims.ISemEpdgListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/ims/ISemEpdgListener;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/ISemEpdgListener;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/ISemEpdgListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_1a

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string/jumbo v0, "onEpdgShowPopup"

    return-object v0

    .line 77
    :pswitch_9
    const-string/jumbo v0, "onIpsecDisconnection"

    return-object v0

    .line 73
    :pswitch_d
    const-string/jumbo v0, "onIpsecConnection"

    return-object v0

    .line 69
    :pswitch_11
    const-string/jumbo v0, "onHandoverResult"

    return-object v0

    .line 65
    :pswitch_15
    const-string/jumbo v0, "onEpdgAvailable"

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

    .line 56
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 271
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const-string v0, "com.samsung.android.ims.ISemEpdgListener"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    packed-switch p1, :pswitch_data_7c

    .line 108
    packed-switch p1, :pswitch_data_82

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 163
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onEpdgShowPopup(II)V

    .line 168
    goto :goto_7b

    .line 153
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onIpsecDisconnection(ILjava/lang/String;)V

    .line 158
    goto :goto_7b

    .line 139
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onIpsecConnection(ILjava/lang/String;II)V

    .line 148
    goto :goto_7b

    .line 125
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 131
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onHandoverResult(IIILjava/lang/String;)V

    .line 134
    goto :goto_7b

    .line 113
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 117
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->onEpdgAvailable(IZI)V

    .line 120
    nop

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :goto_7b
    return v1

    :pswitch_data_7c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_68
        :pswitch_51
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
