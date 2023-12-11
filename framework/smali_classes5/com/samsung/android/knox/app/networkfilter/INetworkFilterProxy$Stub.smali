.class public abstract Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;
.super Landroid/os/Binder;
.source "INetworkFilterProxy.java"

# interfaces
.implements Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getListener:I = 0x3

.field static final TRANSACTION_getLocalProxyAddress:I = 0x9

.field static final TRANSACTION_getLocalProxyPort:I = 0xa

.field static final TRANSACTION_getProxythreadStatus:I = 0x7

.field static final TRANSACTION_getV6LocalProxyAddress:I = 0x10

.field static final TRANSACTION_getV6LocalProxyPort:I = 0x11

.field static final TRANSACTION_getV6ProxythreadStatus:I = 0xe

.field static final TRANSACTION_isProxyThreadAlive:I = 0x8

.field static final TRANSACTION_isProxyThreadRunning:I = 0x6

.field static final TRANSACTION_isV6ProxyThreadAlive:I = 0xf

.field static final TRANSACTION_isV6ProxyThreadRunning:I = 0xd

.field static final TRANSACTION_registerRemoteProxyAddr:I = 0x2

.field static final TRANSACTION_setConfig:I = 0x1

.field static final TRANSACTION_startProxyServer:I = 0x4

.field static final TRANSACTION_startV6ProxyServer:I = 0xb

.field static final TRANSACTION_stopProxyServer:I = 0x5

.field static final TRANSACTION_stopV6ProxyServer:I = 0xc

.field static final TRANSACTION_updateApplicationInfo:I = 0x13

.field static final TRANSACTION_vpnMessengerForDnsQuery:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 120
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 121
    const-string v0, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 129
    if-nez p0, :cond_4

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_4
    const-string v0, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 133
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz v1, :cond_14

    .line 134
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    return-object v1

    .line 136
    :cond_14
    new-instance v1, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 145
    packed-switch p0, :pswitch_data_52

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 221
    :pswitch_5
    const-string/jumbo v0, "updateApplicationInfo"

    return-object v0

    .line 217
    :pswitch_9
    const-string/jumbo v0, "vpnMessengerForDnsQuery"

    return-object v0

    .line 213
    :pswitch_d
    const-string/jumbo v0, "getV6LocalProxyPort"

    return-object v0

    .line 209
    :pswitch_11
    const-string/jumbo v0, "getV6LocalProxyAddress"

    return-object v0

    .line 205
    :pswitch_15
    const-string/jumbo v0, "isV6ProxyThreadAlive"

    return-object v0

    .line 201
    :pswitch_19
    const-string/jumbo v0, "getV6ProxythreadStatus"

    return-object v0

    .line 197
    :pswitch_1d
    const-string/jumbo v0, "isV6ProxyThreadRunning"

    return-object v0

    .line 193
    :pswitch_21
    const-string/jumbo v0, "stopV6ProxyServer"

    return-object v0

    .line 189
    :pswitch_25
    const-string/jumbo v0, "startV6ProxyServer"

    return-object v0

    .line 185
    :pswitch_29
    const-string/jumbo v0, "getLocalProxyPort"

    return-object v0

    .line 181
    :pswitch_2d
    const-string/jumbo v0, "getLocalProxyAddress"

    return-object v0

    .line 177
    :pswitch_31
    const-string/jumbo v0, "isProxyThreadAlive"

    return-object v0

    .line 173
    :pswitch_35
    const-string/jumbo v0, "getProxythreadStatus"

    return-object v0

    .line 169
    :pswitch_39
    const-string/jumbo v0, "isProxyThreadRunning"

    return-object v0

    .line 165
    :pswitch_3d
    const-string/jumbo v0, "stopProxyServer"

    return-object v0

    .line 161
    :pswitch_41
    const-string/jumbo v0, "startProxyServer"

    return-object v0

    .line 157
    :pswitch_45
    const-string/jumbo v0, "getListener"

    return-object v0

    .line 153
    :pswitch_49
    const-string/jumbo v0, "registerRemoteProxyAddr"

    return-object v0

    .line 149
    :pswitch_4d
    const-string/jumbo v0, "setConfig"

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 140
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 798
    const/16 v0, 0x12

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 232
    invoke-static {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

    .line 237
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    .line 238
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 237
    :cond_16
    move-object/from16 v11, p2

    .line 240
    :goto_18
    packed-switch v7, :pswitch_data_13a

    .line 248
    packed-switch v7, :pswitch_data_140

    .line 408
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 244
    :pswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v10

    .line 393
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 397
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 399
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 401
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 402
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 404
    goto/16 :goto_138

    .line 385
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 386
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->vpnMessengerForDnsQuery(Landroid/os/IBinder;)V

    .line 388
    goto/16 :goto_138

    .line 377
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_57
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6LocalProxyPort()I

    move-result v0

    .line 378
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    goto/16 :goto_138

    .line 370
    .end local v0    # "_result":I
    :pswitch_63
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6LocalProxyAddress()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    goto/16 :goto_138

    .line 363
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_6f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isV6ProxyThreadAlive()Z

    move-result v0

    .line 364
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    goto/16 :goto_138

    .line 356
    .end local v0    # "_result":Z
    :pswitch_7b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6ProxythreadStatus()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    goto/16 :goto_138

    .line 349
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_87
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isV6ProxyThreadRunning()Z

    move-result v0

    .line 350
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 352
    goto/16 :goto_138

    .line 342
    .end local v0    # "_result":Z
    :pswitch_93
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->stopV6ProxyServer()I

    move-result v0

    .line 343
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    goto/16 :goto_138

    .line 335
    .end local v0    # "_result":I
    :pswitch_9f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->startV6ProxyServer()I

    move-result v0

    .line 336
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    goto/16 :goto_138

    .line 328
    .end local v0    # "_result":I
    :pswitch_ab
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getLocalProxyPort()I

    move-result v0

    .line 329
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    goto/16 :goto_138

    .line 321
    .end local v0    # "_result":I
    :pswitch_b7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getLocalProxyAddress()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    goto/16 :goto_138

    .line 314
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_c3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isProxyThreadAlive()Z

    move-result v0

    .line 315
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto :goto_138

    .line 307
    .end local v0    # "_result":Z
    :pswitch_ce
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getProxythreadStatus()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    goto :goto_138

    .line 300
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_d9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isProxyThreadRunning()Z

    move-result v0

    .line 301
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    goto :goto_138

    .line 293
    .end local v0    # "_result":Z
    :pswitch_e4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->stopProxyServer()I

    move-result v0

    .line 294
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    goto :goto_138

    .line 286
    .end local v0    # "_result":I
    :pswitch_ef
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->startProxyServer()I

    move-result v0

    .line 287
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    goto :goto_138

    .line 277
    .end local v0    # "_result":I
    :pswitch_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 280
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 282
    goto :goto_138

    .line 265
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 270
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    goto :goto_138

    .line 253
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 258
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    nop

    .line 411
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :goto_138
    return v10

    nop

    :pswitch_data_13a
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_122
        :pswitch_10c
        :pswitch_fa
        :pswitch_ef
        :pswitch_e4
        :pswitch_d9
        :pswitch_ce
        :pswitch_c3
        :pswitch_b7
        :pswitch_ab
        :pswitch_9f
        :pswitch_93
        :pswitch_87
        :pswitch_7b
        :pswitch_6f
        :pswitch_63
        :pswitch_57
        :pswitch_4b
        :pswitch_27
    .end packed-switch
.end method
