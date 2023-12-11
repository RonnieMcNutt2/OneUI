.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_abortTransient:I = 0x33

.field static final TRANSACTION_addQsTile:I = 0x21

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x16

.field static final TRANSACTION_appTransitionFinished:I = 0x18

.field static final TRANSACTION_appTransitionPending:I = 0x15

.field static final TRANSACTION_appTransitionStarting:I = 0x17

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x11

.field static final TRANSACTION_cancelRequestAddTile:I = 0x41

.field static final TRANSACTION_clickQsTile:I = 0x23

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissInattentiveSleepWarning:I = 0x35

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x13

.field static final TRANSACTION_dumpProto:I = 0x46

.field static final TRANSACTION_enterStageSplitFromRunningApp:I = 0x49

.field static final TRANSACTION_goToFullscreenFromSplit:I = 0x48

.field static final TRANSACTION_handleSystemKey:I = 0x24

.field static final TRANSACTION_hideAuthenticationDialog:I = 0x2c

.field static final TRANSACTION_hideRecentApps:I = 0xc

.field static final TRANSACTION_hideToast:I = 0x37

.field static final TRANSACTION_notifyRequestedGameToolsWin:I = 0x52

.field static final TRANSACTION_notifyRequestedSystemKey:I = 0x50

.field static final TRANSACTION_notifySamsungPayInfo:I = 0x4e

.field static final TRANSACTION_onBiometricAuthenticated:I = 0x29

.field static final TRANSACTION_onBiometricError:I = 0x2b

.field static final TRANSACTION_onBiometricHelp:I = 0x2a

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1b

.field static final TRANSACTION_onDisplayReady:I = 0x2f

.field static final TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x1c

.field static final TRANSACTION_onFocusedDisplayChanged:I = 0x4f

.field static final TRANSACTION_onProposedRotationChanged:I = 0x1f

.field static final TRANSACTION_onRecentsAnimationStateChanged:I = 0x30

.field static final TRANSACTION_onSystemBarAttributesChanged:I = 0x31

.field static final TRANSACTION_passThroughShellCommand:I = 0x3c

.field static final TRANSACTION_preloadRecentApps:I = 0x10

.field static final TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x44

.field static final TRANSACTION_remQsTile:I = 0x22

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_requestAddTile:I = 0x40

.field static final TRANSACTION_requestTileServiceListeningState:I = 0x3f

.field static final TRANSACTION_requestWindowMagnificationConnection:I = 0x3b

.field static final TRANSACTION_resetScheduleAutoHide:I = 0x4d

.field static final TRANSACTION_runGcForTest:I = 0x3e

.field static final TRANSACTION_sendKeyEventToDesktopTaskbar:I = 0x53

.field static final TRANSACTION_sendThreeFingerGestureKeyEvent:I = 0x51

.field static final TRANSACTION_setBiometicContextListener:I = 0x2d

.field static final TRANSACTION_setBlueLightFilter:I = 0x4b

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x3d

.field static final TRANSACTION_setNavigationBarShortcut:I = 0x4c

.field static final TRANSACTION_setTopAppHidesStatusBar:I = 0x20

.field static final TRANSACTION_setUdfpsRefreshRateCallback:I = 0x2e

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x19

.field static final TRANSACTION_showAuthenticationDialog:I = 0x28

.field static final TRANSACTION_showGlobalActionsMenu:I = 0x1e

.field static final TRANSACTION_showInattentiveSleepWarning:I = 0x34

.field static final TRANSACTION_showMediaOutputSwitcher:I = 0x4a

.field static final TRANSACTION_showPictureInPictureMenu:I = 0x1d

.field static final TRANSACTION_showPinningEnterExitToast:I = 0x25

.field static final TRANSACTION_showPinningEscapeToast:I = 0x26

.field static final TRANSACTION_showRearDisplayDialog:I = 0x47

.field static final TRANSACTION_showRecentApps:I = 0xb

