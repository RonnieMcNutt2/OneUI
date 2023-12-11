.class public abstract Landroid/media/IResourceManagerService$Stub;
.super Landroid/os/Binder;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/media/IResourceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addMediaInfo:I = 0xf

.field static final TRANSACTION_addResource:I = 0x2

.field static final TRANSACTION_config:I = 0x1

.field static final TRANSACTION_createResourceObserver:I = 0xe

.field static final TRANSACTION_getRemainedFrameRateFor:I = 0x13

.field static final TRANSACTION_getSupportedFrameRateFor:I = 0x12

.field static final TRANSACTION_markClientForPendingRemoval:I = 0x8

.field static final TRANSACTION_notifyClientConfigChanged:I = 0xd

.field static final TRANSACTION_notifyClientCreated:I = 0xa

.field static final TRANSACTION_notifyClientStarted:I = 0xb

.field static final TRANSACTION_notifyClientStopped:I = 0xc

.field static final TRANSACTION_overridePid:I = 0x6

.field static final TRANSACTION_overrideProcessInfo:I = 0x7

.field static final TRANSACTION_reclaimResource:I = 0x5

.field static final TRANSACTION_reclaimResourcesFromClientsPendingRemoval:I = 0x9

.field static final TRANSACTION_removeClient:I = 0x4

.field static final TRANSACTION_removeResource:I = 0x3

.field static final TRANSACTION_sendCapacityError:I = 0x11

