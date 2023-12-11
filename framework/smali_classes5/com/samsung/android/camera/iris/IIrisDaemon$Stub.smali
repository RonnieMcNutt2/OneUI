.class public abstract Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;
.super Landroid/os/Binder;
.source "IIrisDaemon.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_cancelEnumeration:I = 0x11

.field static final TRANSACTION_closeHal:I = 0xa

.field static final TRANSACTION_createInputSurface:I = 0x14

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_enumerate:I = 0x10

.field static final TRANSACTION_getAuthenticatorId:I = 0x7

.field static final TRANSACTION_init:I = 0xb

.field static final TRANSACTION_openHal:I = 0x9

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0x5

.field static final TRANSACTION_processFrontImage:I = 0x12

.field static final TRANSACTION_processIRImage:I = 0xe

.field static final TRANSACTION_release:I = 0x15

.field static final TRANSACTION_releasePreviewSurface:I = 0x16

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_request:I = 0xd

.field static final TRANSACTION_sendIRProperty:I = 0xf

.field static final TRANSACTION_setActiveGroup:I = 0x8

.field static final TRANSACTION_setPreviewTarget:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 109
    const-string v0, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemon;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 117
    if-nez p0, :cond_4

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_4
    const-string v0, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 121
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisDaemon;

    if-eqz v1, :cond_14

    .line 122
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camera/iris/IIrisDaemon;

    return-object v1

    .line 124
    :cond_14
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 133
    packed-switch p0, :pswitch_data_56

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 221
    :pswitch_5
    const-string/jumbo v0, "releasePreviewSurface"

    return-object v0

    .line 217
    :pswitch_9
    const-string/jumbo v0, "release"

    return-object v0

    .line 213
    :pswitch_d
    const-string v0, "createInputSurface"

    return-object v0

    .line 209
    :pswitch_10
    const-string/jumbo v0, "setPreviewTarget"

    return-object v0

    .line 205
    :pswitch_14
    const-string/jumbo v0, "processFrontImage"

    return-object v0

    .line 201
    :pswitch_18
    const-string v0, "cancelEnumeration"

    return-object v0

    .line 197
    :pswitch_1b
    const-string v0, "enumerate"

    return-object v0

    .line 193
    :pswitch_1e
    const-string/jumbo v0, "sendIRProperty"

    return-object v0

    .line 189
    :pswitch_22
    const-string/jumbo v0, "processIRImage"

    return-object v0

    .line 185
    :pswitch_26
    const-string/jumbo v0, "request"

    return-object v0

    .line 181
    :pswitch_2a
    const-string/jumbo v0, "postEnroll"

    return-object v0

    .line 177
    :pswitch_2e
    const-string/jumbo v0, "init"

    return-object v0

    .line 173
    :pswitch_32
    const-string v0, "closeHal"

    return-object v0

    .line 169
    :pswitch_35
    const-string/jumbo v0, "openHal"

    return-object v0

    .line 165
    :pswitch_39
    const-string/jumbo v0, "setActiveGroup"

    return-object v0

    .line 161
    :pswitch_3d
    const-string/jumbo v0, "getAuthenticatorId"

    return-object v0

    .line 157
    :pswitch_41
    const-string/jumbo v0, "remove"

    return-object v0

    .line 153
    :pswitch_45
    const-string/jumbo v0, "preEnroll"

    return-object v0

    .line 149
    :pswitch_49
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 145
    :pswitch_4c
    const-string v0, "enroll"

    return-object v0

    .line 141
    :pswitch_4f
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 137
    :pswitch_52
    const-string v0, "authenticate"

    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 128
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 925
    const/16 v0, 0x15

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 232
    invoke-static {p1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
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
    const-string v0, "com.samsung.android.camera.iris.IIrisDaemon"

    .line 237
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 238
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    :cond_d
    packed-switch p1, :pswitch_data_1c8

    .line 248
    packed-switch p1, :pswitch_data_1ce

    .line 484
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 244
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v1

    .line 477
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->releasePreviewSurface()I

    move-result v2

    .line 478
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    goto/16 :goto_1c6

    .line 468
    .end local v2    # "_result":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->release(I)I

    move-result v3

    .line 471
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    goto/16 :goto_1c6

    .line 454
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 456
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 458
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 459
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->createInputSurface(III)Landroid/os/IBinder;

    move-result-object v5

    .line 461
    .local v5, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 463
    goto/16 :goto_1c6

    .line 444
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/os/IBinder;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 445
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->setPreviewTarget(Landroid/os/IBinder;)I

    move-result v3

    .line 447
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    goto/16 :goto_1c6

    .line 429
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_69
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 431
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 436
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->processFrontImage(Landroid/os/ParcelFileDescriptor;III)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    goto/16 :goto_1c6

    .line 421
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_88
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelEnumeration()I

    move-result v2

    .line 422
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    goto/16 :goto_1c6

    .line 414
    .end local v2    # "_result":I
    :pswitch_94
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->enumerate()I

    move-result v2

    .line 415
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    goto/16 :goto_1c6

    .line 400
    .end local v2    # "_result":I
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->sendIRProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_1c6

    .line 385
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_bb
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 387
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 389
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 391
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 392
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->processIRImage(Landroid/os/ParcelFileDescriptor;III)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    goto/16 :goto_1c6

    .line 363
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 367
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 368
    .local v4, "_arg2_length":I
    if-gez v4, :cond_ea

    .line 369
    const/4 v5, 0x0

    .local v5, "_arg2":[B
    goto :goto_ec

    .line 371
    .end local v5    # "_arg2":[B
    :cond_ea
    new-array v5, v4, [B

    .line 374
    .restart local v5    # "_arg2":[B
    :goto_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 375
    .local v6, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->request(I[B[BI)I

    move-result v7

    .line 377
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 380
    goto/16 :goto_1c6

    .line 355
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2_length":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v7    # "_result":I
    :pswitch_102
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->postEnroll()I

    move-result v2

    .line 356
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    goto/16 :goto_1c6

    .line 347
    .end local v2    # "_result":I
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    move-result-object v2

    .line 348
    .local v2, "_arg0":Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->init(Lcom/samsung/android/camera/iris/IIrisDaemonCallback;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_1c6

    .line 339
    .end local v2    # "_arg0":Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    :pswitch_121
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->closeHal()I

    move-result v2

    .line 340
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    goto/16 :goto_1c6

    .line 332
    .end local v2    # "_result":I
    :pswitch_12d
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->openHal()J

    move-result-wide v2

    .line 333
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 335
    goto/16 :goto_1c6

    .line 321
    .end local v2    # "_result":J
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 324
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->setActiveGroup(I[B)I

    move-result v4

    .line 326
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    goto/16 :goto_1c6

    .line 313
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":I
    :pswitch_150
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->getAuthenticatorId()J

    move-result-wide v2

    .line 314
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 316
    goto :goto_1c6

    .line 302
    .end local v2    # "_result":J
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->remove(II)I

    move-result v4

    .line 307
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    goto :goto_1c6

    .line 294
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_171
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->preEnroll()J

    move-result-wide v2

    .line 295
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    goto :goto_1c6

    .line 287
    .end local v2    # "_result":J
    :pswitch_17c
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelEnrollment()I

    move-result v2

    .line 288
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    goto :goto_1c6

    .line 274
    .end local v2    # "_result":I
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 276
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 279
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->enroll([BII)I

    move-result v5

    .line 281
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    goto :goto_1c6

    .line 266
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_1a1
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelAuthentication()I

    move-result v2

    .line 267
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    goto :goto_1c6

    .line 253
    .end local v2    # "_result":I
    :pswitch_1ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 255
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 257
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 258
    .local v5, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->authenticate(JI[B)I

    move-result v6

    .line 260
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    nop

    .line 487
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_result":I
    :goto_1c6
    return v1

    nop

    :pswitch_data_1c8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_1ac
        :pswitch_1a1
        :pswitch_187
        :pswitch_17c
        :pswitch_171
        :pswitch_15b
        :pswitch_150
        :pswitch_139
        :pswitch_12d
        :pswitch_121
        :pswitch_10e
        :pswitch_102
        :pswitch_da
        :pswitch_bb
        :pswitch_a0
        :pswitch_94
        :pswitch_88
        :pswitch_69
        :pswitch_56
        :pswitch_3b
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
