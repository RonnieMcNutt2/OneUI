.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final TRANSACTION_OnStartGestureWakeup:I = 0x3e

.field static final TRANSACTION_OnStopGestureWakeup:I = 0x3f

.field static final TRANSACTION_addAccessibilityInteractionConnection:I = 0x7

.field static final TRANSACTION_addClient:I = 0x3

.field static final TRANSACTION_associateEmbeddedHierarchy:I = 0x17

.field static final TRANSACTION_convertPixelToDpi:I = 0x3b

.field static final TRANSACTION_disassociateEmbeddedHierarchy:I = 0x18

.field static final TRANSACTION_getAccessibilityShortcutTargets:I = 0x10

.field static final TRANSACTION_getAccessibilityWindowId:I = 0x12

.field static final TRANSACTION_getEnabledAccessibilityServiceList:I = 0x6

.field static final TRANSACTION_getFocusColor:I = 0x1a

.field static final TRANSACTION_getFocusStrokeWidth:I = 0x19

.field static final TRANSACTION_getInstalledAccessibilityServiceList:I = 0x5

.field static final TRANSACTION_getRecommendedTimeoutMillis:I = 0x13

.field static final TRANSACTION_getScreenReaderName:I = 0x39

.field static final TRANSACTION_getWindowToken:I = 0xc

.field static final TRANSACTION_getWindowTransformationSpec:I = 0x28

.field static final TRANSACTION_injectInputEventToInputFilter:I = 0x22

.field static final TRANSACTION_interrupt:I = 0x1

.field static final TRANSACTION_isAccessibilityTargetAllowed:I = 0x26

.field static final TRANSACTION_isActivatedMagnification:I = 0x4a

.field static final TRANSACTION_isAudioDescriptionByDefaultEnabled:I = 0x1b

.field static final TRANSACTION_isScreenReaderEnabled:I = 0x38

.field static final TRANSACTION_isSystemAudioCaptioningUiEnabled:I = 0x1d

.field static final TRANSACTION_isTwoFingerGestureRecognitionEnabled:I = 0x37

.field static final TRANSACTION_notifyAccessibilityButtonClicked:I = 0xd

.field static final TRANSACTION_notifyAccessibilityButtonVisibilityChanged:I = 0xe

.field static final TRANSACTION_performAccessibilityDirectAccess:I = 0x43

.field static final TRANSACTION_performAccessibilityShortcut:I = 0xf

.field static final TRANSACTION_registerProxyForDisplay:I = 0x20

.field static final TRANSACTION_registerSystemAction:I = 0x14

.field static final TRANSACTION_registerUiTestAutomationService:I = 0xa

.field static final TRANSACTION_removeAccessibilityInteractionConnection:I = 0x8

.field static final TRANSACTION_removeClient:I = 0x4

.field static final TRANSACTION_semCheckMdnieColorBlind:I = 0x2d

.field static final TRANSACTION_semDisableMdnieColorFilter:I = 0x30

.field static final TRANSACTION_semDisableWindowMagnification:I = 0x47

.field static final TRANSACTION_semDumpCallStack:I = 0x42

.field static final TRANSACTION_semEnableMdnieColorFilter:I = 0x2f

.field static final TRANSACTION_semEnableWindowMagnification:I = 0x46

.field static final TRANSACTION_semGetWindowMagnificationBounds:I = 0x44

.field static final TRANSACTION_semGetWindowMagnificationScale:I = 0x45

.field static final TRANSACTION_semIsAccessibilityButtonShown:I = 0x40

.field static final TRANSACTION_semIsAccessibilityServiceEnabled:I = 0x29

.field static final TRANSACTION_semIsDarkScreenMode:I = 0x31

.field static final TRANSACTION_semIsWindowMagnificationEnabled:I = 0x49

.field static final TRANSACTION_semLockNow:I = 0x3d

.field static final TRANSACTION_semMoveWindowMagnification:I = 0x48

.field static final TRANSACTION_semOpenDeviceOptions:I = 0x35

.field static final TRANSACTION_semPerformAccessibilityButtonClick:I = 0x4b

.field static final TRANSACTION_semRegisterAssistantMenu:I = 0x34

