.class public abstract Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;
.super Landroid/os/Binder;
.source "ISemRemoteContentManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ISemRemoteContentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ISemRemoteContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelCopyChunks:I = 0xd

.field static final TRANSACTION_copyChunks:I = 0xc

.field static final TRANSACTION_copyFile:I = 0x5

.field static final TRANSACTION_copyFileInternal:I = 0x4

.field static final TRANSACTION_deleteFile:I = 0xa

.field static final TRANSACTION_exchangeData:I = 0xe

.field static final TRANSACTION_getFileInfo:I = 0xb

.field static final TRANSACTION_getFiles:I = 0x9

.field static final TRANSACTION_getRCPInterface:I = 0x2

.field static final TRANSACTION_isFileExist:I = 0x8

.field static final TRANSACTION_moveFile:I = 0x3

.field static final TRANSACTION_moveFilesForApp:I = 0x6

.field static final TRANSACTION_moveFilesForAppEx:I = 0xf

.field static final TRANSACTION_moveUnlimitedFiles:I = 0x7

.field static final TRANSACTION_registerRCPInterface:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "com.samsung.android.knox.ISemRemoteContentManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemRemoteContentManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_4
    const-string v0, "com.samsung.android.knox.ISemRemoteContentManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_14

    .line 93
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ISemRemoteContentManager;

    return-object v1

    .line 95
    :cond_14
    new-instance v1, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_3c

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 164
    :pswitch_5
    const-string/jumbo v0, "moveFilesForAppEx"

    return-object v0

    .line 160
    :pswitch_9
    const-string v0, "exchangeData"

    return-object v0

    .line 156
    :pswitch_c
    const-string v0, "cancelCopyChunks"

    return-object v0

    .line 152
    :pswitch_f
    const-string v0, "copyChunks"

    return-object v0

    .line 148
    :pswitch_12
    const-string/jumbo v0, "getFileInfo"

    return-object v0

    .line 144
    :pswitch_16
    const-string v0, "deleteFile"

    return-object v0

    .line 140
    :pswitch_19
    const-string/jumbo v0, "getFiles"

    return-object v0

    .line 136
    :pswitch_1d
    const-string/jumbo v0, "isFileExist"

    return-object v0

    .line 132
    :pswitch_21
    const-string/jumbo v0, "moveUnlimitedFiles"

    return-object v0

    .line 128
    :pswitch_25
    const-string/jumbo v0, "moveFilesForApp"

    return-object v0

    .line 124
    :pswitch_29
    const-string v0, "copyFile"

    return-object v0

    .line 120
    :pswitch_2c
    const-string v0, "copyFileInternal"

    return-object v0

    .line 116
    :pswitch_2f
    const-string/jumbo v0, "moveFile"

    return-object v0

    .line 112
    :pswitch_33
    const-string/jumbo v0, "getRCPInterface"

    return-object v0

    .line 108
    :pswitch_37
    const-string/jumbo v0, "registerRCPInterface"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
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

    .line 735
    const/16 v0, 0xe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 175
    invoke-static {p1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 31
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "com.samsung.android.knox.ISemRemoteContentManager"

    .line 180
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_15

    const v0, 0xffffff

    if-gt v12, v0, :cond_15

    .line 181
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    :cond_15
    packed-switch v12, :pswitch_data_1d8

    .line 191
    packed-switch v12, :pswitch_data_1de

    .line 402
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 187
    :pswitch_20
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    return v10

    .line 387
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 389
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 391
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 393
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v4

    .line 396
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 398
    move v12, v10

    goto/16 :goto_1d6

    .line 373
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg3":I
    .end local v4    # "_result":J
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 378
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {v11, v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 380
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {v14, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 382
    move v12, v10

    goto/16 :goto_1d6

    .line 364
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 365
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->cancelCopyChunks(J)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    move v12, v10

    goto/16 :goto_1d6

    .line 340
    .end local v0    # "_arg0":J
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 342
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 344
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 346
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 348
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 350
    .local v20, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 352
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 354
    .local v23, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 355
    .local v25, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-wide/from16 v5, v20

    move/from16 v7, v22

    move-wide/from16 v8, v23

    move v12, v10

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    .line 357
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    goto/16 :goto_1d6

    .line 328
    .end local v0    # "_result":I
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":J
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":J
    .end local v25    # "_arg7":Z
    :pswitch_b6
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 333
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v14, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 335
    goto/16 :goto_1d6

    .line 316
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_ce
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->deleteFile(Ljava/lang/String;I)Z

    move-result v2

    .line 321
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    goto/16 :goto_1d6

    .line 304
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_e6
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 309
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 311
    goto/16 :goto_1d6

    .line 292
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_fe
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 295
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->isFileExist(Ljava/lang/String;I)Z

    move-result v2

    .line 297
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 299
    goto/16 :goto_1d6

    .line 276
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_116
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 278
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 280
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 283
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveUnlimitedFiles(ILandroid/net/Uri;II)J

    move-result-wide v4

    .line 285
    .restart local v4    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    goto/16 :goto_1d6

    .line 262
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":J
    :pswitch_13a
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 266
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 267
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {v11, v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v3

    .line 269
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {v14, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    goto/16 :goto_1d6

    .line 246
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":J
    :pswitch_156
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 255
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    goto :goto_1d6

    .line 230
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_175
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 239
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    goto :goto_1d6

    .line 214
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_194
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 223
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    goto :goto_1d6

    .line 206
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1b3
    move v12, v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 207
    .local v0, "_result":Landroid/content/IRCPInterface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 209
    goto :goto_1d6

    .line 196
    .end local v0    # "_result":Landroid/content/IRCPInterface;
    :pswitch_1bf
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IRCPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterface;

    move-result-object v0

    .line 198
    .local v0, "_arg0":Landroid/content/IRCPInterface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    nop

    .line 405
    .end local v0    # "_arg0":Landroid/content/IRCPInterface;
    .end local v1    # "_arg1":I
    :goto_1d6
    return v12

    nop

    :pswitch_data_1d8
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_1bf
        :pswitch_1b3
        :pswitch_194
        :pswitch_175
        :pswitch_156
        :pswitch_13a
        :pswitch_116
        :pswitch_fe
        :pswitch_e6
        :pswitch_ce
        :pswitch_b6
        :pswitch_74
        :pswitch_64
        :pswitch_44
        :pswitch_24
    .end packed-switch
.end method
