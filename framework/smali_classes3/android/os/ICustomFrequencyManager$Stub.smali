.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acquire:I = 0x65

.field static final TRANSACTION_addDvfsLockAllowedUid:I = 0x54

.field static final TRANSACTION_checkHintExist:I = 0x68

.field static final TRANSACTION_checkResourceExist:I = 0x69

.field static final TRANSACTION_checkSysfsIdExist:I = 0x6c

.field static final TRANSACTION_disableGpisHint:I = 0x6e

.field static final TRANSACTION_enableInteractionHint:I = 0x70

.field static final TRANSACTION_getBatteryRemainingUsageTime:I = 0x40

.field static final TRANSACTION_getGameThrottlingLevel:I = 0x4b

.field static final TRANSACTION_getProcessCpuUsage:I = 0x52

.field static final TRANSACTION_getSsrmStatus:I = 0x32

.field static final TRANSACTION_getSupportedFrequency:I = 0x67

.field static final TRANSACTION_mpdUpdate:I = 0xf

.field static final TRANSACTION_readFile:I = 0x53

.field static final TRANSACTION_readSysfs:I = 0x6b

.field static final TRANSACTION_release:I = 0x66

.field static final TRANSACTION_removeDvfsLockAllowedUid:I = 0x55

.field static final TRANSACTION_requestCPUUpdate:I = 0xe

.field static final TRANSACTION_requestFreezeSlowdown:I = 0x58

.field static final TRANSACTION_requestGpis:I = 0x5c

.field static final TRANSACTION_requestMpParameterUpdate:I = 0xd

.field static final TRANSACTION_restrictApp:I = 0x6d

.field static final TRANSACTION_sendCommandToSSRM:I = 0x30

.field static final TRANSACTION_sendDrawingTid:I = 0x57

.field static final TRANSACTION_setFrozenTime:I = 0x59

.field static final TRANSACTION_setGameFps:I = 0x4a

.field static final TRANSACTION_setGamePowerSaving:I = 0x49

.field static final TRANSACTION_setGameTouchParam:I = 0x4d

.field static final TRANSACTION_setGameTurboMode:I = 0x4c

.field static final TRANSACTION_setGpisHint:I = 0x6f

.field static final TRANSACTION_supportVRTemperaturesInformation:I = 0x33

.field static final TRANSACTION_unsetGameTouchParam:I = 0x4e

