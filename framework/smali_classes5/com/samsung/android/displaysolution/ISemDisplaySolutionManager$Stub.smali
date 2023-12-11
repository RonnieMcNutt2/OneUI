.class public abstract Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.super Landroid/os/Binder;
.source "ISemDisplaySolutionManager.java"

# interfaces
.implements Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAlphaMaskLevel:I = 0x9

.field static final TRANSACTION_getAutoCurrentLimitOffModeEnabled:I = 0x5

.field static final TRANSACTION_getCameraModeEnable:I = 0x3

.field static final TRANSACTION_getDouAppModeEnable:I = 0x4

.field static final TRANSACTION_getFingerPrintBacklightValue:I = 0x8

.field static final TRANSACTION_getGalleryModeEnable:I = 0x2

.field static final TRANSACTION_getOnPixelRatioValueForPMS:I = 0x6

.field static final TRANSACTION_getVideoEnhancerSettingState:I = 0x7

.field static final TRANSACTION_getVideoModeEnable:I = 0x1

.field static final TRANSACTION_isBlueLightFilterScheduledTime:I = 0x21

.field static final TRANSACTION_isMdnieScenarioControlServiceEnabled:I = 0xa

.field static final TRANSACTION_onAutoCurrentLimitOffMode:I = 0x11

.field static final TRANSACTION_onAutoCurrentLimitStateChanged:I = 0xe

.field static final TRANSACTION_onAutoCurrentLimitStateChangedInt:I = 0x10

.field static final TRANSACTION_onAutoCurrentLimitStateChangedWithBrightness:I = 0xf

.field static final TRANSACTION_onBurnInPreventionDisabled:I = 0x12

.field static final TRANSACTION_onDetailVeiwStateChanged:I = 0xd

.field static final TRANSACTION_setAutoCurrentLimitOffModeEnabled:I = 0x17

.field static final TRANSACTION_setBlfEnableTimeBySchedule:I = 0x20

.field static final TRANSACTION_setCameraModeEnable:I = 0x15

.field static final TRANSACTION_setDouAppModeEnable:I = 0x16

.field static final TRANSACTION_setEadIndexOffset:I = 0x22

.field static final TRANSACTION_setEyeComfortWeightingFactor:I = 0x1d

.field static final TRANSACTION_setGalleryModeEnable:I = 0x14

.field static final TRANSACTION_setHighDynamicRangeMode:I = 0xb

.field static final TRANSACTION_setIRCompensationMode:I = 0xc

.field static final TRANSACTION_setMdnieScenarioControlServiceEnable:I = 0x18

.field static final TRANSACTION_setMultipleScreenBrightness:I = 0x1a

.field static final TRANSACTION_setMultipleScreenBrightnessValueForHDR:I = 0x1c

.field static final TRANSACTION_setOnPixelRatioValueForPMS:I = 0x1b

.field static final TRANSACTION_setScreenBrightnessForPreview:I = 0x19

.field static final TRANSACTION_setSleepPatternBLF:I = 0x1f

.field static final TRANSACTION_setVideoEnhancerSettingState:I = 0x1e