.field static final TRANSACTION_semSetColorBlind:I = 0x2c

.field static final TRANSACTION_semSetMdnieAccessibilityMode:I = 0x2e

.field static final TRANSACTION_semSetTwoFingerGestureRecognitionEnabled:I = 0x36

.field static final TRANSACTION_semToggleDarkScreenMode:I = 0x32

.field static final TRANSACTION_semTurnOffAccessibilityService:I = 0x2a

.field static final TRANSACTION_semTurnOnAccessibilityService:I = 0x2b

.field static final TRANSACTION_semUpdateAssitantMenu:I = 0x33

.field static final TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final TRANSACTION_sendFingerprintGesture:I = 0x11

.field static final TRANSACTION_sendRestrictedDialogIntent:I = 0x27

.field static final TRANSACTION_setAccessibilityWindowAttributes:I = 0x1f

.field static final TRANSACTION_setMagnificationDisactivate:I = 0x41

.field static final TRANSACTION_setPictureInPictureActionReplacingConnection:I = 0x9

.field static final TRANSACTION_setScreenReaderEnabled:I = 0x3a

.field static final TRANSACTION_setSystemAudioCaptioningEnabled:I = 0x1c

.field static final TRANSACTION_setSystemAudioCaptioningUiEnabled:I = 0x1e

.field static final TRANSACTION_setTalkbackMode:I = 0x3c

.field static final TRANSACTION_setWindowMagnificationConnection:I = 0x16

.field static final TRANSACTION_startFlashNotificationEvent:I = 0x25

.field static final TRANSACTION_startFlashNotificationSequence:I = 0x23

.field static final TRANSACTION_stopFlashNotificationSequence:I = 0x24

.field static final TRANSACTION_unregisterProxyForDisplay:I = 0x21

.field static final TRANSACTION_unregisterSystemAction:I = 0x15