.field static final TRANSACTION_setCodecState:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 197
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 198
    const-string v0, "android.media.IResourceManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IResourceManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 206
    if-nez p0, :cond_4

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_4
    const-string v0, "android.media.IResourceManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 210
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IResourceManagerService;

    if-eqz v1, :cond_14

    .line 211
    move-object v1, v0

    check-cast v1, Landroid/media/IResourceManagerService;

    return-object v1

    .line 213
    :cond_14
    new-instance v1, Landroid/media/IResourceManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IResourceManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 222
    packed-switch p0, :pswitch_data_3e

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 298
    :pswitch_5
    const-string v0, "getRemainedFrameRateFor"

    return-object v0

    .line 294
    :pswitch_8
    const-string v0, "getSupportedFrameRateFor"

    return-object v0

    .line 290
    :pswitch_b
    const-string v0, "sendCapacityError"

    return-object v0

    .line 286
    :pswitch_e
    const-string v0, "setCodecState"

    return-object v0

    .line 282
    :pswitch_11
    const-string v0, "addMediaInfo"

    return-object v0

    .line 278
    :pswitch_14
    const-string v0, "createResourceObserver"

    return-object v0

    .line 274
    :pswitch_17
    const-string v0, "notifyClientConfigChanged"

    return-object v0

    .line 270
    :pswitch_1a
    const-string v0, "notifyClientStopped"

    return-object v0

    .line 266
    :pswitch_1d
    const-string v0, "notifyClientStarted"

    return-object v0

    .line 262
    :pswitch_20
    const-string v0, "notifyClientCreated"

    return-object v0

    .line 258
    :pswitch_23
    const-string v0, "reclaimResourcesFromClientsPendingRemoval"

    return-object v0

    .line 254
    :pswitch_26
    const-string v0, "markClientForPendingRemoval"

    return-object v0

    .line 250
    :pswitch_29
    const-string v0, "overrideProcessInfo"

    return-object v0

    .line 246
    :pswitch_2c
    const-string v0, "overridePid"

    return-object v0

    .line 242
    :pswitch_2f
    const-string v0, "reclaimResource"

    return-object v0

    .line 238
    :pswitch_32
    const-string v0, "removeClient"

    return-object v0

    .line 234
    :pswitch_35
    const-string v0, "removeResource"

    return-object v0

    .line 230
    :pswitch_38
    const-string v0, "addResource"

    return-object v0

    .line 226
    :pswitch_3b
    const-string v0, "config"

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_38
        :pswitch_35
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

    .line 217
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1024
    const/16 v0, 0x12

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 309
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.media.IResourceManagerService"

    .line 314
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 315
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    :cond_15
    packed-switch v8, :pswitch_data_220

    .line 325
    packed-switch v8, :pswitch_data_226

    .line 552
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 321
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    return v12

    .line 539
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 544
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->getRemainedFrameRateFor(Ljava/lang/String;II)F

    move-result v3

    .line 546
    .local v3, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 548
    goto/16 :goto_21f

    .line 525
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":F
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->getSupportedFrameRateFor(Ljava/lang/String;II)F

    move-result v3

    .line 532
    .restart local v3    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 534
    goto/16 :goto_21f

    .line 508
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":F
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 510
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 512
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 514
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v17

    .line 516
    .local v17, "_arg3":Landroid/media/IResourceManagerClient;
    sget-object v0, Lcom/samsung/android/media/MediaInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Lcom/samsung/android/media/MediaInfoParcel;

    .line 517
    .local v18, "_arg4":[Lcom/samsung/android/media/MediaInfoParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IResourceManagerService$Stub;->sendCapacityError(IIJLandroid/media/IResourceManagerClient;[Lcom/samsung/android/media/MediaInfoParcel;)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_21f

    .line 491
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    .end local v18    # "_arg4":[Lcom/samsung/android/media/MediaInfoParcel;
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 493
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 495
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 497
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v17

    .line 499
    .restart local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 500
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IResourceManagerService$Stub;->setCodecState(IIJLandroid/media/IResourceManagerClient;I)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    goto/16 :goto_21f

    .line 474
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    .end local v18    # "_arg4":I
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 476
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 478
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 480
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v17

    .line 482
    .restart local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    sget-object v0, Lcom/samsung/android/media/MediaInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Lcom/samsung/android/media/MediaInfoParcel;

    .line 483
    .local v18, "_arg4":[Lcom/samsung/android/media/MediaInfoParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IResourceManagerService$Stub;->addMediaInfo(IIJLandroid/media/IResourceManagerClient;[Lcom/samsung/android/media/MediaInfoParcel;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_21f

    .line 464
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    .end local v18    # "_arg4":[Lcom/samsung/android/media/MediaInfoParcel;
    :pswitch_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/IResourceManagerObserverClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/IResourceManagerObserverClient;

    move-result-object v0

    .line 465
    .local v0, "_arg0":Lcom/samsung/android/media/IResourceManagerObserverClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->createResourceObserver(Lcom/samsung/android/media/IResourceManagerObserverClient;)Lcom/samsung/android/media/IResourceManagerObserver;

    move-result-object v1

    .line 467
    .local v1, "_result":Lcom/samsung/android/media/IResourceManagerObserver;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 469
    goto/16 :goto_21f

    .line 455
    .end local v0    # "_arg0":Lcom/samsung/android/media/IResourceManagerObserverClient;
    .end local v1    # "_result":Lcom/samsung/android/media/IResourceManagerObserver;
    :pswitch_101
    sget-object v0, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientConfigParcel;

    .line 456
    .local v0, "_arg0":Landroid/media/ClientConfigParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->notifyClientConfigChanged(Landroid/media/ClientConfigParcel;)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_21f

    .line 446
    .end local v0    # "_arg0":Landroid/media/ClientConfigParcel;
    :pswitch_114
    sget-object v0, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientConfigParcel;

    .line 447
    .restart local v0    # "_arg0":Landroid/media/ClientConfigParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->notifyClientStopped(Landroid/media/ClientConfigParcel;)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    goto/16 :goto_21f

    .line 437
    .end local v0    # "_arg0":Landroid/media/ClientConfigParcel;
    :pswitch_127
    sget-object v0, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientConfigParcel;

    .line 438
    .restart local v0    # "_arg0":Landroid/media/ClientConfigParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->notifyClientStarted(Landroid/media/ClientConfigParcel;)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto/16 :goto_21f

    .line 428
    .end local v0    # "_arg0":Landroid/media/ClientConfigParcel;
    :pswitch_13a
    sget-object v0, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientInfoParcel;

    .line 429
    .local v0, "_arg0":Landroid/media/ClientInfoParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->notifyClientCreated(Landroid/media/ClientInfoParcel;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_21f

    .line 419
    .end local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    :pswitch_14d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 420
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->reclaimResourcesFromClientsPendingRemoval(I)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_21f

    .line 410
    .end local v0    # "_arg0":I
    :pswitch_15c
    sget-object v0, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientInfoParcel;

    .line 411
    .local v0, "_arg0":Landroid/media/ClientInfoParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->markClientForPendingRemoval(Landroid/media/ClientInfoParcel;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_21f

    .line 395
    .end local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    :pswitch_16f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v0

    .line 397
    .local v0, "_arg0":Landroid/media/IResourceManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 402
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/IResourceManagerService$Stub;->overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto/16 :goto_21f

    .line 384
    .end local v0    # "_arg0":Landroid/media/IResourceManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_18e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {v7, v0, v1}, Landroid/media/IResourceManagerService$Stub;->overridePid(II)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto/16 :goto_21f

    .line 372
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1a1
    sget-object v0, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientInfoParcel;

    .line 374
    .local v0, "_arg0":Landroid/media/ClientInfoParcel;
    sget-object v1, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaResourceParcel;

    .line 375
    .local v1, "_arg1":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {v7, v0, v1}, Landroid/media/IResourceManagerService$Stub;->reclaimResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)Z

    move-result v2

    .line 377
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 379
    goto :goto_21f

    .line 363
    .end local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    .end local v1    # "_arg1":[Landroid/media/MediaResourceParcel;
    .end local v2    # "_result":Z
    :pswitch_1bf
    sget-object v0, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientInfoParcel;

    .line 364
    .restart local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->removeClient(Landroid/media/ClientInfoParcel;)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    goto :goto_21f

    .line 352
    .end local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    :pswitch_1d1
    sget-object v0, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientInfoParcel;

    .line 354
    .restart local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    sget-object v1, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaResourceParcel;

    .line 355
    .restart local v1    # "_arg1":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {v7, v0, v1}, Landroid/media/IResourceManagerService$Stub;->removeResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto :goto_21f

    .line 339
    .end local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    .end local v1    # "_arg1":[Landroid/media/MediaResourceParcel;
    :pswitch_1eb
    sget-object v0, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ClientInfoParcel;

    .line 341
    .restart local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v1

    .line 343
    .local v1, "_arg1":Landroid/media/IResourceManagerClient;
    sget-object v2, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaResourceParcel;

    .line 344
    .local v2, "_arg2":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->addResource(Landroid/media/ClientInfoParcel;Landroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto :goto_21f

    .line 330
    .end local v0    # "_arg0":Landroid/media/ClientInfoParcel;
    .end local v1    # "_arg1":Landroid/media/IResourceManagerClient;
    .end local v2    # "_arg2":[Landroid/media/MediaResourceParcel;
    :pswitch_20d
    sget-object v0, Landroid/media/MediaResourcePolicyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaResourcePolicyParcel;

    .line 331
    .local v0, "_arg0":[Landroid/media/MediaResourcePolicyParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->config([Landroid/media/MediaResourcePolicyParcel;)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    nop

    .line 555
    .end local v0    # "_arg0":[Landroid/media/MediaResourcePolicyParcel;
    :goto_21f
    return v12

    :pswitch_data_220
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_20d
        :pswitch_1eb
        :pswitch_1d1
        :pswitch_1bf
        :pswitch_1a1
        :pswitch_18e
        :pswitch_16f
        :pswitch_15c
        :pswitch_14d
        :pswitch_13a
        :pswitch_127
        :pswitch_114
        :pswitch_101
        :pswitch_ea
        :pswitch_b8
        :pswitch_8c
        :pswitch_5a
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
