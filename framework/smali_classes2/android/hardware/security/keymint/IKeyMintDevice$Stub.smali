.class public abstract Landroid/hardware/security/keymint/IKeyMintDevice$Stub;
.super Landroid/os/Binder;
.source "IKeyMintDevice.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addRngEntropy:I = 0x2

.field static final TRANSACTION_begin:I = 0xa

.field static final TRANSACTION_convertStorageKeyToEphemeral:I = 0xd

.field static final TRANSACTION_deleteAllKeys:I = 0x8

.field static final TRANSACTION_deleteKey:I = 0x7

.field static final TRANSACTION_destroyAttestationIds:I = 0x9

.field static final TRANSACTION_deviceLocked:I = 0xb

.field static final TRANSACTION_earlyBootEnded:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x3

.field static final TRANSACTION_getHardwareInfo:I = 0x1

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getKeyCharacteristics:I = 0xe

.field static final TRANSACTION_getRootOfTrust:I = 0x10

.field static final TRANSACTION_getRootOfTrustChallenge:I = 0xf

.field static final TRANSACTION_importKey:I = 0x4

.field static final TRANSACTION_importWrappedKey:I = 0x5

.field static final TRANSACTION_sendRootOfTrust:I = 0x11

.field static final TRANSACTION_upgradeKey:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 99
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->markVintfStability()V

    .line 100
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IKeyMintDevice;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_4
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/security/keymint/IKeyMintDevice;

    if-eqz v1, :cond_14

    .line 113
    move-object v1, v0

    check-cast v1, Landroid/hardware/security/keymint/IKeyMintDevice;

    return-object v1

    .line 115
    :cond_14
    new-instance v1, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 124
    sparse-switch p0, :sswitch_data_3e

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 196
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 200
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 192
    :sswitch_b
    const-string v0, "sendRootOfTrust"

    return-object v0

    .line 188
    :sswitch_e
    const-string v0, "getRootOfTrust"

    return-object v0

    .line 184
    :sswitch_11
    const-string v0, "getRootOfTrustChallenge"

    return-object v0

    .line 180
    :sswitch_14
    const-string v0, "getKeyCharacteristics"

    return-object v0

    .line 176
    :sswitch_17
    const-string v0, "convertStorageKeyToEphemeral"

    return-object v0

    .line 172
    :sswitch_1a
    const-string v0, "earlyBootEnded"

    return-object v0

    .line 168
    :sswitch_1d
    const-string v0, "deviceLocked"

    return-object v0

    .line 164
    :sswitch_20
    const-string v0, "begin"

    return-object v0

    .line 160
    :sswitch_23
    const-string v0, "destroyAttestationIds"

    return-object v0

    .line 156
    :sswitch_26
    const-string v0, "deleteAllKeys"

    return-object v0

    .line 152
    :sswitch_29
    const-string v0, "deleteKey"

    return-object v0

    .line 148
    :sswitch_2c
    const-string v0, "upgradeKey"

    return-object v0

    .line 144
    :sswitch_2f
    const-string v0, "importWrappedKey"

    return-object v0

    .line 140
    :sswitch_32
    const-string v0, "importKey"

    return-object v0

    .line 136
    :sswitch_35
    const-string v0, "generateKey"

    return-object v0

    .line 132
    :sswitch_38
    const-string v0, "addRngEntropy"

    return-object v0

    .line 128
    :sswitch_3b
    const-string v0, "getHardwareInfo"

    return-object v0

    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_38
        0x3 -> :sswitch_35
        0x4 -> :sswitch_32
        0x5 -> :sswitch_2f
        0x6 -> :sswitch_2c
        0x7 -> :sswitch_29
        0x8 -> :sswitch_26
        0x9 -> :sswitch_23
        0xa -> :sswitch_20
        0xb -> :sswitch_1d
        0xc -> :sswitch_1a
        0xd -> :sswitch_17
        0xe -> :sswitch_14
        0xf -> :sswitch_11
        0x10 -> :sswitch_e
        0x11 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 119
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 866
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 211
    invoke-static {p1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    sget-object v13, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 216
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_15

    const v0, 0xffffff

    if-gt v10, v0, :cond_15

    .line 217
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    :cond_15
    sparse-switch v10, :sswitch_data_1bc

    .line 239
    const/16 v0, 0x10

    packed-switch v10, :pswitch_data_1ca

    .line 423
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 223
    :sswitch_22
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return v14

    .line 228
    :sswitch_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return v14

    .line 234
    :sswitch_31
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return v14

    .line 415
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 416
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->sendRootOfTrust([B)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_1ba

    .line 405
    .end local v0    # "_arg0":[B
    :pswitch_4b
    const-class v1, [B

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 406
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrust([B)[B

    move-result-object v1

    .line 408
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 410
    goto/16 :goto_1ba

    .line 397
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrustChallenge()[B

    move-result-object v1

    .line 398
    .restart local v1    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {v12, v1, v14, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 400
    goto/16 :goto_1ba

    .line 384
    .end local v1    # "_result":[B
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 386
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 388
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 389
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {v9, v0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getKeyCharacteristics([B[B[B)[Landroid/hardware/security/keymint/KeyCharacteristics;

    move-result-object v3

    .line 391
    .local v3, "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 393
    goto/16 :goto_1ba

    .line 374
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    :pswitch_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 375
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->convertStorageKeyToEphemeral([B)[B

    move-result-object v1

    .line 377
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 379
    goto/16 :goto_1ba

    .line 367
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_a4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->earlyBootEnded()V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_1ba

    .line 357
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 359
    .local v0, "_arg0":Z
    sget-object v1, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/secureclock/TimeStampToken;

    .line 360
    .local v1, "_arg1":Landroid/hardware/security/secureclock/TimeStampToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {v9, v0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deviceLocked(ZLandroid/hardware/security/secureclock/TimeStampToken;)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_1ba

    .line 341
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/hardware/security/secureclock/TimeStampToken;
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 345
    .local v1, "_arg1":[B
    sget-object v2, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyParameter;

    .line 347
    .local v2, "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v3, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 348
    .local v3, "_arg3":Landroid/hardware/security/keymint/HardwareAuthToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->begin(I[B[Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/HardwareAuthToken;)Landroid/hardware/security/keymint/BeginResult;

    move-result-object v4

    .line 350
    .local v4, "_result":Landroid/hardware/security/keymint/BeginResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 352
    goto/16 :goto_1ba

    .line 334
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v3    # "_arg3":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local v4    # "_result":Landroid/hardware/security/keymint/BeginResult;
    :pswitch_ea
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->destroyAttestationIds()V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_1ba

    .line 328
    :pswitch_f2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteAllKeys()V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_1ba

    .line 320
    :pswitch_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 321
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteKey([B)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_1ba

    .line 308
    .end local v0    # "_arg0":[B
    :pswitch_109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 310
    .restart local v0    # "_arg0":[B
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 311
    .local v1, "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v9, v0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->upgradeKey([B[Landroid/hardware/security/keymint/KeyParameter;)[B

    move-result-object v2

    .line 313
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 315
    goto/16 :goto_1ba

    .line 288
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v2    # "_result":[B
    :pswitch_124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 290
    .local v15, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 292
    .local v16, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 294
    .local v17, "_arg2":[B
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Landroid/hardware/security/keymint/KeyParameter;

    .line 296
    .local v18, "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 298
    .local v19, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 299
    .local v21, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importWrappedKey([B[B[B[Landroid/hardware/security/keymint/KeyParameter;JJ)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v0

    .line 301
    .local v0, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 303
    goto :goto_1ba

    .line 272
    .end local v0    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    .end local v15    # "_arg0":[B
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v19    # "_arg4":J
    .end local v21    # "_arg5":J
    :pswitch_15d
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 274
    .local v0, "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 278
    .local v2, "_arg2":[B
    sget-object v3, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/AttestationKey;

    .line 279
    .local v3, "_arg3":Landroid/hardware/security/keymint/AttestationKey;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importKey([Landroid/hardware/security/keymint/KeyParameter;I[BLandroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v4

    .line 281
    .local v4, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 283
    goto :goto_1ba

    .line 260
    .end local v0    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":Landroid/hardware/security/keymint/AttestationKey;
    .end local v4    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_183
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 262
    .restart local v0    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v1, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/keymint/AttestationKey;

    .line 263
    .local v1, "_arg1":Landroid/hardware/security/keymint/AttestationKey;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {v9, v0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->generateKey([Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v2

    .line 265
    .local v2, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto :goto_1ba

    .line 251
    .end local v0    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v1    # "_arg1":Landroid/hardware/security/keymint/AttestationKey;
    .end local v2    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_1a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 252
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {v9, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->addRngEntropy([B)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto :goto_1ba

    .line 243
    .end local v0    # "_arg0":[B
    :pswitch_1af
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getHardwareInfo()Landroid/hardware/security/keymint/KeyMintHardwareInfo;

    move-result-object v0

    .line 244
    .local v0, "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    nop

    .line 426
    .end local v0    # "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    :goto_1ba
    return v14

    nop

    :sswitch_data_1bc
    .sparse-switch
        0xfffffe -> :sswitch_31
        0xffffff -> :sswitch_26
        0x5f4e5446 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_1af
        :pswitch_1a1
        :pswitch_183
        :pswitch_15d
        :pswitch_124
        :pswitch_109
        :pswitch_fa
        :pswitch_f2
        :pswitch_ea
        :pswitch_c3
        :pswitch_ac
        :pswitch_a4
        :pswitch_91
        :pswitch_76
        :pswitch_66
        :pswitch_4b
        :pswitch_3c
    .end packed-switch
.end method