.field static final TRANSACTION_showScreenPinningRequest:I = 0x12

.field static final TRANSACTION_showShutdownUi:I = 0x27

.field static final TRANSACTION_showToast:I = 0x36

.field static final TRANSACTION_showTransient:I = 0x32

.field static final TRANSACTION_showWirelessChargingAnimation:I = 0x8

.field static final TRANSACTION_startAssist:I = 0x1a

.field static final TRANSACTION_startTracing:I = 0x38

.field static final TRANSACTION_stopTracing:I = 0x39

.field static final TRANSACTION_suppressAmbientDisplay:I = 0x3a

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x14

.field static final TRANSACTION_togglePanel:I = 0x7

.field static final TRANSACTION_toggleRecentApps:I = 0xd

.field static final TRANSACTION_toggleSplitScreen:I = 0xf

.field static final TRANSACTION_toggleTaskbar:I = 0xe

.field static final TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x45

.field static final TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x43

.field static final TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x42


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 429
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 430
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 438
    if-nez p0, :cond_4

    .line 439
    const/4 v0, 0x0

    return-object v0

    .line 441
    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 442
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_14

    .line 443
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    .line 445
    :cond_14
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 454
    packed-switch p0, :pswitch_data_140

    .line 790
    const/4 v0, 0x0

    return-object v0

    .line 786
    :pswitch_5
    const-string/jumbo v0, "sendKeyEventToDesktopTaskbar"

    return-object v0

    .line 782
    :pswitch_9
    const-string/jumbo v0, "notifyRequestedGameToolsWin"

    return-object v0

    .line 778
    :pswitch_d
    const-string/jumbo v0, "sendThreeFingerGestureKeyEvent"

    return-object v0

    .line 774
    :pswitch_11
    const-string/jumbo v0, "notifyRequestedSystemKey"

    return-object v0

    .line 770
    :pswitch_15
    const-string/jumbo v0, "onFocusedDisplayChanged"

    return-object v0

    .line 766
    :pswitch_19
    const-string/jumbo v0, "notifySamsungPayInfo"

    return-object v0

    .line 762
    :pswitch_1d
    const-string/jumbo v0, "resetScheduleAutoHide"

    return-object v0

    .line 758
    :pswitch_21
    const-string/jumbo v0, "setNavigationBarShortcut"

    return-object v0

    .line 754
    :pswitch_25
    const-string/jumbo v0, "setBlueLightFilter"

    return-object v0

    .line 750
    :pswitch_29
    const-string/jumbo v0, "showMediaOutputSwitcher"

    return-object v0

    .line 746
    :pswitch_2d
    const-string v0, "enterStageSplitFromRunningApp"

    return-object v0

    .line 742
    :pswitch_30
    const-string/jumbo v0, "goToFullscreenFromSplit"

    return-object v0

    .line 738
    :pswitch_34
    const-string/jumbo v0, "showRearDisplayDialog"

    return-object v0

    .line 734
    :pswitch_38
    const-string v0, "dumpProto"

    return-object v0

    .line 730
    :pswitch_3b
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    .line 726
    :pswitch_3f
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    .line 722
    :pswitch_43
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    .line 718
    :pswitch_47
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    .line 714
    :pswitch_4b
    const-string v0, "cancelRequestAddTile"

    return-object v0

    .line 710
    :pswitch_4e
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    .line 706
    :pswitch_52
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    .line 702
    :pswitch_56
    const-string/jumbo v0, "runGcForTest"

    return-object v0

    .line 698
    :pswitch_5a
    const-string/jumbo v0, "setNavigationBarLumaSamplingEnabled"

    return-object v0

    .line 694
    :pswitch_5e
    const-string/jumbo v0, "passThroughShellCommand"

    return-object v0

    .line 690
    :pswitch_62
    const-string/jumbo v0, "requestWindowMagnificationConnection"

    return-object v0

    .line 686
    :pswitch_66
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 682
    :pswitch_6a
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 678
    :pswitch_6e
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 674
    :pswitch_72
    const-string/jumbo v0, "hideToast"

    return-object v0

    .line 670
    :pswitch_76
    const-string/jumbo v0, "showToast"

    return-object v0

    .line 666
    :pswitch_7a
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    .line 662
    :pswitch_7d
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    .line 658
    :pswitch_81
    const-string v0, "abortTransient"

    return-object v0

    .line 654
    :pswitch_84
    const-string/jumbo v0, "showTransient"

    return-object v0

    .line 650
    :pswitch_88
    const-string/jumbo v0, "onSystemBarAttributesChanged"

    return-object v0

    .line 646
    :pswitch_8c
    const-string/jumbo v0, "onRecentsAnimationStateChanged"

    return-object v0

    .line 642
    :pswitch_90
    const-string/jumbo v0, "onDisplayReady"

    return-object v0

    .line 638
    :pswitch_94
    const-string/jumbo v0, "setUdfpsRefreshRateCallback"

    return-object v0

    .line 634
    :pswitch_98
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    .line 630
    :pswitch_9c
    const-string/jumbo v0, "hideAuthenticationDialog"

    return-object v0

    .line 626
    :pswitch_a0
    const-string/jumbo v0, "onBiometricError"

    return-object v0

    .line 622
    :pswitch_a4
    const-string/jumbo v0, "onBiometricHelp"

    return-object v0

    .line 618
    :pswitch_a8
    const-string/jumbo v0, "onBiometricAuthenticated"

    return-object v0

    .line 614
    :pswitch_ac
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    .line 610
    :pswitch_b0
    const-string/jumbo v0, "showShutdownUi"

    return-object v0

    .line 606
    :pswitch_b4
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    .line 602
    :pswitch_b8
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    .line 598
    :pswitch_bc
    const-string/jumbo v0, "handleSystemKey"

    return-object v0

    .line 594
    :pswitch_c0
    const-string v0, "clickQsTile"

    return-object v0

    .line 590
    :pswitch_c3
    const-string/jumbo v0, "remQsTile"

    return-object v0

    .line 586
    :pswitch_c7
    const-string v0, "addQsTile"

    return-object v0

    .line 582
    :pswitch_ca
    const-string/jumbo v0, "setTopAppHidesStatusBar"

    return-object v0

    .line 578
    :pswitch_ce
    const-string/jumbo v0, "onProposedRotationChanged"

    return-object v0

    .line 574
    :pswitch_d2
    const-string/jumbo v0, "showGlobalActionsMenu"

    return-object v0

    .line 570
    :pswitch_d6
    const-string/jumbo v0, "showPictureInPictureMenu"

    return-object v0

    .line 566
    :pswitch_da
    const-string/jumbo v0, "onEmergencyActionLaunchGestureDetected"

    return-object v0

    .line 562
    :pswitch_de
    const-string/jumbo v0, "onCameraLaunchGestureDetected"

    return-object v0

    .line 558
    :pswitch_e2
    const-string/jumbo v0, "startAssist"

    return-object v0

    .line 554
    :pswitch_e6
    const-string/jumbo v0, "showAssistDisclosure"

    return-object v0

    .line 550
    :pswitch_ea
    const-string v0, "appTransitionFinished"

    return-object v0

    .line 546
    :pswitch_ed
    const-string v0, "appTransitionStarting"

    return-object v0

    .line 542
    :pswitch_f0
    const-string v0, "appTransitionCancelled"

    return-object v0

    .line 538
    :pswitch_f3
    const-string v0, "appTransitionPending"

    return-object v0

    .line 534
    :pswitch_f6
    const-string/jumbo v0, "toggleKeyboardShortcutsMenu"

    return-object v0

    .line 530
    :pswitch_fa
    const-string v0, "dismissKeyboardShortcutsMenu"

    return-object v0

    .line 526
    :pswitch_fd
    const-string/jumbo v0, "showScreenPinningRequest"

    return-object v0

    .line 522
    :pswitch_101
    const-string v0, "cancelPreloadRecentApps"

    return-object v0

    .line 518
    :pswitch_104
    const-string/jumbo v0, "preloadRecentApps"

    return-object v0

    .line 514
    :pswitch_108
    const-string/jumbo v0, "toggleSplitScreen"

    return-object v0

    .line 510
    :pswitch_10c
    const-string/jumbo v0, "toggleTaskbar"

    return-object v0

    .line 506
    :pswitch_110
    const-string/jumbo v0, "toggleRecentApps"

    return-object v0

    .line 502
    :pswitch_114
    const-string/jumbo v0, "hideRecentApps"

    return-object v0

    .line 498
    :pswitch_118
    const-string/jumbo v0, "showRecentApps"

    return-object v0

    .line 494
    :pswitch_11c
    const-string/jumbo v0, "setWindowState"

    return-object v0

    .line 490
    :pswitch_120
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    .line 486
    :pswitch_124
    const-string/jumbo v0, "showWirelessChargingAnimation"

    return-object v0

    .line 482
    :pswitch_128
    const-string/jumbo v0, "togglePanel"

    return-object v0

    .line 478
    :pswitch_12c
    const-string v0, "animateCollapsePanels"

    return-object v0

    .line 474
    :pswitch_12f
    const-string v0, "animateExpandSettingsPanel"

    return-object v0

    .line 470
    :pswitch_132
    const-string v0, "animateExpandNotificationsPanel"

    return-object v0

    .line 466
    :pswitch_135
    const-string v0, "disable"

    return-object v0

    .line 462
    :pswitch_138
    const-string/jumbo v0, "removeIcon"

    return-object v0

    .line 458
    :pswitch_13c
    const-string/jumbo v0, "setIcon"

    return-object v0

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_13c
        :pswitch_138
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12c
        :pswitch_128
        :pswitch_124
        :pswitch_120
        :pswitch_11c
        :pswitch_118
        :pswitch_114
        :pswitch_110
        :pswitch_10c
        :pswitch_108
        :pswitch_104
        :pswitch_101
        :pswitch_fd
        :pswitch_fa
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e6
        :pswitch_e2
        :pswitch_de
        :pswitch_da
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_ca
        :pswitch_c7
        :pswitch_c3
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7d
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
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_30
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

    .line 449
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2877
    const/16 v0, 0x52

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 797
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 33
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    const-string v15, "com.android.internal.statusbar.IStatusBar"

    .line 802
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_13

    const v0, 0xffffff

    if-gt v13, v0, :cond_13

    .line 803
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    :cond_13
    packed-switch v13, :pswitch_data_5f6

    .line 813
    move-object/from16 v11, p3

    packed-switch v13, :pswitch_data_5fc

    .line 1548
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 809
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 810
    return v10

    .line 1541
    :pswitch_26
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1542
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V

    .line 1544
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1533
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1534
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1535
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRequestedGameToolsWin(Z)V

    .line 1536
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1525
    .end local v0    # "_arg0":Z
    :pswitch_46
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1526
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1527
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V

    .line 1528
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1515
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1517
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1518
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1519
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRequestedSystemKey(ZZ)V

    .line 1520
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1507
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1508
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFocusedDisplayChanged(I)V

    .line 1510
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1495
    .end local v0    # "_arg0":I
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1497
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1499
    .restart local v1    # "_arg1":Z
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1500
    .local v2, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1501
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    .line 1502
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1489
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    :pswitch_92
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->resetScheduleAutoHide()V

    .line 1490
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1476
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1480
    .local v1, "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1482
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1483
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1484
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 1485
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1466
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1468
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1469
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1470
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBlueLightFilter(ZI)V

    .line 1471
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1458
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showMediaOutputSwitcher(Ljava/lang/String;)V

    .line 1461
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1450
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1451
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1452
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->enterStageSplitFromRunningApp(Z)V

    .line 1453
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1444
    .end local v0    # "_arg0":Z
    :pswitch_e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->goToFullscreenFromSplit()V

    .line 1445
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1437
    :pswitch_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1438
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRearDisplayDialog(I)V

    .line 1440
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1427
    .end local v0    # "_arg0":I
    :pswitch_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, "_arg0":[Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1430
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1431
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1432
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1419
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1420
    .local v0, "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1421
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1422
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1411
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1412
    .restart local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1413
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1414
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1397
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1399
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1401
    .local v1, "_arg1":Landroid/media/MediaRoute2Info;
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 1403
    .local v2, "_arg2":Landroid/graphics/drawable/Icon;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1404
    .local v3, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1406
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1385
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v3    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_15a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1387
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1389
    .restart local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v2

    .line 1390
    .local v2, "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1391
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1392
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1377
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    :pswitch_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1379
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1380
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1361
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_186
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1363
    .local v6, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    .line 1365
    .local v7, "_arg1":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    .line 1367
    .local v8, "_arg2":Ljava/lang/CharSequence;
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/drawable/Icon;

    .line 1369
    .local v9, "_arg3":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v16

    .line 1370
    .local v16, "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1372
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1353
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Ljava/lang/CharSequence;
    .end local v8    # "_arg2":Ljava/lang/CharSequence;
    .end local v9    # "_arg3":Landroid/graphics/drawable/Icon;
    .end local v16    # "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    :pswitch_1c4
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1354
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 1356
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1347
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_1d6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    .line 1348
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1338
    :pswitch_1dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1340
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1341
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 1343
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1328
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_1ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, "_arg0":[Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1331
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1333
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1320
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1321
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1322
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestWindowMagnificationConnection(Z)V

    .line 1323
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1312
    .end local v0    # "_arg0":Z
    :pswitch_213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1313
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    .line 1315
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1306
    .end local v0    # "_arg0":Z
    :pswitch_221
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    .line 1307
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1301
    :pswitch_228
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    .line 1302
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1292
    :pswitch_22f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1295
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1296
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1297
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1270
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1272
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1274
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 1276
    .local v17, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    .line 1278
    .local v18, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 1280
    .local v19, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1282
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v21

    .line 1284
    .local v21, "_arg6":Landroid/app/ITransientNotificationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1285
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    .line 1287
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1262
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "_arg3":Ljava/lang/CharSequence;
    .end local v19    # "_arg4":Landroid/os/IBinder;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/app/ITransientNotificationCallback;
    .end local v22    # "_arg7":I
    :pswitch_286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1263
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1265
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1256
    .end local v0    # "_arg0":Z
    :pswitch_294
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    .line 1257
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1247
    :pswitch_29b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1249
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1250
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(II)V

    .line 1252
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1235
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1237
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1239
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1240
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1241
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(IIZ)V

    .line 1242
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1213
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_2c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1215
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1217
    .local v16, "_arg1":I
    sget-object v0, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [Lcom/android/internal/view/AppearanceRegion;

    .line 1219
    .local v17, "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1221
    .local v18, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1223
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1225
    .restart local v20    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1227
    .local v21, "_arg6":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/statusbar/LetterboxDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1228
    .local v22, "_arg7":[Lcom/android/internal/statusbar/LetterboxDetails;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 1230
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1205
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    .end local v18    # "_arg3":Z
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":[Lcom/android/internal/statusbar/LetterboxDetails;
    :pswitch_30a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1206
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1207
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onRecentsAnimationStateChanged(Z)V

    .line 1208
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1197
    .end local v0    # "_arg0":Z
    :pswitch_318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1198
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayReady(I)V

    .line 1200
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1189
    .end local v0    # "_arg0":I
    :pswitch_326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v0

    .line 1190
    .local v0, "_arg0":Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1192
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1181
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    :pswitch_338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v0

    .line 1182
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1183
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1184
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1173
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    :pswitch_34a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1174
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    .line 1176
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1161
    .end local v0    # "_arg0":J
    :pswitch_358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1163
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1165
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1166
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    .line 1168
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1151
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_36e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1153
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1156
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1143
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1144
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    .line 1146
    move/from16 v27, v10

    goto/16 :goto_5f4

    .line 1119
    .end local v0    # "_arg0":I
    :pswitch_38e
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/biometrics/PromptInfo;

    .line 1121
    .local v16, "_arg0":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v17

    .line 1123
    .local v17, "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 1125
    .local v18, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1127
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1129
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1131
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 1133
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1135
    .local v24, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 1136
    .local v25, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    move/from16 v27, v10

    move-wide/from16 v10, v25

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1138
    goto/16 :goto_5f4

    .line 1109
    .end local v16    # "_arg0":Landroid/hardware/biometrics/PromptInfo;
    .end local v17    # "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .end local v18    # "_arg2":[I
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":Ljava/lang/String;
    .end local v25    # "_arg8":J
    :pswitch_3da
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1111
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    .line 1114
    goto/16 :goto_5f4

    .line 1103
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3ec
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    .line 1104
    goto/16 :goto_5f4

    .line 1096
    :pswitch_3f3
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1097
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    .line 1099
    goto/16 :goto_5f4

    .line 1088
    .end local v0    # "_arg0":Z
    :pswitch_401
    move/from16 v27, v10

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1089
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1091
    goto/16 :goto_5f4

    .line 1080
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_413
    move/from16 v27, v10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1081
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 1083
    goto/16 :goto_5f4

    .line 1072
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_425
    move/from16 v27, v10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1073
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 1075
    goto/16 :goto_5f4

    .line 1064
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_437
    move/from16 v27, v10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1065
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 1067
    goto/16 :goto_5f4

    .line 1056
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_449
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1057
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1058
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    .line 1059
    goto/16 :goto_5f4

    .line 1046
    .end local v0    # "_arg0":Z
    :pswitch_457
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1048
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1049
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    .line 1051
    goto/16 :goto_5f4

    .line 1038
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_469
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1039
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu(I)V

    .line 1041
    goto/16 :goto_5f4

    .line 1032
    .end local v0    # "_arg0":I
    :pswitch_477
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    .line 1033
    goto/16 :goto_5f4

    .line 1027
    :pswitch_47e
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    .line 1028
    goto/16 :goto_5f4

    .line 1020
    :pswitch_485
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1021
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 1023
    goto/16 :goto_5f4

    .line 1012
    .end local v0    # "_arg0":I
    :pswitch_493
    move/from16 v27, v10

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1013
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 1015
    goto/16 :goto_5f4

    .line 1006
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_4a5
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 1007
    goto/16 :goto_5f4

    .line 999
    :pswitch_4ac
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1000
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    .line 1002
    goto/16 :goto_5f4

    .line 987
    .end local v0    # "_arg0":I
    :pswitch_4ba
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 989
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 991
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 992
    .local v9, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    .line 994
    goto/16 :goto_5f4

    .line 979
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":J
    :pswitch_4d5
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 980
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    .line 982
    goto/16 :goto_5f4

    .line 971
    .end local v0    # "_arg0":I
    :pswitch_4e3
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 972
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    .line 974
    goto/16 :goto_5f4

    .line 963
    .end local v0    # "_arg0":I
    :pswitch_4f1
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 964
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 966
    goto/16 :goto_5f4

    .line 957
    .end local v0    # "_arg0":I
    :pswitch_4ff
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 958
    goto/16 :goto_5f4

    .line 950
    :pswitch_506
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 951
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 953
    goto/16 :goto_5f4

    .line 944
    .end local v0    # "_arg0":I
    :pswitch_514
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 945
    goto/16 :goto_5f4

    .line 939
    :pswitch_51b
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 940
    goto/16 :goto_5f4

    .line 934
    :pswitch_522
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 935
    goto/16 :goto_5f4

    .line 929
    :pswitch_529
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleTaskbar()V

    .line 930
    goto/16 :goto_5f4

    .line 924
    :pswitch_530
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 925
    goto/16 :goto_5f4

    .line 915
    :pswitch_537
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 917
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 918
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 920
    goto/16 :goto_5f4

    .line 907
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_549
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 908
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 910
    goto/16 :goto_5f4

    .line 895
    .end local v0    # "_arg0":Z
    :pswitch_557
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 897
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 899
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 900
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    .line 902
    goto/16 :goto_5f4

    .line 879
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_56d
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 881
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 883
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 885
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 887
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 888
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 890
    goto :goto_5f4

    .line 871
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Z
    :pswitch_591
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 872
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    .line 874
    goto :goto_5f4

    .line 865
    .end local v0    # "_arg0":I
    :pswitch_59e
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->togglePanel()V

    .line 866
    goto :goto_5f4

    .line 860
    :pswitch_5a4
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 861
    goto :goto_5f4

    .line 853
    :pswitch_5aa
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 856
    goto :goto_5f4

    .line 847
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5b7
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 848
    goto :goto_5f4

    .line 836
    :pswitch_5bd
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 838
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 840
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 841
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    .line 843
    goto :goto_5f4

    .line 828
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_5d2
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 831
    goto :goto_5f4

    .line 818
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5df
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 820
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 821
    .local v1, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 823
    nop

    .line 1551
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_5f4
    return v27

    nop

    :pswitch_data_5f6
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_5fc
    .packed-switch 0x1
        :pswitch_5df
        :pswitch_5d2
        :pswitch_5bd
        :pswitch_5b7
        :pswitch_5aa
        :pswitch_5a4
        :pswitch_59e
        :pswitch_591
        :pswitch_56d
        :pswitch_557
        :pswitch_549
        :pswitch_537
        :pswitch_530
        :pswitch_529
        :pswitch_522
        :pswitch_51b
        :pswitch_514
        :pswitch_506
        :pswitch_4ff
        :pswitch_4f1
        :pswitch_4e3
        :pswitch_4d5
        :pswitch_4ba
        :pswitch_4ac
        :pswitch_4a5
        :pswitch_493
        :pswitch_485
        :pswitch_47e
        :pswitch_477
        :pswitch_469
        :pswitch_457
        :pswitch_449
        :pswitch_437
        :pswitch_425
        :pswitch_413
        :pswitch_401
        :pswitch_3f3
        :pswitch_3ec
        :pswitch_3da
        :pswitch_38e
        :pswitch_380
        :pswitch_36e
        :pswitch_358
        :pswitch_34a
        :pswitch_338
        :pswitch_326
        :pswitch_318
        :pswitch_30a
        :pswitch_2c3
        :pswitch_2ad
        :pswitch_29b
        :pswitch_294
        :pswitch_286
        :pswitch_241
        :pswitch_22f
        :pswitch_228
        :pswitch_221
        :pswitch_213
        :pswitch_205
        :pswitch_1ef
        :pswitch_1dd
        :pswitch_1d6
        :pswitch_1c4
        :pswitch_186
        :pswitch_178
        :pswitch_15a
        :pswitch_134
        :pswitch_122
        :pswitch_110
        :pswitch_fa
        :pswitch_ec
        :pswitch_e5
        :pswitch_d7
        :pswitch_c9
        :pswitch_b7
        :pswitch_99
        :pswitch_92
        :pswitch_78
        :pswitch_6a
        :pswitch_58
        :pswitch_46
        :pswitch_38
        :pswitch_26
    .end packed-switch
.end method
