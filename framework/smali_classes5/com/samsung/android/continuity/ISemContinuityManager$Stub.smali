.class public abstract Lcom/samsung/android/continuity/ISemContinuityManager$Stub;
.super Landroid/os/Binder;
.source "ISemContinuityManager.java"

# interfaces
.implements Lcom/samsung/android/continuity/ISemContinuityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/continuity/ISemContinuityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelDownload:I = 0x7

.field static final TRANSACTION_clearLocalClip:I = 0x3

.field static final TRANSACTION_getNearbyDeviceCount:I = 0x1

.field static final TRANSACTION_registerContinuityCopyListener:I = 0x4

.field static final TRANSACTION_requestDownload:I = 0x6

.field static final TRANSACTION_setLocalClip:I = 0x2

.field static final TRANSACTION_unregisterContinuityCopyListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/continuity/ISemContinuityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/continuity/ISemContinuityManager;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/continuity/ISemContinuityManager;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_20

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_5
    const-string v0, "cancelDownload"

    return-object v0

    .line 95
    :pswitch_8
    const-string/jumbo v0, "requestDownload"

    return-object v0

    .line 91
    :pswitch_c
    const-string/jumbo v0, "unregisterContinuityCopyListener"

    return-object v0

    .line 87
    :pswitch_10
    const-string/jumbo v0, "registerContinuityCopyListener"

    return-object v0

    .line 83
    :pswitch_14
    const-string v0, "clearLocalClip"

    return-object v0

    .line 79
    :pswitch_17
    const-string/jumbo v0, "setLocalClip"

    return-object v0

    .line 75
    :pswitch_1b
    const-string/jumbo v0, "getNearbyDeviceCount"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
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

    .line 66
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 357
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 110
    invoke-static {p1}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 114
    const-string v0, "com.samsung.android.continuity.ISemContinuityManager"

    .line 115
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_d
    packed-switch p1, :pswitch_data_ac

    .line 126
    packed-switch p1, :pswitch_data_b2

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 197
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->cancelDownload(Ljava/lang/String;I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto/16 :goto_ab

    .line 183
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/continuity/ISemContinuitySimpleListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    move-result-object v3

    .line 187
    .local v3, "_arg1":Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)Z

    move-result v5

    .line 190
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto :goto_ab

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->unregisterContinuityCopyListener(I)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_ab

    .line 163
    .end local v2    # "_arg0":I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/continuity/ISemContinuitySimpleListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    move-result-object v2

    .line 165
    .local v2, "_arg0":Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->registerContinuityCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_ab

    .line 154
    .end local v2    # "_arg0":Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .end local v3    # "_arg1":I
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->clearLocalClip(I)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_ab

    .line 143
    .end local v2    # "_arg0":I
    :pswitch_7f
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 145
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->setLocalClip(Landroid/os/Bundle;I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_ab

    .line 131
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":I
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;->getNearbyDeviceCount(II)I

    move-result v4

    .line 136
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    nop

    .line 210
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :goto_ab
    return v1

    :pswitch_data_ac
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_95
        :pswitch_7f
        :pswitch_71
        :pswitch_5b
        :pswitch_4d
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
