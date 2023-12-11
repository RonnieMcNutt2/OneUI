.class public abstract Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;
.super Landroid/os/Binder;
.source "ISemWifiP2pManager.java"

# interfaces
.implements Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_controlOpenWifiScanTimer:I = 0x6

.field static final TRANSACTION_discoverPeers:I = 0xc

.field static final TRANSACTION_getChannelsMhzForBand:I = 0xf

.field static final TRANSACTION_getInUsePackageList:I = 0x7

.field static final TRANSACTION_getP2pFactoryMacAddress:I = 0xd

.field static final TRANSACTION_getSemWifiP2pDevice:I = 0xe

.field static final TRANSACTION_getWifiP2pState:I = 0x1

.field static final TRANSACTION_isP2pSoftApConcurrencySupported:I = 0x10

.field static final TRANSACTION_removeClient:I = 0xb

.field static final TRANSACTION_setInUsePackage:I = 0x8

.field static final TRANSACTION_setListenOffloading:I = 0x5

.field static final TRANSACTION_setMsMiceInfo:I = 0x2

.field static final TRANSACTION_setPreparedAccountPin:I = 0x4

.field static final TRANSACTION_setScreenSharing:I = 0x3

.field static final TRANSACTION_unsetAllInUsePackage:I = 0xa

.field static final TRANSACTION_unsetInUsePackage:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_4
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    if-eqz v1, :cond_14

    .line 93
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    return-object v1

    .line 95
    :cond_14
    new-instance v1, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_36

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 168
    :pswitch_5
    const-string v0, "isP2pSoftApConcurrencySupported"

    return-object v0

    .line 164
    :pswitch_8
    const-string v0, "getChannelsMhzForBand"

    return-object v0

    .line 160
    :pswitch_b
    const-string v0, "getSemWifiP2pDevice"

    return-object v0

    .line 156
    :pswitch_e
    const-string v0, "getP2pFactoryMacAddress"

    return-object v0

    .line 152
    :pswitch_11
    const-string v0, "discoverPeers"

    return-object v0

    .line 148
    :pswitch_14
    const-string v0, "removeClient"

    return-object v0

    .line 144
    :pswitch_17
    const-string v0, "unsetAllInUsePackage"

    return-object v0

    .line 140
    :pswitch_1a
    const-string v0, "unsetInUsePackage"

    return-object v0

    .line 136
    :pswitch_1d
    const-string v0, "setInUsePackage"

    return-object v0

    .line 132
    :pswitch_20
    const-string v0, "getInUsePackageList"

    return-object v0

    .line 128
    :pswitch_23
    const-string v0, "controlOpenWifiScanTimer"

    return-object v0

    .line 124
    :pswitch_26
    const-string v0, "setListenOffloading"

    return-object v0

    .line 120
    :pswitch_29
    const-string v0, "setPreparedAccountPin"

    return-object v0

    .line 116
    :pswitch_2c
    const-string v0, "setScreenSharing"

    return-object v0

    .line 112
    :pswitch_2f
    const-string v0, "setMsMiceInfo"

    return-object v0

    .line 108
    :pswitch_32
    const-string v0, "getWifiP2pState"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 99
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 680
    const/16 v0, 0xf

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 179
    invoke-static {p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 183
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    .line 184
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 185
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    :cond_d
    packed-switch p1, :pswitch_data_14e

    .line 195
    packed-switch p1, :pswitch_data_154

    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 191
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return v1

    .line 363
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->isP2pSoftApConcurrencySupported()Z

    move-result v2

    .line 364
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    goto/16 :goto_14c

    .line 354
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getChannelsMhzForBand(I)[I

    move-result-object v3

    .line 357
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 359
    goto/16 :goto_14c

    .line 344
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getSemWifiP2pDevice(Ljava/lang/String;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    move-result-object v3

    .line 347
    .local v3, "_result":Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 349
    goto/16 :goto_14c

    .line 336
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    :pswitch_4e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getP2pFactoryMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    .line 337
    .local v2, "_result":Landroid/net/MacAddress;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 339
    goto/16 :goto_14c

    .line 326
    .end local v2    # "_result":Landroid/net/MacAddress;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;

    move-result-object v3

    .line 329
    .local v3, "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->discoverPeers(ILcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_14c

    .line 315
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;

    move-result-object v3

    .line 318
    .restart local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_14c

    .line 306
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->unsetAllInUsePackage(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_14c

    .line 291
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 298
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->unsetInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto/16 :goto_14c

    .line 276
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 282
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 283
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto/16 :goto_14c

    .line 266
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getInUsePackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 269
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 271
    goto :goto_14c

    .line 257
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->controlOpenWifiScanTimer(I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_14c

    .line 242
    .end local v2    # "_arg0":I
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 248
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 249
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setListenOffloading(IIII)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_14c

    .line 229
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setPreparedAccountPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_14c

    .line 220
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 221
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setScreenSharing(Z)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto :goto_14c

    .line 207
    .end local v2    # "_arg0":Z
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 212
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_14c

    .line 199
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_141
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getWifiP2pState()I

    move-result v2

    .line 200
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    nop

    .line 373
    .end local v2    # "_result":I
    :goto_14c
    return v1

    nop

    :pswitch_data_14e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_141
        :pswitch_12b
        :pswitch_11d
        :pswitch_107
        :pswitch_ed
        :pswitch_df
        :pswitch_cd
        :pswitch_b2
        :pswitch_97
        :pswitch_88
        :pswitch_71
        :pswitch_5a
        :pswitch_4e
        :pswitch_3b
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