.field static final TRANSACTION_setVideoModeEnable:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 135
    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 143
    if-nez p0, :cond_4

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_4
    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 147
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v1, :cond_14

    .line 148
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    return-object v1

    .line 150
    :cond_14
    new-instance v1, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 159
    packed-switch p0, :pswitch_data_8c

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 295
    :pswitch_5
    const-string/jumbo v0, "setEadIndexOffset"

    return-object v0

    .line 291
    :pswitch_9
    const-string/jumbo v0, "isBlueLightFilterScheduledTime"

    return-object v0

    .line 287
    :pswitch_d
    const-string/jumbo v0, "setBlfEnableTimeBySchedule"

    return-object v0

    .line 283
    :pswitch_11
    const-string/jumbo v0, "setSleepPatternBLF"

    return-object v0

    .line 279
    :pswitch_15
    const-string/jumbo v0, "setVideoEnhancerSettingState"

    return-object v0

    .line 275
    :pswitch_19
    const-string/jumbo v0, "setEyeComfortWeightingFactor"

    return-object v0

    .line 271
    :pswitch_1d
    const-string/jumbo v0, "setMultipleScreenBrightnessValueForHDR"

    return-object v0

    .line 267
    :pswitch_21
    const-string/jumbo v0, "setOnPixelRatioValueForPMS"

    return-object v0

    .line 263
    :pswitch_25
    const-string/jumbo v0, "setMultipleScreenBrightness"

    return-object v0

    .line 259
    :pswitch_29
    const-string/jumbo v0, "setScreenBrightnessForPreview"

    return-object v0

    .line 255
    :pswitch_2d
    const-string/jumbo v0, "setMdnieScenarioControlServiceEnable"

    return-object v0

    .line 251
    :pswitch_31
    const-string/jumbo v0, "setAutoCurrentLimitOffModeEnabled"

    return-object v0

    .line 247
    :pswitch_35
    const-string/jumbo v0, "setDouAppModeEnable"

    return-object v0

    .line 243
    :pswitch_39
    const-string/jumbo v0, "setCameraModeEnable"

    return-object v0

    .line 239
    :pswitch_3d
    const-string/jumbo v0, "setGalleryModeEnable"

    return-object v0

    .line 235
    :pswitch_41
    const-string/jumbo v0, "setVideoModeEnable"

    return-object v0

    .line 231
    :pswitch_45
    const-string/jumbo v0, "onBurnInPreventionDisabled"

    return-object v0

    .line 227
    :pswitch_49
    const-string/jumbo v0, "onAutoCurrentLimitOffMode"

    return-object v0

    .line 223
    :pswitch_4d
    const-string/jumbo v0, "onAutoCurrentLimitStateChangedInt"

    return-object v0

    .line 219
    :pswitch_51
    const-string/jumbo v0, "onAutoCurrentLimitStateChangedWithBrightness"

    return-object v0

    .line 215
    :pswitch_55
    const-string/jumbo v0, "onAutoCurrentLimitStateChanged"

    return-object v0

    .line 211
    :pswitch_59
    const-string/jumbo v0, "onDetailVeiwStateChanged"

    return-object v0

    .line 207
    :pswitch_5d
    const-string/jumbo v0, "setIRCompensationMode"

    return-object v0

    .line 203
    :pswitch_61
    const-string/jumbo v0, "setHighDynamicRangeMode"

    return-object v0

    .line 199
    :pswitch_65
    const-string/jumbo v0, "isMdnieScenarioControlServiceEnabled"

    return-object v0

    .line 195
    :pswitch_69
    const-string v0, "getAlphaMaskLevel"

    return-object v0

    .line 191
    :pswitch_6c
    const-string/jumbo v0, "getFingerPrintBacklightValue"

    return-object v0

    .line 187
    :pswitch_70
    const-string/jumbo v0, "getVideoEnhancerSettingState"

    return-object v0

    .line 183
    :pswitch_74
    const-string/jumbo v0, "getOnPixelRatioValueForPMS"

    return-object v0

    .line 179
    :pswitch_78
    const-string/jumbo v0, "getAutoCurrentLimitOffModeEnabled"

    return-object v0

    .line 175
    :pswitch_7c
    const-string/jumbo v0, "getDouAppModeEnable"

    return-object v0

    .line 171
    :pswitch_80
    const-string/jumbo v0, "getCameraModeEnable"

    return-object v0

    .line 167
    :pswitch_84
    const-string/jumbo v0, "getGalleryModeEnable"

    return-object v0

    .line 163
    :pswitch_88
    const-string/jumbo v0, "getVideoModeEnable"

    return-object v0

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
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

    .line 154
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1233
    const/16 v0, 0x21

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 306
    invoke-static {p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 310
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    .line 311
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_16

    const v0, 0xffffff

    if-gt v8, v0, :cond_16

    .line 312
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 311
    :cond_16
    move-object/from16 v12, p2

    .line 314
    :goto_18
    packed-switch v8, :pswitch_data_236

    .line 322
    packed-switch v8, :pswitch_data_23c

    .line 633
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 318
    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    return v11

    .line 625
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setEadIndexOffset(I)V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_234

    .line 617
    .end local v0    # "_arg0":I
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isBlueLightFilterScheduledTime()Z

    move-result v0

    .line 618
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 620
    goto/16 :goto_234

    .line 607
    .end local v0    # "_result":Z
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 609
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 610
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setBlfEnableTimeBySchedule(ZI)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_234

    .line 592
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 594
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 596
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 598
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 599
    .local v18, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setSleepPatternBLF(Ljava/lang/String;JJF)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    goto/16 :goto_234

    .line 581
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":F
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto/16 :goto_234

    .line 572
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 573
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setEyeComfortWeightingFactor(F)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_234

    .line 563
    .end local v0    # "_arg0":F
    :pswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 564
    .restart local v0    # "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightnessValueForHDR(F)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_234

    .line 554
    .end local v0    # "_arg0":F
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_234

    .line 545
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_234

    .line 536
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 537
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setScreenBrightnessForPreview(I)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_234

    .line 527
    .end local v0    # "_arg0":I
    :pswitch_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 528
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMdnieScenarioControlServiceEnable(Z)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_234

    .line 518
    .end local v0    # "_arg0":Z
    :pswitch_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 519
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_234

    .line 509
    .end local v0    # "_arg0":Z
    :pswitch_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 510
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setDouAppModeEnable(Z)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_234

    .line 500
    .end local v0    # "_arg0":Z
    :pswitch_103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 501
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setCameraModeEnable(Z)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_234

    .line 491
    .end local v0    # "_arg0":Z
    :pswitch_112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 492
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setGalleryModeEnable(Z)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    goto/16 :goto_234

    .line 482
    .end local v0    # "_arg0":Z
    :pswitch_121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 483
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoModeEnable(Z)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_234

    .line 473
    .end local v0    # "_arg0":Z
    :pswitch_130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 474
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onBurnInPreventionDisabled(Z)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_234

    .line 464
    .end local v0    # "_arg0":Z
    :pswitch_13f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 465
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitOffMode(Z)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto/16 :goto_234

    .line 455
    .end local v0    # "_arg0":Z
    :pswitch_14e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedInt(I)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_234

    .line 446
    .end local v0    # "_arg0":I
    :pswitch_15d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 447
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedWithBrightness(Z)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    goto/16 :goto_234

    .line 437
    .end local v0    # "_arg0":Z
    :pswitch_16c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 438
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChanged(Z)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto/16 :goto_234

    .line 428
    .end local v0    # "_arg0":Z
    :pswitch_17b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 429
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onDetailVeiwStateChanged(Z)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_234

    .line 419
    .end local v0    # "_arg0":Z
    :pswitch_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 420
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setIRCompensationMode(Z)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_234

    .line 410
    .end local v0    # "_arg0":Z
    :pswitch_199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 411
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setHighDynamicRangeMode(Z)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_234

    .line 402
    .end local v0    # "_arg0":Z
    :pswitch_1a8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    .line 403
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 405
    goto/16 :goto_234

    .line 389
    .end local v0    # "_result":Z
    :pswitch_1b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 391
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 393
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 394
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAlphaMaskLevel(FFF)F

    move-result v3

    .line 396
    .local v3, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 398
    goto :goto_234

    .line 379
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_result":F
    :pswitch_1ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 380
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getFingerPrintBacklightValue(I)F

    move-result v1

    .line 382
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 384
    goto :goto_234

    .line 369
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_1e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v1

    .line 372
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    goto :goto_234

    .line 361
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_1f2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    goto :goto_234

    .line 354
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1fd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0

    .line 355
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 357
    goto :goto_234

    .line 347
    .end local v0    # "_result":Z
    :pswitch_208
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDouAppModeEnable()Z

    move-result v0

    .line 348
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 350
    goto :goto_234

    .line 340
    .end local v0    # "_result":Z
    :pswitch_213
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getCameraModeEnable()Z

    move-result v0

    .line 341
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    goto :goto_234

    .line 333
    .end local v0    # "_result":Z
    :pswitch_21e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getGalleryModeEnable()Z

    move-result v0

    .line 334
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 336
    goto :goto_234

    .line 326
    .end local v0    # "_result":Z
    :pswitch_229
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoModeEnable()Z

    move-result v0

    .line 327
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    nop

    .line 636
    .end local v0    # "_result":Z
    :goto_234
    return v11

    nop

    :pswitch_data_236
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x1
        :pswitch_229
        :pswitch_21e
        :pswitch_213
        :pswitch_208
        :pswitch_1fd
        :pswitch_1f2
        :pswitch_1e0
        :pswitch_1ce
        :pswitch_1b4
        :pswitch_1a8
        :pswitch_199
        :pswitch_18a
        :pswitch_17b
        :pswitch_16c
        :pswitch_15d
        :pswitch_14e
        :pswitch_13f
        :pswitch_130
        :pswitch_121
        :pswitch_112
        :pswitch_103
        :pswitch_f4
        :pswitch_e5
        :pswitch_d6
        :pswitch_c7
        :pswitch_b8
        :pswitch_a9
        :pswitch_9a
        :pswitch_8b
        :pswitch_78
        :pswitch_55
        :pswitch_42
        :pswitch_36
        :pswitch_27
    .end packed-switch
.end method