.field static final TRANSACTION_unregisterUiTestAutomationService:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 327
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 328
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 336
    if-nez p0, :cond_4

    .line 337
    const/4 v0, 0x0

    return-object v0

    .line 339
    :cond_4
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 340
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_14

    .line 341
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityManager;

    return-object v1

    .line 343
    :cond_14
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 352
    packed-switch p0, :pswitch_data_118

    .line 656
    const/4 v0, 0x0

    return-object v0

    .line 652
    :pswitch_5
    const-string/jumbo v0, "semPerformAccessibilityButtonClick"

    return-object v0

    .line 648
    :pswitch_9
    const-string v0, "isActivatedMagnification"

    return-object v0

    .line 644
    :pswitch_c
    const-string/jumbo v0, "semIsWindowMagnificationEnabled"

    return-object v0

    .line 640
    :pswitch_10
    const-string/jumbo v0, "semMoveWindowMagnification"

    return-object v0

    .line 636
    :pswitch_14
    const-string/jumbo v0, "semDisableWindowMagnification"

    return-object v0

    .line 632
    :pswitch_18
    const-string/jumbo v0, "semEnableWindowMagnification"

    return-object v0

    .line 628
    :pswitch_1c
    const-string/jumbo v0, "semGetWindowMagnificationScale"

    return-object v0

    .line 624
    :pswitch_20
    const-string/jumbo v0, "semGetWindowMagnificationBounds"

    return-object v0

    .line 620
    :pswitch_24
    const-string/jumbo v0, "performAccessibilityDirectAccess"

    return-object v0

    .line 616
    :pswitch_28
    const-string/jumbo v0, "semDumpCallStack"

    return-object v0

    .line 612
    :pswitch_2c
    const-string/jumbo v0, "setMagnificationDisactivate"

    return-object v0

    .line 608
    :pswitch_30
    const-string/jumbo v0, "semIsAccessibilityButtonShown"

    return-object v0

    .line 604
    :pswitch_34
    const-string v0, "OnStopGestureWakeup"

    return-object v0

    .line 600
    :pswitch_37
    const-string v0, "OnStartGestureWakeup"

    return-object v0

    .line 596
    :pswitch_3a
    const-string/jumbo v0, "semLockNow"

    return-object v0

    .line 592
    :pswitch_3e
    const-string/jumbo v0, "setTalkbackMode"

    return-object v0

    .line 588
    :pswitch_42
    const-string v0, "convertPixelToDpi"

    return-object v0

    .line 584
    :pswitch_45
    const-string/jumbo v0, "setScreenReaderEnabled"

    return-object v0

    .line 580
    :pswitch_49
    const-string v0, "getScreenReaderName"

    return-object v0

    .line 576
    :pswitch_4c
    const-string v0, "isScreenReaderEnabled"

    return-object v0

    .line 572
    :pswitch_4f
    const-string v0, "isTwoFingerGestureRecognitionEnabled"

    return-object v0

    .line 568
    :pswitch_52
    const-string/jumbo v0, "semSetTwoFingerGestureRecognitionEnabled"

    return-object v0

    .line 564
    :pswitch_56
    const-string/jumbo v0, "semOpenDeviceOptions"

    return-object v0

    .line 560
    :pswitch_5a
    const-string/jumbo v0, "semRegisterAssistantMenu"

    return-object v0

    .line 556
    :pswitch_5e
    const-string/jumbo v0, "semUpdateAssitantMenu"

    return-object v0

    .line 552
    :pswitch_62
    const-string/jumbo v0, "semToggleDarkScreenMode"

    return-object v0

    .line 548
    :pswitch_66
    const-string/jumbo v0, "semIsDarkScreenMode"

    return-object v0

    .line 544
    :pswitch_6a
    const-string/jumbo v0, "semDisableMdnieColorFilter"

    return-object v0

    .line 540
    :pswitch_6e
    const-string/jumbo v0, "semEnableMdnieColorFilter"

    return-object v0

    .line 536
    :pswitch_72
    const-string/jumbo v0, "semSetMdnieAccessibilityMode"

    return-object v0

    .line 532
    :pswitch_76
    const-string/jumbo v0, "semCheckMdnieColorBlind"

    return-object v0

    .line 528
    :pswitch_7a
    const-string/jumbo v0, "semSetColorBlind"

    return-object v0

    .line 524
    :pswitch_7e
    const-string/jumbo v0, "semTurnOnAccessibilityService"

    return-object v0

    .line 520
    :pswitch_82
    const-string/jumbo v0, "semTurnOffAccessibilityService"

    return-object v0

    .line 516
    :pswitch_86
    const-string/jumbo v0, "semIsAccessibilityServiceEnabled"

    return-object v0

    .line 512
    :pswitch_8a
    const-string v0, "getWindowTransformationSpec"

    return-object v0

    .line 508
    :pswitch_8d
    const-string/jumbo v0, "sendRestrictedDialogIntent"

    return-object v0

    .line 504
    :pswitch_91
    const-string v0, "isAccessibilityTargetAllowed"

    return-object v0

    .line 500
    :pswitch_94
    const-string/jumbo v0, "startFlashNotificationEvent"

    return-object v0

    .line 496
    :pswitch_98
    const-string/jumbo v0, "stopFlashNotificationSequence"

    return-object v0

    .line 492
    :pswitch_9c
    const-string/jumbo v0, "startFlashNotificationSequence"

    return-object v0

    .line 488
    :pswitch_a0
    const-string v0, "injectInputEventToInputFilter"

    return-object v0

    .line 484
    :pswitch_a3
    const-string/jumbo v0, "unregisterProxyForDisplay"

    return-object v0

    .line 480
    :pswitch_a7
    const-string/jumbo v0, "registerProxyForDisplay"

    return-object v0

    .line 476
    :pswitch_ab
    const-string/jumbo v0, "setAccessibilityWindowAttributes"

    return-object v0

    .line 472
    :pswitch_af
    const-string/jumbo v0, "setSystemAudioCaptioningUiEnabled"

    return-object v0

    .line 468
    :pswitch_b3
    const-string v0, "isSystemAudioCaptioningUiEnabled"

    return-object v0

    .line 464
    :pswitch_b6
    const-string/jumbo v0, "setSystemAudioCaptioningEnabled"

    return-object v0

    .line 460
    :pswitch_ba
    const-string v0, "isAudioDescriptionByDefaultEnabled"

    return-object v0

    .line 456
    :pswitch_bd
    const-string v0, "getFocusColor"

    return-object v0

    .line 452
    :pswitch_c0
    const-string v0, "getFocusStrokeWidth"

    return-object v0

    .line 448
    :pswitch_c3
    const-string v0, "disassociateEmbeddedHierarchy"

    return-object v0

    .line 444
    :pswitch_c6
    const-string v0, "associateEmbeddedHierarchy"

    return-object v0

    .line 440
    :pswitch_c9
    const-string/jumbo v0, "setWindowMagnificationConnection"

    return-object v0

    .line 436
    :pswitch_cd
    const-string/jumbo v0, "unregisterSystemAction"

    return-object v0

    .line 432
    :pswitch_d1
    const-string/jumbo v0, "registerSystemAction"

    return-object v0

    .line 428
    :pswitch_d5
    const-string v0, "getRecommendedTimeoutMillis"

    return-object v0

    .line 424
    :pswitch_d8
    const-string v0, "getAccessibilityWindowId"

    return-object v0

    .line 420
    :pswitch_db
    const-string/jumbo v0, "sendFingerprintGesture"

    return-object v0

    .line 416
    :pswitch_df
    const-string v0, "getAccessibilityShortcutTargets"

    return-object v0

    .line 412
    :pswitch_e2
    const-string/jumbo v0, "performAccessibilityShortcut"

    return-object v0

    .line 408
    :pswitch_e6
    const-string/jumbo v0, "notifyAccessibilityButtonVisibilityChanged"

    return-object v0

    .line 404
    :pswitch_ea
    const-string/jumbo v0, "notifyAccessibilityButtonClicked"

    return-object v0

    .line 400
    :pswitch_ee
    const-string v0, "getWindowToken"

    return-object v0

    .line 396
    :pswitch_f1
    const-string/jumbo v0, "unregisterUiTestAutomationService"

    return-object v0

    .line 392
    :pswitch_f5
    const-string/jumbo v0, "registerUiTestAutomationService"

    return-object v0

    .line 388
    :pswitch_f9
    const-string/jumbo v0, "setPictureInPictureActionReplacingConnection"

    return-object v0

    .line 384
    :pswitch_fd
    const-string/jumbo v0, "removeAccessibilityInteractionConnection"

    return-object v0

    .line 380
    :pswitch_101
    const-string v0, "addAccessibilityInteractionConnection"

    return-object v0

    .line 376
    :pswitch_104
    const-string v0, "getEnabledAccessibilityServiceList"

    return-object v0

    .line 372
    :pswitch_107
    const-string v0, "getInstalledAccessibilityServiceList"

    return-object v0

    .line 368
    :pswitch_10a
    const-string/jumbo v0, "removeClient"

    return-object v0

    .line 364
    :pswitch_10e
    const-string v0, "addClient"

    return-object v0

    .line 360
    :pswitch_111
    const-string/jumbo v0, "sendAccessibilityEvent"

    return-object v0

    .line 356
    :pswitch_115
    const-string v0, "interrupt"

    return-object v0

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_115
        :pswitch_111
        :pswitch_10e
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fd
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e2
        :pswitch_df
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b6
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 347
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2777
    const/16 v0, 0x4a

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 663
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 667
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.view.accessibility.IAccessibilityManager"

    .line 668
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 669
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    :cond_15
    packed-switch v7, :pswitch_data_55e

    .line 679
    packed-switch v7, :pswitch_data_564

    .line 1400
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 675
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    return v11

    .line 1388
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1390
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1392
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1393
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semPerformAccessibilityButtonClick(IILjava/lang/String;)V

    .line 1395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    goto/16 :goto_55c

    .line 1380
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isActivatedMagnification()Z

    move-result v0

    .line 1381
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1383
    goto/16 :goto_55c

    .line 1373
    .end local v0    # "_result":Z
    :pswitch_47
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsWindowMagnificationEnabled()Z

    move-result v0

    .line 1374
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1376
    goto/16 :goto_55c

    .line 1363
    .end local v0    # "_result":Z
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1365
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1366
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semMoveWindowMagnification(FF)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    goto/16 :goto_55c

    .line 1356
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableWindowMagnification()V

    .line 1357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    goto/16 :goto_55c

    .line 1346
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1348
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1349
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableWindowMagnification(II)V

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    goto/16 :goto_55c

    .line 1338
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_81
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semGetWindowMagnificationScale()F

    move-result v0

    .line 1339
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1341
    goto/16 :goto_55c

    .line 1331
    .end local v0    # "_result":F
    :pswitch_8d
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semGetWindowMagnificationBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1332
    .local v0, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1334
    goto/16 :goto_55c

    .line 1323
    .end local v0    # "_result":Landroid/graphics/Rect;
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityDirectAccess(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    goto/16 :goto_55c

    .line 1314
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDumpCallStack(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    goto/16 :goto_55c

    .line 1307
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b7
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationDisactivate()V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    goto/16 :goto_55c

    .line 1300
    :pswitch_bf
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsAccessibilityButtonShown()Z

    move-result v0

    .line 1301
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1303
    goto/16 :goto_55c

    .line 1293
    .end local v0    # "_result":Z
    :pswitch_cb
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStopGestureWakeup()Z

    move-result v0

    .line 1294
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1296
    goto/16 :goto_55c

    .line 1286
    .end local v0    # "_result":Z
    :pswitch_d7
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStartGestureWakeup()Z

    move-result v0

    .line 1287
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1289
    goto/16 :goto_55c

    .line 1280
    .end local v0    # "_result":Z
    :pswitch_e3
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semLockNow()V

    .line 1281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    goto/16 :goto_55c

    .line 1274
    :pswitch_eb
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTalkbackMode()V

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    goto/16 :goto_55c

    .line 1265
    :pswitch_f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1266
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->convertPixelToDpi(F)I

    move-result v1

    .line 1268
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    goto/16 :goto_55c

    .line 1256
    .end local v0    # "_arg0":F
    .end local v1    # "_result":I
    :pswitch_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1257
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setScreenReaderEnabled(Z)V

    .line 1259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    goto/16 :goto_55c

    .line 1248
    .end local v0    # "_arg0":Z
    :pswitch_115
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getScreenReaderName()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1251
    goto/16 :goto_55c

    .line 1241
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_121
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isScreenReaderEnabled()Z

    move-result v0

    .line 1242
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1244
    goto/16 :goto_55c

    .line 1234
    .end local v0    # "_result":Z
    :pswitch_12d
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v0

    .line 1235
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1237
    goto/16 :goto_55c

    .line 1226
    .end local v0    # "_result":Z
    :pswitch_139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1227
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetTwoFingerGestureRecognitionEnabled(Z)V

    .line 1229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    goto/16 :goto_55c

    .line 1219
    .end local v0    # "_arg0":Z
    :pswitch_148
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semOpenDeviceOptions()V

    .line 1220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    goto/16 :goto_55c

    .line 1211
    :pswitch_150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1212
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semRegisterAssistantMenu(Landroid/os/IBinder;)V

    .line 1214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    goto/16 :goto_55c

    .line 1202
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_15f
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1203
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 1205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_55c

    .line 1195
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_172
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semToggleDarkScreenMode()V

    .line 1196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    goto/16 :goto_55c

    .line 1188
    :pswitch_17a
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsDarkScreenMode()Z

    move-result v0

    .line 1189
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1191
    goto/16 :goto_55c

    .line 1181
    .end local v0    # "_result":Z
    :pswitch_186
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableMdnieColorFilter()Z

    move-result v0

    .line 1182
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1184
    goto/16 :goto_55c

    .line 1170
    .end local v0    # "_result":Z
    :pswitch_192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1172
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1173
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1174
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableMdnieColorFilter(II)Z

    move-result v2

    .line 1175
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1177
    goto/16 :goto_55c

    .line 1158
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1160
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1161
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieAccessibilityMode(IZ)Z

    move-result v2

    .line 1163
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1165
    goto/16 :goto_55c

    .line 1148
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_1c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1149
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semCheckMdnieColorBlind([I)Z

    move-result v1

    .line 1151
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1153
    goto/16 :goto_55c

    .line 1136
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Z
    :pswitch_1d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1138
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1139
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1140
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetColorBlind(ZF)Z

    move-result v2

    .line 1141
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1143
    goto/16 :goto_55c

    .line 1127
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":F
    .end local v2    # "_result":Z
    :pswitch_1ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1128
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOnAccessibilityService(I)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    goto/16 :goto_55c

    .line 1118
    .end local v0    # "_arg0":I
    :pswitch_1f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1119
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOffAccessibilityService(I)V

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    goto/16 :goto_55c

    .line 1108
    .end local v0    # "_arg0":I
    :pswitch_208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1109
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1110
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    .line 1111
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1113
    goto/16 :goto_55c

    .line 1098
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_21b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1099
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    .line 1101
    .local v1, "_result":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1103
    goto/16 :goto_55c

    .line 1084
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    :pswitch_22e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1088
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1089
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendRestrictedDialogIntent(Ljava/lang/String;II)Z

    move-result v3

    .line 1091
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1093
    goto/16 :goto_55c

    .line 1070
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1074
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1075
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result v3

    .line 1077
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1079
    goto/16 :goto_55c

    .line 1056
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1060
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 1063
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1065
    goto/16 :goto_55c

    .line 1046
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_27f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->stopFlashNotificationSequence(Ljava/lang/String;)Z

    move-result v1

    .line 1049
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1051
    goto/16 :goto_55c

    .line 1032
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1036
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1037
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z

    move-result v3

    .line 1039
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1041
    goto/16 :goto_55c

    .line 1023
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_2ad
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 1024
    .local v0, "_arg0":Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->injectInputEventToInputFilter(Landroid/view/InputEvent;)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    goto/16 :goto_55c

    .line 1013
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    :pswitch_2c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1014
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterProxyForDisplay(I)Z

    move-result v1

    .line 1016
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1018
    goto/16 :goto_55c

    .line 1001
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1003
    .local v0, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1004
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerProxyForDisplay(Landroid/accessibilityservice/IAccessibilityServiceClient;I)Z

    move-result v2

    .line 1006
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1008
    goto/16 :goto_55c

    .line 987
    .end local v0    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 989
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 991
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 993
    .local v2, "_arg2":I
    sget-object v3, Landroid/view/accessibility/AccessibilityWindowAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowAttributes;

    .line 994
    .local v3, "_arg3":Landroid/view/accessibility/AccessibilityWindowAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V

    .line 996
    goto/16 :goto_55c

    .line 976
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/accessibility/AccessibilityWindowAttributes;
    :pswitch_30a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 978
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 979
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningUiEnabled(ZI)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    goto/16 :goto_55c

    .line 966
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_31d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 967
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result v1

    .line 969
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 971
    goto/16 :goto_55c

    .line 955
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 957
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 958
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningEnabled(ZI)V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    goto/16 :goto_55c

    .line 947
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_343
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAudioDescriptionByDefaultEnabled()Z

    move-result v0

    .line 948
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 950
    goto/16 :goto_55c

    .line 940
    .end local v0    # "_result":Z
    :pswitch_34f
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusColor()I

    move-result v0

    .line 941
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    goto/16 :goto_55c

    .line 933
    .end local v0    # "_result":I
    :pswitch_35b
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusStrokeWidth()I

    move-result v0

    .line 934
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    goto/16 :goto_55c

    .line 925
    .end local v0    # "_result":I
    :pswitch_367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 926
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_55c

    .line 914
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 916
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 917
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 919
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    goto/16 :goto_55c

    .line 906
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnection;

    move-result-object v0

    .line 907
    .local v0, "_arg0":Landroid/view/accessibility/IWindowMagnificationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    .line 909
    goto/16 :goto_55c

    .line 898
    .end local v0    # "_arg0":Landroid/view/accessibility/IWindowMagnificationConnection;
    :pswitch_399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 899
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterSystemAction(I)V

    .line 901
    goto/16 :goto_55c

    .line 888
    .end local v0    # "_arg0":I
    :pswitch_3a5
    sget-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    .line 890
    .local v0, "_arg0":Landroid/app/RemoteAction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 891
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 893
    goto/16 :goto_55c

    .line 880
    .end local v0    # "_arg0":Landroid/app/RemoteAction;
    .end local v1    # "_arg1":I
    :pswitch_3b9
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getRecommendedTimeoutMillis()J

    move-result-wide v0

    .line 881
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 883
    goto/16 :goto_55c

    .line 871
    .end local v0    # "_result":J
    :pswitch_3c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 872
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityWindowId(Landroid/os/IBinder;)I

    move-result v1

    .line 874
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    goto/16 :goto_55c

    .line 861
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_3d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 862
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendFingerprintGesture(I)Z

    move-result v1

    .line 864
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 866
    goto/16 :goto_55c

    .line 851
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 852
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v1

    .line 854
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 856
    goto/16 :goto_55c

    .line 842
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityShortcut(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    goto/16 :goto_55c

    .line 833
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_40d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 834
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonVisibilityChanged(Z)V

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    goto/16 :goto_55c

    .line 822
    .end local v0    # "_arg0":Z
    :pswitch_41c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 824
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    goto/16 :goto_55c

    .line 810
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_42f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 812
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 813
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v2

    .line 815
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 817
    goto/16 :goto_55c

    .line 801
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 802
    .local v0, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto/16 :goto_55c

    .line 784
    .end local v0    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :pswitch_459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 786
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v13

    .line 788
    .local v13, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 790
    .local v14, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 792
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 793
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;II)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_55c

    .line 775
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v14    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 776
    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto/16 :goto_55c

    .line 766
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :pswitch_49c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 767
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_55c

    .line 748
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_4af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v12

    .line 750
    .local v12, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 752
    .local v13, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    .line 754
    .local v14, "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 756
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 757
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0

    .line 759
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    goto/16 :goto_55c

    .line 736
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/view/IWindow;
    .end local v13    # "_arg1":Landroid/os/IBinder;
    .end local v14    # "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_4e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 738
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 739
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v2

    .line 741
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 743
    goto :goto_55c

    .line 726
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_4f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 727
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 729
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 731
    goto :goto_55c

    .line 714
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_50a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 716
    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 717
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z

    move-result v2

    .line 719
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 721
    goto :goto_55c

    .line 702
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 704
    .restart local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v2

    .line 707
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 709
    goto :goto_55c

    .line 692
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_53e
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 694
    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 695
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 697
    goto :goto_55c

    .line 684
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "_arg1":I
    :pswitch_551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 685
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    .line 687
    nop

    .line 1403
    .end local v0    # "_arg0":I
    :goto_55c
    return v11

    nop

    :pswitch_data_55e
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_564
    .packed-switch 0x1
        :pswitch_551
        :pswitch_53e
        :pswitch_524
        :pswitch_50a
        :pswitch_4f8
        :pswitch_4e2
        :pswitch_4af
        :pswitch_49c
        :pswitch_489
        :pswitch_459
        :pswitch_446
        :pswitch_42f
        :pswitch_41c
        :pswitch_40d
        :pswitch_3fe
        :pswitch_3eb
        :pswitch_3d8
        :pswitch_3c5
        :pswitch_3b9
        :pswitch_3a5
        :pswitch_399
        :pswitch_389
        :pswitch_376
        :pswitch_367
        :pswitch_35b
        :pswitch_34f
        :pswitch_343
        :pswitch_330
        :pswitch_31d
        :pswitch_30a
        :pswitch_2ee
        :pswitch_2d3
        :pswitch_2c0
        :pswitch_2ad
        :pswitch_292
        :pswitch_27f
        :pswitch_264
        :pswitch_249
        :pswitch_22e
        :pswitch_21b
        :pswitch_208
        :pswitch_1f9
        :pswitch_1ea
        :pswitch_1d3
        :pswitch_1c0
        :pswitch_1a9
        :pswitch_192
        :pswitch_186
        :pswitch_17a
        :pswitch_172
        :pswitch_15f
        :pswitch_150
        :pswitch_148
        :pswitch_139
        :pswitch_12d
        :pswitch_121
        :pswitch_115
        :pswitch_106
        :pswitch_f3
        :pswitch_eb
        :pswitch_e3
        :pswitch_d7
        :pswitch_cb
        :pswitch_bf
        :pswitch_b7
        :pswitch_a8
        :pswitch_99
        :pswitch_8d
        :pswitch_81
        :pswitch_6e
        :pswitch_66
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method