.field static final TRANSACTION_writeSysfs:I = 0x6a


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 135
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 143
    if-nez p0, :cond_4

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_4
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 147
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_14

    .line 148
    move-object v1, v0

    check-cast v1, Landroid/os/ICustomFrequencyManager;

    return-object v1

    .line 150
    :cond_14
    new-instance v1, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 159
    sparse-switch p0, :sswitch_data_80

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 287
    :sswitch_5
    const-string v0, "enableInteractionHint"

    return-object v0

    .line 291
    :sswitch_8
    const-string/jumbo v0, "setGpisHint"

    return-object v0

    .line 283
    :sswitch_c
    const-string v0, "disableGpisHint"

    return-object v0

    .line 279
    :sswitch_f
    const-string/jumbo v0, "restrictApp"

    return-object v0

    .line 275
    :sswitch_13
    const-string v0, "checkSysfsIdExist"

    return-object v0

    .line 271
    :sswitch_16
    const-string/jumbo v0, "readSysfs"

    return-object v0

    .line 267
    :sswitch_1a
    const-string/jumbo v0, "writeSysfs"

    return-object v0

    .line 263
    :sswitch_1e
    const-string v0, "checkResourceExist"

    return-object v0

    .line 259
    :sswitch_21
    const-string v0, "checkHintExist"

    return-object v0

    .line 255
    :sswitch_24
    const-string/jumbo v0, "getSupportedFrequency"

    return-object v0

    .line 251
    :sswitch_28
    const-string/jumbo v0, "release"

    return-object v0

    .line 247
    :sswitch_2c
    const-string v0, "acquire"

    return-object v0

    .line 243
    :sswitch_2f
    const-string/jumbo v0, "requestGpis"

    return-object v0

    .line 239
    :sswitch_33
    const-string/jumbo v0, "setFrozenTime"

    return-object v0

    .line 235
    :sswitch_37
    const-string/jumbo v0, "requestFreezeSlowdown"

    return-object v0

    .line 231
    :sswitch_3b
    const-string/jumbo v0, "sendDrawingTid"

    return-object v0

    .line 227
    :sswitch_3f
    const-string/jumbo v0, "removeDvfsLockAllowedUid"

    return-object v0

    .line 223
    :sswitch_43
    const-string v0, "addDvfsLockAllowedUid"

    return-object v0

    .line 219
    :sswitch_46
    const-string/jumbo v0, "readFile"

    return-object v0

    .line 215
    :sswitch_4a
    const-string/jumbo v0, "getProcessCpuUsage"

    return-object v0

    .line 211
    :sswitch_4e
    const-string/jumbo v0, "unsetGameTouchParam"

    return-object v0

    .line 207
    :sswitch_52
    const-string/jumbo v0, "setGameTouchParam"

    return-object v0

    .line 203
    :sswitch_56
    const-string/jumbo v0, "setGameTurboMode"

    return-object v0

    .line 199
    :sswitch_5a
    const-string v0, "getGameThrottlingLevel"

    return-object v0

    .line 195
    :sswitch_5d
    const-string/jumbo v0, "setGameFps"

    return-object v0

    .line 191
    :sswitch_61
    const-string/jumbo v0, "setGamePowerSaving"

    return-object v0

    .line 187
    :sswitch_65
    const-string v0, "getBatteryRemainingUsageTime"

    return-object v0

    .line 183
    :sswitch_68
    const-string/jumbo v0, "supportVRTemperaturesInformation"

    return-object v0

    .line 179
    :sswitch_6c
    const-string/jumbo v0, "getSsrmStatus"

    return-object v0

    .line 175
    :sswitch_70
    const-string/jumbo v0, "sendCommandToSSRM"

    return-object v0

    .line 171
    :sswitch_74
    const-string/jumbo v0, "mpdUpdate"

    return-object v0

    .line 167
    :sswitch_78
    const-string/jumbo v0, "requestCPUUpdate"

    return-object v0

    .line 163
    :sswitch_7c
    const-string/jumbo v0, "requestMpParameterUpdate"

    return-object v0

    :sswitch_data_80
    .sparse-switch
        0xd -> :sswitch_7c
        0xe -> :sswitch_78
        0xf -> :sswitch_74
        0x30 -> :sswitch_70
        0x32 -> :sswitch_6c
        0x33 -> :sswitch_68
        0x40 -> :sswitch_65
        0x49 -> :sswitch_61
        0x4a -> :sswitch_5d
        0x4b -> :sswitch_5a
        0x4c -> :sswitch_56
        0x4d -> :sswitch_52
        0x4e -> :sswitch_4e
        0x52 -> :sswitch_4a
        0x53 -> :sswitch_46
        0x54 -> :sswitch_43
        0x55 -> :sswitch_3f
        0x57 -> :sswitch_3b
        0x58 -> :sswitch_37
        0x59 -> :sswitch_33
        0x5c -> :sswitch_2f
        0x65 -> :sswitch_2c
        0x66 -> :sswitch_28
        0x67 -> :sswitch_24
        0x68 -> :sswitch_21
        0x69 -> :sswitch_1e
        0x6a -> :sswitch_1a
        0x6b -> :sswitch_16
        0x6c -> :sswitch_13
        0x6d -> :sswitch_f
        0x6e -> :sswitch_c
        0x6f -> :sswitch_8
        0x70 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 154
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1257
    const/16 v0, 0x6f

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 302
    invoke-static {p1}, Landroid/os/ICustomFrequencyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 306
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.os.ICustomFrequencyManager"

    .line 307
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    .line 308
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 307
    :cond_16
    move-object/from16 v11, p2

    .line 310
    :goto_18
    packed-switch v7, :pswitch_data_282

    .line 318
    sparse-switch v7, :sswitch_data_288

    .line 662
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 314
    :pswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    return v10

    .line 645
    :sswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 646
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->enableInteractionHint(Z)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_281

    .line 654
    .end local v0    # "_arg0":Z
    :sswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 655
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGpisHint(Z)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    goto/16 :goto_281

    .line 638
    .end local v0    # "_arg0":Z
    :sswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->disableGpisHint()V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_281

    .line 626
    :sswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 631
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->restrictApp(Ljava/lang/String;II)V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_281

    .line 616
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 617
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysfsIdExist(I)Z

    move-result v1

    .line 619
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 621
    goto/16 :goto_281

    .line 606
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 607
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->readSysfs(I)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    goto/16 :goto_281

    .line 596
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 598
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->writeSysfs(ILjava/lang/String;)V

    .line 601
    goto/16 :goto_281

    .line 586
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 587
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkResourceExist(I)Z

    move-result v1

    .line 589
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 591
    goto/16 :goto_281

    .line 576
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkHintExist(I)Z

    move-result v1

    .line 579
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 581
    goto/16 :goto_281

    .line 564
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedFrequency(II)[I

    move-result-object v2

    .line 569
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 571
    goto/16 :goto_281

    .line 554
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    :sswitch_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 556
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->release(II)V

    .line 559
    goto/16 :goto_281

    .line 538
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 540
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 542
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 544
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 546
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 547
    .local v16, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/ICustomFrequencyManager$Stub;->acquire(IILjava/lang/String;I[I)V

    .line 549
    goto/16 :goto_281

    .line 526
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[I
    :sswitch_10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 530
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 531
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestGpis(III)V

    .line 533
    goto/16 :goto_281

    .line 517
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_11f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 518
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setFrozenTime(I)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto/16 :goto_281

    .line 503
    .end local v0    # "_arg0":I
    :sswitch_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 505
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 507
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v3

    .line 510
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    goto/16 :goto_281

    .line 491
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 493
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 496
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->sendDrawingTid(III)V

    .line 498
    goto/16 :goto_281

    .line 481
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_15d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 482
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->removeDvfsLockAllowedUid(I)Z

    move-result v1

    .line 484
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    goto/16 :goto_281

    .line 471
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 472
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->addDvfsLockAllowedUid(I)I

    move-result v1

    .line 474
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    goto/16 :goto_281

    .line 459
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 462
    .local v1, "_arg1":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    goto/16 :goto_281

    .line 449
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":C
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_19b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 450
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getProcessCpuUsage([I)Landroid/os/CpuTrackerInfo;

    move-result-object v1

    .line 452
    .local v1, "_result":Landroid/os/CpuTrackerInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {v8, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 454
    goto/16 :goto_281

    .line 442
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Landroid/os/CpuTrackerInfo;
    :sswitch_1ae
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->unsetGameTouchParam()V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto/16 :goto_281

    .line 430
    :sswitch_1b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_281

    .line 421
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_1cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 422
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTurboMode(Z)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    goto/16 :goto_281

    .line 413
    .end local v0    # "_arg0":Z
    :sswitch_1dc
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->getGameThrottlingLevel()I

    move-result v0

    .line 414
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    goto/16 :goto_281

    .line 405
    .end local v0    # "_result":I
    :sswitch_1e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 406
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGameFps(I)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    goto/16 :goto_281

    .line 396
    .end local v0    # "_arg0":I
    :sswitch_1f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 397
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGamePowerSaving(Z)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_281

    .line 386
    .end local v0    # "_arg0":Z
    :sswitch_206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 387
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryRemainingUsageTime(I)I

    move-result v1

    .line 389
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    goto :goto_281

    .line 372
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 376
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->supportVRTemperaturesInformation(Ljava/lang/String;II)[F

    move-result-object v3

    .line 379
    .local v3, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 381
    goto :goto_281

    .line 362
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[F
    :sswitch_232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getSsrmStatus(I)I

    move-result v1

    .line 365
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    goto :goto_281

    .line 352
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    goto :goto_281

    .line 343
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->mpdUpdate(I)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto :goto_281

    .line 332
    .end local v0    # "_arg0":I
    :sswitch_261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 335
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUUpdate(II)V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto :goto_281

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestMpParameterUpdate(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    nop

    .line 665
    .end local v0    # "_arg0":Ljava/lang/String;
    :goto_281
    return v10

    :pswitch_data_282
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :sswitch_data_288
    .sparse-switch
        0xd -> :sswitch_273
        0xe -> :sswitch_261
        0xf -> :sswitch_253
        0x30 -> :sswitch_244
        0x32 -> :sswitch_232
        0x33 -> :sswitch_218
        0x40 -> :sswitch_206
        0x49 -> :sswitch_1f7
        0x4a -> :sswitch_1e8
        0x4b -> :sswitch_1dc
        0x4c -> :sswitch_1cd
        0x4d -> :sswitch_1b6
        0x4e -> :sswitch_1ae
        0x52 -> :sswitch_19b
        0x53 -> :sswitch_183
        0x54 -> :sswitch_170
        0x55 -> :sswitch_15d
        0x57 -> :sswitch_149
        0x58 -> :sswitch_12e
        0x59 -> :sswitch_11f
        0x5c -> :sswitch_10b
        0x65 -> :sswitch_e7
        0x66 -> :sswitch_d7
        0x67 -> :sswitch_c0
        0x68 -> :sswitch_ad
        0x69 -> :sswitch_9a
        0x6a -> :sswitch_8a
        0x6b -> :sswitch_77
        0x6c -> :sswitch_64
        0x6d -> :sswitch_4d
        0x6e -> :sswitch_45
        0x6f -> :sswitch_36
        0x70 -> :sswitch_27
    .end sparse-switch
.end method
