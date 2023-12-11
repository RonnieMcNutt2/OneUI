.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addDeviceWirelessKeyboardShare:I = 0x4e

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x15

.field static final TRANSACTION_addPortAssociation:I = 0x52

.field static final TRANSACTION_addUniqueIdAssociation:I = 0x54

.field static final TRANSACTION_cancelCurrentTouch:I = 0x61

.field static final TRANSACTION_cancelVibrate:I = 0x2b

.field static final TRANSACTION_changeDeviceWirelessKeyboardShare:I = 0x4d

.field static final TRANSACTION_checkInputFeature:I = 0x22

.field static final TRANSACTION_clearAllModifierKeyRemappings:I = 0x1b

.field static final TRANSACTION_closeLightSession:I = 0x60

.field static final TRANSACTION_connectByBtDevice:I = 0x51

.field static final TRANSACTION_disableInputDevice:I = 0x6

.field static final TRANSACTION_disableSensor:I = 0x5a

.field static final TRANSACTION_enableInputDevice:I = 0x5

.field static final TRANSACTION_enableSensor:I = 0x59

.field static final TRANSACTION_flushSensor:I = 0x5b

.field static final TRANSACTION_forceFadeIcon:I = 0x48

.field static final TRANSACTION_getBatteryState:I = 0x30

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0x12

.field static final TRANSACTION_getCurrentSwitchEventState:I = 0x26

.field static final TRANSACTION_getDefaultPointerIcon:I = 0x34

.field static final TRANSACTION_getDisplayIdForPointerIcon:I = 0x3f

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0x14

.field static final TRANSACTION_getGlobalMetaState:I = 0x44

.field static final TRANSACTION_getHostUsiVersionFromDisplayConfig:I = 0x68

.field static final TRANSACTION_getInboundQueueLength:I = 0x41

.field static final TRANSACTION_getInputDevice:I = 0x2

.field static final TRANSACTION_getInputDeviceBluetoothAddress:I = 0x64

.field static final TRANSACTION_getInputDeviceIds:I = 0x3

.field static final TRANSACTION_getKeyCodeForKeyLocation:I = 0x8

.field static final TRANSACTION_getKeyboardLayout:I = 0x11

.field static final TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x17

.field static final TRANSACTION_getKeyboardLayoutListForInputDevice:I = 0x19

.field static final TRANSACTION_getKeyboardLayouts:I = 0xf

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0x10

.field static final TRANSACTION_getLastLidEventTimeNanos:I = 0x21

.field static final TRANSACTION_getLidState:I = 0x1f

.field static final TRANSACTION_getLightState:I = 0x5d

.field static final TRANSACTION_getLights:I = 0x5c

.field static final TRANSACTION_getModifierKeyRemapping:I = 0x1c

.field static final TRANSACTION_getScanCodeState:I = 0x42

.field static final TRANSACTION_getSensorList:I = 0x56

.field static final TRANSACTION_getToolTypeForDefaultPointerIcon:I = 0x36

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0xd

.field static final TRANSACTION_getVelocityTrackerStrategy:I = 0x1

.field static final TRANSACTION_getVibratorIds:I = 0x2c

.field static final TRANSACTION_hasKeys:I = 0x7

.field static final TRANSACTION_injectInputEvent:I = 0xa

.field static final TRANSACTION_injectInputEventToTarget:I = 0xb

.field static final TRANSACTION_isDefaultPointerIconChanged:I = 0x35

.field static final TRANSACTION_isInTabletMode:I = 0x1e

.field static final TRANSACTION_isInputDeviceEnabled:I = 0x4

.field static final TRANSACTION_isMicMuted:I = 0x28

.field static final TRANSACTION_isUidTouched:I = 0x47

.field static final TRANSACTION_isVibrating:I = 0x2d

.field static final TRANSACTION_monitorGestureInput:I = 0x39

.field static final TRANSACTION_monitorGestureInputFiltered:I = 0x3a

.field static final TRANSACTION_monitorInputForBinder:I = 0x3b

.field static final TRANSACTION_notifyQuickAccess:I = 0x49

.field static final TRANSACTION_openLightSession:I = 0x5f

.field static final TRANSACTION_pilferPointers:I = 0x65

.field static final TRANSACTION_registerBatteryListener:I = 0x62

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x1d

.field static final TRANSACTION_registerKeyboardBacklightListener:I = 0x66

.field static final TRANSACTION_registerLidStateChangedListener:I = 0x20

.field static final TRANSACTION_registerMultiFingerGestureListener:I = 0x24

.field static final TRANSACTION_registerPointerIconChangedListener:I = 0x3c

.field static final TRANSACTION_registerSensorListener:I = 0x57

.field static final TRANSACTION_registerSwitchEventChangedListener:I = 0x25

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x27

.field static final TRANSACTION_registerVibratorStateListener:I = 0x2e

.field static final TRANSACTION_registerWirelessKeyboardShareChangedListener:I = 0x4a

.field static final TRANSACTION_remapModifierKey:I = 0x1a

.field static final TRANSACTION_removeDeviceWirelessKeyboardShare:I = 0x4c

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x16

.field static final TRANSACTION_removePortAssociation:I = 0x53

.field static final TRANSACTION_removeUniqueIdAssociation:I = 0x55

.field static final TRANSACTION_requestPointerCapture:I = 0x38

.field static final TRANSACTION_semGetMotionIdleTimeMillis:I = 0x45

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0x13

.field static final TRANSACTION_setCustomHoverIcon:I = 0x3d

.field static final TRANSACTION_setCustomPointerIcon:I = 0x32

.field static final TRANSACTION_setDefaultPointerIcon:I = 0x33

.field static final TRANSACTION_setDisplayIdForPointerIcon:I = 0x3e

.field static final TRANSACTION_setHostRoleWirelessKeyboardShare:I = 0x50

.field static final TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x18

.field static final TRANSACTION_setLightStates:I = 0x5e

.field static final TRANSACTION_setPointerIconType:I = 0x31

.field static final TRANSACTION_setShowAllTouches:I = 0x37

.field static final TRANSACTION_setStartedShutdown:I = 0x46

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0xe

.field static final TRANSACTION_setTspEnabled:I = 0x40

.field static final TRANSACTION_setWakeKeyDynamically:I = 0x43

.field static final TRANSACTION_supportPogoDevice:I = 0x23

.field static final TRANSACTION_switchDeviceWirelessKeyboardShare:I = 0x4f

.field static final TRANSACTION_tryPointerSpeed:I = 0x9

.field static final TRANSACTION_unregisterBatteryListener:I = 0x63

.field static final TRANSACTION_unregisterKeyboardBacklightListener:I = 0x67

.field static final TRANSACTION_unregisterSensorListener:I = 0x58

.field static final TRANSACTION_unregisterVibratorStateListener:I = 0x2f

.field static final TRANSACTION_updateWirelessKeyboardShareStatus:I = 0x4b

.field static final TRANSACTION_verifyInputEvent:I = 0xc

.field static final TRANSACTION_vibrate:I = 0x29

.field static final TRANSACTION_vibrateCombined:I = 0x2a


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    nop

    .line 469
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 468
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/input/IInputManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 470
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 458
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 459
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 460
    if-eqz p1, :cond_d

    .line 463
    iput-object p1, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 464
    return-void

    .line 461
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 477
    if-nez p0, :cond_4

    .line 478
    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_4
    const-string v0, "android.hardware.input.IInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 481
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_14

    .line 482
    move-object v1, v0

    check-cast v1, Landroid/hardware/input/IInputManager;

    return-object v1

    .line 484
    :cond_14
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 493
    packed-switch p0, :pswitch_data_13e

    .line 913
    const/4 v0, 0x0

    return-object v0

    .line 909
    :pswitch_5
    const-string v0, "getHostUsiVersionFromDisplayConfig"

    return-object v0

    .line 905
    :pswitch_8
    const-string v0, "unregisterKeyboardBacklightListener"

    return-object v0

    .line 901
    :pswitch_b
    const-string v0, "registerKeyboardBacklightListener"

    return-object v0

    .line 897
    :pswitch_e
    const-string v0, "pilferPointers"

    return-object v0

    .line 893
    :pswitch_11
    const-string v0, "getInputDeviceBluetoothAddress"

    return-object v0

    .line 889
    :pswitch_14
    const-string v0, "unregisterBatteryListener"

    return-object v0

    .line 885
    :pswitch_17
    const-string v0, "registerBatteryListener"

    return-object v0

    .line 881
    :pswitch_1a
    const-string v0, "cancelCurrentTouch"

    return-object v0

    .line 877
    :pswitch_1d
    const-string v0, "closeLightSession"

    return-object v0

    .line 873
    :pswitch_20
    const-string v0, "openLightSession"

    return-object v0

    .line 869
    :pswitch_23
    const-string v0, "setLightStates"

    return-object v0

    .line 865
    :pswitch_26
    const-string v0, "getLightState"

    return-object v0

    .line 861
    :pswitch_29
    const-string v0, "getLights"

    return-object v0

    .line 857
    :pswitch_2c
    const-string v0, "flushSensor"

    return-object v0

    .line 853
    :pswitch_2f
    const-string v0, "disableSensor"

    return-object v0

    .line 849
    :pswitch_32
    const-string v0, "enableSensor"

    return-object v0

    .line 845
    :pswitch_35
    const-string v0, "unregisterSensorListener"

    return-object v0

    .line 841
    :pswitch_38
    const-string v0, "registerSensorListener"

    return-object v0

    .line 837
    :pswitch_3b
    const-string v0, "getSensorList"

    return-object v0

    .line 833
    :pswitch_3e
    const-string v0, "removeUniqueIdAssociation"

    return-object v0

    .line 829
    :pswitch_41
    const-string v0, "addUniqueIdAssociation"

    return-object v0

    .line 825
    :pswitch_44
    const-string v0, "removePortAssociation"

    return-object v0

    .line 821
    :pswitch_47
    const-string v0, "addPortAssociation"

    return-object v0

    .line 817
    :pswitch_4a
    const-string v0, "connectByBtDevice"

    return-object v0

    .line 813
    :pswitch_4d
    const-string v0, "setHostRoleWirelessKeyboardShare"

    return-object v0

    .line 809
    :pswitch_50
    const-string v0, "switchDeviceWirelessKeyboardShare"

    return-object v0

    .line 805
    :pswitch_53
    const-string v0, "addDeviceWirelessKeyboardShare"

    return-object v0

    .line 801
    :pswitch_56
    const-string v0, "changeDeviceWirelessKeyboardShare"

    return-object v0

    .line 797
    :pswitch_59
    const-string v0, "removeDeviceWirelessKeyboardShare"

    return-object v0

    .line 793
    :pswitch_5c
    const-string v0, "updateWirelessKeyboardShareStatus"

    return-object v0

    .line 789
    :pswitch_5f
    const-string v0, "registerWirelessKeyboardShareChangedListener"

    return-object v0

    .line 785
    :pswitch_62
    const-string v0, "notifyQuickAccess"

    return-object v0

    .line 781
    :pswitch_65
    const-string v0, "forceFadeIcon"

    return-object v0

    .line 777
    :pswitch_68
    const-string v0, "isUidTouched"

    return-object v0

    .line 773
    :pswitch_6b
    const-string v0, "setStartedShutdown"

    return-object v0

    .line 769
    :pswitch_6e
    const-string v0, "semGetMotionIdleTimeMillis"

    return-object v0

    .line 765
    :pswitch_71
    const-string v0, "getGlobalMetaState"

    return-object v0

    .line 761
    :pswitch_74
    const-string v0, "setWakeKeyDynamically"

    return-object v0

    .line 757
    :pswitch_77
    const-string v0, "getScanCodeState"

    return-object v0

    .line 753
    :pswitch_7a
    const-string v0, "getInboundQueueLength"

    return-object v0

    .line 749
    :pswitch_7d
    const-string v0, "setTspEnabled"

    return-object v0

    .line 745
    :pswitch_80
    const-string v0, "getDisplayIdForPointerIcon"

    return-object v0

    .line 741
    :pswitch_83
    const-string v0, "setDisplayIdForPointerIcon"

    return-object v0

    .line 737
    :pswitch_86
    const-string v0, "setCustomHoverIcon"

    return-object v0

    .line 733
    :pswitch_89
    const-string v0, "registerPointerIconChangedListener"

    return-object v0

    .line 729
    :pswitch_8c
    const-string v0, "monitorInputForBinder"

    return-object v0

    .line 725
    :pswitch_8f
    const-string v0, "monitorGestureInputFiltered"

    return-object v0

    .line 721
    :pswitch_92
    const-string v0, "monitorGestureInput"

    return-object v0

    .line 717
    :pswitch_95
    const-string v0, "requestPointerCapture"

    return-object v0

    .line 713
    :pswitch_98
    const-string v0, "setShowAllTouches"

    return-object v0

    .line 709
    :pswitch_9b
    const-string v0, "getToolTypeForDefaultPointerIcon"

    return-object v0

    .line 705
    :pswitch_9e
    const-string v0, "isDefaultPointerIconChanged"

    return-object v0

    .line 701
    :pswitch_a1
    const-string v0, "getDefaultPointerIcon"

    return-object v0

    .line 697
    :pswitch_a4
    const-string v0, "setDefaultPointerIcon"

    return-object v0

    .line 693
    :pswitch_a7
    const-string v0, "setCustomPointerIcon"

    return-object v0

    .line 689
    :pswitch_aa
    const-string v0, "setPointerIconType"

    return-object v0

    .line 685
    :pswitch_ad
    const-string v0, "getBatteryState"

    return-object v0

    .line 681
    :pswitch_b0
    const-string v0, "unregisterVibratorStateListener"

    return-object v0

    .line 677
    :pswitch_b3
    const-string v0, "registerVibratorStateListener"

    return-object v0

    .line 673
    :pswitch_b6
    const-string v0, "isVibrating"

    return-object v0

    .line 669
    :pswitch_b9
    const-string v0, "getVibratorIds"

    return-object v0

    .line 665
    :pswitch_bc
    const-string v0, "cancelVibrate"

    return-object v0

    .line 661
    :pswitch_bf
    const-string v0, "vibrateCombined"

    return-object v0

    .line 657
    :pswitch_c2
    const-string v0, "vibrate"

    return-object v0

    .line 653
    :pswitch_c5
    const-string v0, "isMicMuted"

    return-object v0

    .line 649
    :pswitch_c8
    const-string v0, "registerTabletModeChangedListener"

    return-object v0

    .line 645
    :pswitch_cb
    const-string v0, "getCurrentSwitchEventState"

    return-object v0

    .line 641
    :pswitch_ce
    const-string v0, "registerSwitchEventChangedListener"

    return-object v0

    .line 637
    :pswitch_d1
    const-string v0, "registerMultiFingerGestureListener"

    return-object v0

    .line 633
    :pswitch_d4
    const-string v0, "supportPogoDevice"

    return-object v0

    .line 629
    :pswitch_d7
    const-string v0, "checkInputFeature"

    return-object v0

    .line 625
    :pswitch_da
    const-string v0, "getLastLidEventTimeNanos"

    return-object v0

    .line 621
    :pswitch_dd
    const-string v0, "registerLidStateChangedListener"

    return-object v0

    .line 617
    :pswitch_e0
    const-string v0, "getLidState"

    return-object v0

    .line 613
    :pswitch_e3
    const-string v0, "isInTabletMode"

    return-object v0

    .line 609
    :pswitch_e6
    const-string v0, "registerInputDevicesChangedListener"

    return-object v0

    .line 605
    :pswitch_e9
    const-string v0, "getModifierKeyRemapping"

    return-object v0

    .line 601
    :pswitch_ec
    const-string v0, "clearAllModifierKeyRemappings"

    return-object v0

    .line 597
    :pswitch_ef
    const-string v0, "remapModifierKey"

    return-object v0

    .line 593
    :pswitch_f2
    const-string v0, "getKeyboardLayoutListForInputDevice"

    return-object v0

    .line 589
    :pswitch_f5
    const-string v0, "setKeyboardLayoutForInputDevice"

    return-object v0

    .line 585
    :pswitch_f8
    const-string v0, "getKeyboardLayoutForInputDevice"

    return-object v0

    .line 581
    :pswitch_fb
    const-string v0, "removeKeyboardLayoutForInputDevice"

    return-object v0

    .line 577
    :pswitch_fe
    const-string v0, "addKeyboardLayoutForInputDevice"

    return-object v0

    .line 573
    :pswitch_101
    const-string v0, "getEnabledKeyboardLayoutsForInputDevice"

    return-object v0

    .line 569
    :pswitch_104
    const-string v0, "setCurrentKeyboardLayoutForInputDevice"

    return-object v0

    .line 565
    :pswitch_107
    const-string v0, "getCurrentKeyboardLayoutForInputDevice"

    return-object v0

    .line 561
    :pswitch_10a
    const-string v0, "getKeyboardLayout"

    return-object v0

    .line 557
    :pswitch_10d
    const-string v0, "getKeyboardLayoutsForInputDevice"

    return-object v0

    .line 553
    :pswitch_110
    const-string v0, "getKeyboardLayouts"

    return-object v0

    .line 549
    :pswitch_113
    const-string v0, "setTouchCalibrationForInputDevice"

    return-object v0

    .line 545
    :pswitch_116
    const-string v0, "getTouchCalibrationForInputDevice"

    return-object v0

    .line 541
    :pswitch_119
    const-string v0, "verifyInputEvent"

    return-object v0

    .line 537
    :pswitch_11c
    const-string v0, "injectInputEventToTarget"

    return-object v0

    .line 533
    :pswitch_11f
    const-string v0, "injectInputEvent"

    return-object v0

    .line 529
    :pswitch_122
    const-string v0, "tryPointerSpeed"

    return-object v0

    .line 525
    :pswitch_125
    const-string v0, "getKeyCodeForKeyLocation"

    return-object v0

    .line 521
    :pswitch_128
    const-string v0, "hasKeys"

    return-object v0

    .line 517
    :pswitch_12b
    const-string v0, "disableInputDevice"

    return-object v0

    .line 513
    :pswitch_12e
    const-string v0, "enableInputDevice"

    return-object v0

    .line 509
    :pswitch_131
    const-string v0, "isInputDeviceEnabled"

    return-object v0

    .line 505
    :pswitch_134
    const-string v0, "getInputDeviceIds"

    return-object v0

    .line 501
    :pswitch_137
    const-string v0, "getInputDevice"

    return-object v0

    .line 497
    :pswitch_13a
    const-string v0, "getVelocityTrackerStrategy"

    return-object v0

    nop

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
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
.method protected addKeyboardLayoutForInputDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3899
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3900
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 488
    return-object p0
.end method

.method protected clearAllModifierKeyRemappings_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3921
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3922
    return-void
.end method

.method protected getInputDeviceBluetoothAddress_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 4002
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 4003
    return-void
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 4023
    const/16 v0, 0x67

    return v0
.end method

.method protected getModifierKeyRemapping_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3926
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3927
    return-void
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 920
    invoke-static {p1}, Landroid/hardware/input/IInputManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 924
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.hardware.input.IInputManager"

    .line 925
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 926
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    :cond_15
    packed-switch v7, :pswitch_data_84a

    .line 936
    packed-switch v7, :pswitch_data_850

    .line 2013
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 932
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    return v11

    .line 2004
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2005
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2006
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object v1

    .line 2007
    .local v1, "_result":Landroid/hardware/input/HostUsiVersion;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2009
    goto/16 :goto_849

    .line 1995
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/input/HostUsiVersion;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyboardBacklightListener;

    move-result-object v0

    .line 1996
    .local v0, "_arg0":Landroid/hardware/input/IKeyboardBacklightListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1997
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V

    .line 1998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1999
    goto/16 :goto_849

    .line 1986
    .end local v0    # "_arg0":Landroid/hardware/input/IKeyboardBacklightListener;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyboardBacklightListener;

    move-result-object v0

    .line 1987
    .restart local v0    # "_arg0":Landroid/hardware/input/IKeyboardBacklightListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1988
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V

    .line 1989
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1990
    goto/16 :goto_849

    .line 1977
    .end local v0    # "_arg0":Landroid/hardware/input/IKeyboardBacklightListener;
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1978
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1979
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->pilferPointers(Landroid/os/IBinder;)V

    .line 1980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    goto/16 :goto_849

    .line 1967
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1968
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1969
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 1970
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1972
    goto/16 :goto_849

    .line 1956
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1958
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IInputDeviceBatteryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDeviceBatteryListener;

    move-result-object v1

    .line 1959
    .local v1, "_arg1":Landroid/hardware/input/IInputDeviceBatteryListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1960
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V

    .line 1961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    goto/16 :goto_849

    .line 1945
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/input/IInputDeviceBatteryListener;
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1947
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IInputDeviceBatteryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDeviceBatteryListener;

    move-result-object v1

    .line 1948
    .restart local v1    # "_arg1":Landroid/hardware/input/IInputDeviceBatteryListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1949
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V

    .line 1950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1951
    goto/16 :goto_849

    .line 1938
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/input/IInputDeviceBatteryListener;
    :pswitch_ad
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->cancelCurrentTouch()V

    .line 1939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    goto/16 :goto_849

    .line 1928
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1930
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1931
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1932
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->closeLightSession(ILandroid/os/IBinder;)V

    .line 1933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    goto/16 :goto_849

    .line 1915
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1917
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1919
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1920
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    goto/16 :goto_849

    .line 1900
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1902
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1904
    .local v1, "_arg1":[I
    sget-object v2, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/lights/LightState;

    .line 1906
    .local v2, "_arg2":[Landroid/hardware/lights/LightState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1907
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1908
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V

    .line 1909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1910
    goto/16 :goto_849

    .line 1888
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[Landroid/hardware/lights/LightState;
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1890
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1891
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1892
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object v2

    .line 1893
    .local v2, "_result":Landroid/hardware/lights/LightState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1894
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1895
    goto/16 :goto_849

    .line 1878
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/hardware/lights/LightState;
    :pswitch_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1879
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1880
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getLights(I)Ljava/util/List;

    move-result-object v1

    .line 1881
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1882
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1883
    goto/16 :goto_849

    .line 1866
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :pswitch_128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1868
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1869
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1870
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->flushSensor(II)Z

    move-result v2

    .line 1871
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1873
    goto/16 :goto_849

    .line 1855
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_13f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1857
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1858
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1859
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->disableSensor(II)V

    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    goto/16 :goto_849

    .line 1839
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1841
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1843
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1845
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1846
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1847
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->enableSensor(IIII)Z

    move-result v4

    .line 1848
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1850
    goto/16 :goto_849

    .line 1830
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v0

    .line 1831
    .local v0, "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1832
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 1833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1834
    goto/16 :goto_849

    .line 1820
    .end local v0    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    :pswitch_184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v0

    .line 1821
    .restart local v0    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1822
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v1

    .line 1823
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1824
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1825
    goto/16 :goto_849

    .line 1810
    .end local v0    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    .end local v1    # "_result":Z
    :pswitch_19b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1811
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1812
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v1

    .line 1813
    .local v1, "_result":[Landroid/hardware/input/InputSensorInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1814
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1815
    goto/16 :goto_849

    .line 1801
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/hardware/input/InputSensorInfo;
    :pswitch_1ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1803
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->removeUniqueIdAssociation(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    goto/16 :goto_849

    .line 1790
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1792
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1793
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1794
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    goto/16 :goto_849

    .line 1781
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1782
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1783
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->removePortAssociation(Ljava/lang/String;)V

    .line 1784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    goto/16 :goto_849

    .line 1770
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1772
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1773
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1774
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->addPortAssociation(Ljava/lang/String;I)V

    .line 1775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    goto/16 :goto_849

    .line 1761
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1f2
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1762
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1763
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    goto/16 :goto_849

    .line 1754
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_205
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->setHostRoleWirelessKeyboardShare()V

    .line 1755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    goto/16 :goto_849

    .line 1743
    :pswitch_20d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1745
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1746
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1747
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z

    move-result v2

    .line 1748
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1750
    goto/16 :goto_849

    .line 1733
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1734
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1735
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->addDeviceWirelessKeyboardShare(I)Z

    move-result v1

    .line 1736
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1738
    goto/16 :goto_849

    .line 1722
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1725
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1726
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V

    .line 1727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    goto/16 :goto_849

    .line 1711
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_24a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1713
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1714
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1715
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1717
    goto/16 :goto_849

    .line 1704
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_25d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->updateWirelessKeyboardShareStatus()V

    .line 1705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    goto/16 :goto_849

    .line 1696
    :pswitch_265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IWirelessKeyboardShareChangedListener;

    move-result-object v0

    .line 1697
    .local v0, "_arg0":Landroid/hardware/input/IWirelessKeyboardShareChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1698
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V

    .line 1699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1700
    goto/16 :goto_849

    .line 1683
    .end local v0    # "_arg0":Landroid/hardware/input/IWirelessKeyboardShareChangedListener;
    :pswitch_278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1685
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1687
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1688
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1689
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->notifyQuickAccess(IFF)V

    .line 1690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1691
    goto/16 :goto_849

    .line 1674
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    :pswitch_28f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1675
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1676
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->forceFadeIcon(I)V

    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1678
    goto/16 :goto_849

    .line 1664
    .end local v0    # "_arg0":I
    :pswitch_29e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1665
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1666
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->isUidTouched(I)Z

    move-result v1

    .line 1667
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1669
    goto/16 :goto_849

    .line 1655
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1656
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1657
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setStartedShutdown(Z)V

    .line 1658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    goto/16 :goto_849

    .line 1645
    .end local v0    # "_arg0":Z
    :pswitch_2c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1646
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1647
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->semGetMotionIdleTimeMillis(Z)J

    move-result-wide v1

    .line 1648
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1650
    goto/16 :goto_849

    .line 1635
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":J
    :pswitch_2d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1636
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1637
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getGlobalMetaState(I)I

    move-result v1

    .line 1638
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    goto/16 :goto_849

    .line 1622
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1624
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1626
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1627
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1628
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    goto/16 :goto_849

    .line 1608
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1610
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1612
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1613
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1614
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getScanCodeState(III)I

    move-result v3

    .line 1615
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    goto/16 :goto_849

    .line 1600
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_318
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInboundQueueLength()I

    move-result v0

    .line 1601
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1603
    goto/16 :goto_849

    .line 1589
    .end local v0    # "_result":I
    :pswitch_324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1591
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1592
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1593
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setTspEnabled(IZ)Z

    move-result v2

    .line 1594
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1596
    goto/16 :goto_849

    .line 1581
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_33b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getDisplayIdForPointerIcon()I

    move-result v0

    .line 1582
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    goto/16 :goto_849

    .line 1573
    .end local v0    # "_result":I
    :pswitch_347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1574
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1575
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setDisplayIdForPointerIcon(I)V

    .line 1576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    goto/16 :goto_849

    .line 1564
    .end local v0    # "_arg0":I
    :pswitch_356
    sget-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PointerIcon;

    .line 1565
    .local v0, "_arg0":Landroid/view/PointerIcon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1566
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setCustomHoverIcon(Landroid/view/PointerIcon;)V

    .line 1567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    goto/16 :goto_849

    .line 1555
    .end local v0    # "_arg0":Landroid/view/PointerIcon;
    :pswitch_369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IPointerIconChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IPointerIconChangedListener;

    move-result-object v0

    .line 1556
    .local v0, "_arg0":Landroid/hardware/input/IPointerIconChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1557
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V

    .line 1558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    goto/16 :goto_849

    .line 1541
    .end local v0    # "_arg0":Landroid/hardware/input/IPointerIconChangedListener;
    :pswitch_37c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1543
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1545
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1546
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object v3

    .line 1548
    .local v3, "_result":Landroid/view/InputChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1550
    goto/16 :goto_849

    .line 1525
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/view/InputChannel;
    :pswitch_397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1527
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1531
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1532
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1533
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->monitorGestureInputFiltered(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object v4

    .line 1534
    .local v4, "_result":Landroid/view/InputMonitor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1536
    goto/16 :goto_849

    .line 1511
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/view/InputMonitor;
    :pswitch_3b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1513
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1515
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1516
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1517
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v3

    .line 1518
    .local v3, "_result":Landroid/view/InputMonitor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1520
    goto/16 :goto_849

    .line 1501
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/view/InputMonitor;
    :pswitch_3d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1503
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1504
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1505
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 1506
    goto/16 :goto_849

    .line 1492
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_3e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1493
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1494
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setShowAllTouches(Z)V

    .line 1495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    goto/16 :goto_849

    .line 1484
    .end local v0    # "_arg0":Z
    :pswitch_3f0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getToolTypeForDefaultPointerIcon()I

    move-result v0

    .line 1485
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    goto/16 :goto_849

    .line 1477
    .end local v0    # "_result":I
    :pswitch_3fc
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isDefaultPointerIconChanged()Z

    move-result v0

    .line 1478
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1480
    goto/16 :goto_849

    .line 1470
    .end local v0    # "_result":Z
    :pswitch_408
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getDefaultPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    .line 1471
    .local v0, "_result":Landroid/view/PointerIcon;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1473
    goto/16 :goto_849

    .line 1458
    .end local v0    # "_result":Landroid/view/PointerIcon;
    :pswitch_414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1460
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/PointerIcon;

    .line 1462
    .local v1, "_arg1":Landroid/view/PointerIcon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1463
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setDefaultPointerIcon(ILandroid/view/PointerIcon;Z)V

    .line 1465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    goto/16 :goto_849

    .line 1449
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/PointerIcon;
    .end local v2    # "_arg2":Z
    :pswitch_42f
    sget-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PointerIcon;

    .line 1450
    .local v0, "_arg0":Landroid/view/PointerIcon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1451
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 1452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    goto/16 :goto_849

    .line 1440
    .end local v0    # "_arg0":Landroid/view/PointerIcon;
    :pswitch_442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1441
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    goto/16 :goto_849

    .line 1430
    .end local v0    # "_arg0":I
    :pswitch_451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1431
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;

    move-result-object v1

    .line 1433
    .local v1, "_result":Landroid/hardware/input/IInputDeviceBatteryState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1435
    goto/16 :goto_849

    .line 1418
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/input/IInputDeviceBatteryState;
    :pswitch_464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1420
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v1

    .line 1421
    .local v1, "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    .line 1423
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1425
    goto/16 :goto_849

    .line 1406
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v2    # "_result":Z
    :pswitch_47f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1408
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v1

    .line 1409
    .restart local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    .line 1411
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1413
    goto/16 :goto_849

    .line 1396
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v2    # "_result":Z
    :pswitch_49a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1397
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->isVibrating(I)Z

    move-result v1

    .line 1399
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1401
    goto/16 :goto_849

    .line 1386
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1387
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getVibratorIds(I)[I

    move-result-object v1

    .line 1389
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1391
    goto/16 :goto_849

    .line 1375
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_4c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1377
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1378
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1379
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 1380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    goto/16 :goto_849

    .line 1362
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_4d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1364
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    .line 1366
    .local v1, "_arg1":Landroid/os/CombinedVibration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1367
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V

    .line 1369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    goto/16 :goto_849

    .line 1349
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/CombinedVibration;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_4ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1351
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    .line 1353
    .local v1, "_arg1":Landroid/os/VibrationEffect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1354
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    .line 1356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    goto/16 :goto_849

    .line 1341
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/VibrationEffect;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_509
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isMicMuted()I

    move-result v0

    .line 1342
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    goto/16 :goto_849

    .line 1333
    .end local v0    # "_result":I
    :pswitch_515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v0

    .line 1334
    .local v0, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1335
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 1336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    goto/16 :goto_849

    .line 1321
    .end local v0    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :pswitch_528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1323
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1324
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getCurrentSwitchEventState(IZ)I

    move-result v2

    .line 1326
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    goto/16 :goto_849

    .line 1312
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_53f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/ISwitchEventChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ISwitchEventChangedListener;

    move-result-object v0

    .line 1313
    .local v0, "_arg0":Landroid/hardware/input/ISwitchEventChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerSwitchEventChangedListener(Landroid/hardware/input/ISwitchEventChangedListener;)V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    goto/16 :goto_849

    .line 1303
    .end local v0    # "_arg0":Landroid/hardware/input/ISwitchEventChangedListener;
    :pswitch_552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IMultiFingerGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IMultiFingerGestureListener;

    move-result-object v0

    .line 1304
    .local v0, "_arg0":Landroid/hardware/input/IMultiFingerGestureListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V

    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    goto/16 :goto_849

    .line 1295
    .end local v0    # "_arg0":Landroid/hardware/input/IMultiFingerGestureListener;
    :pswitch_565
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->supportPogoDevice()Z

    move-result v0

    .line 1296
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1298
    goto/16 :goto_849

    .line 1288
    .end local v0    # "_result":Z
    :pswitch_571
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->checkInputFeature()I

    move-result v0

    .line 1289
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    goto/16 :goto_849

    .line 1281
    .end local v0    # "_result":I
    :pswitch_57d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getLastLidEventTimeNanos()J

    move-result-wide v0

    .line 1282
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1284
    goto/16 :goto_849

    .line 1273
    .end local v0    # "_result":J
    :pswitch_589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/ISemLidStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ISemLidStateChangedListener;

    move-result-object v0

    .line 1274
    .local v0, "_arg0":Landroid/hardware/input/ISemLidStateChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    goto/16 :goto_849

    .line 1265
    .end local v0    # "_arg0":Landroid/hardware/input/ISemLidStateChangedListener;
    :pswitch_59c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getLidState()I

    move-result v0

    .line 1266
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    goto/16 :goto_849

    .line 1258
    .end local v0    # "_result":I
    :pswitch_5a8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v0

    .line 1259
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    goto/16 :goto_849

    .line 1250
    .end local v0    # "_result":I
    :pswitch_5b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v0

    .line 1251
    .local v0, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 1253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    goto/16 :goto_849

    .line 1242
    .end local v0    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :pswitch_5c7
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getModifierKeyRemapping()Ljava/util/Map;

    move-result-object v0

    .line 1243
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1245
    goto/16 :goto_849

    .line 1236
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_5d3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->clearAllModifierKeyRemappings()V

    .line 1237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    goto/16 :goto_849

    .line 1226
    :pswitch_5db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1228
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1229
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->remapModifierKey(II)V

    .line 1231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    goto/16 :goto_849

    .line 1210
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5ee
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1212
    .local v0, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1214
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1216
    .local v2, "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1217
    .local v3, "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v4

    .line 1219
    .local v4, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1221
    goto/16 :goto_849

    .line 1193
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_619
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1195
    .local v12, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1197
    .local v13, "_arg1":I
    sget-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 1199
    .local v14, "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1201
    .local v15, "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1202
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1203
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    goto/16 :goto_849

    .line 1177
    .end local v12    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    .end local v15    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_64f
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1179
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1181
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1183
    .restart local v2    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1184
    .restart local v3    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v4

    .line 1186
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1188
    goto/16 :goto_849

    .line 1166
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_67a
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1168
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    goto/16 :goto_849

    .line 1155
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_691
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1157
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1158
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    goto/16 :goto_849

    .line 1145
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6a8
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1146
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1147
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1150
    goto/16 :goto_849

    .line 1134
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_6bf
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1136
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    goto/16 :goto_849

    .line 1124
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6d6
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1125
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1129
    goto/16 :goto_849

    .line 1114
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1116
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v1

    .line 1117
    .local v1, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1119
    goto/16 :goto_849

    .line 1104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/hardware/input/KeyboardLayout;
    :pswitch_700
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1105
    .local v0, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v1

    .line 1107
    .local v1, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1109
    goto/16 :goto_849

    .line 1096
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_717
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    .line 1097
    .local v0, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1099
    goto/16 :goto_849

    .line 1084
    .end local v0    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1088
    .local v1, "_arg1":I
    sget-object v2, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/TouchCalibration;

    .line 1089
    .local v2, "_arg2":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 1091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    goto/16 :goto_849

    .line 1072
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :pswitch_73e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1074
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1075
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v2

    .line 1077
    .local v2, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1079
    goto/16 :goto_849

    .line 1062
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/hardware/input/TouchCalibration;
    :pswitch_755
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 1063
    .local v0, "_arg0":Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v1

    .line 1065
    .local v1, "_result":Landroid/view/VerifiedInputEvent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1067
    goto/16 :goto_849

    .line 1048
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    .end local v1    # "_result":Landroid/view/VerifiedInputEvent;
    :pswitch_76c
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 1050
    .restart local v0    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1052
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1053
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v3

    .line 1055
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    goto/16 :goto_849

    .line 1036
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_78b
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 1038
    .restart local v0    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1039
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    .line 1041
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1043
    goto/16 :goto_849

    .line 1027
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1028
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    goto/16 :goto_849

    .line 1015
    .end local v0    # "_arg0":I
    :pswitch_7b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1017
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1018
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyCodeForKeyLocation(II)I

    move-result v2

    .line 1020
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    goto/16 :goto_849

    .line 993
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_7cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 995
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 997
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 999
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1000
    .local v3, "_arg3_length":I
    if-gez v3, :cond_7e0

    .line 1001
    const/4 v4, 0x0

    .local v4, "_arg3":[Z
    goto :goto_7e2

    .line 1003
    .end local v4    # "_arg3":[Z
    :cond_7e0
    new-array v4, v3, [Z

    .line 1005
    .restart local v4    # "_arg3":[Z
    :goto_7e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {v6, v0, v1, v2, v4}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v5

    .line 1007
    .local v5, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1009
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 1010
    goto :goto_849

    .line 984
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3_length":I
    .end local v4    # "_arg3":[Z
    .end local v5    # "_result":Z
    :pswitch_7f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 985
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    goto :goto_849

    .line 975
    .end local v0    # "_arg0":I
    :pswitch_801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 976
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto :goto_849

    .line 965
    .end local v0    # "_arg0":I
    :pswitch_80f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 966
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->isInputDeviceEnabled(I)Z

    move-result v1

    .line 968
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 970
    goto :goto_849

    .line 957
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_821
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v0

    .line 958
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 960
    goto :goto_849

    .line 948
    .end local v0    # "_result":[I
    :pswitch_82c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 949
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 951
    .local v1, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 953
    goto :goto_849

    .line 940
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/InputDevice;
    :pswitch_83e
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    nop

    .line 2016
    .end local v0    # "_result":Ljava/lang/String;
    :goto_849
    return v11

    :pswitch_data_84a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_850
    .packed-switch 0x1
        :pswitch_83e
        :pswitch_82c
        :pswitch_821
        :pswitch_80f
        :pswitch_801
        :pswitch_7f3
        :pswitch_7cc
        :pswitch_7b5
        :pswitch_7a6
        :pswitch_78b
        :pswitch_76c
        :pswitch_755
        :pswitch_73e
        :pswitch_723
        :pswitch_717
        :pswitch_700
        :pswitch_6ed
        :pswitch_6d6
        :pswitch_6bf
        :pswitch_6a8
        :pswitch_691
        :pswitch_67a
        :pswitch_64f
        :pswitch_619
        :pswitch_5ee
        :pswitch_5db
        :pswitch_5d3
        :pswitch_5c7
        :pswitch_5b4
        :pswitch_5a8
        :pswitch_59c
        :pswitch_589
        :pswitch_57d
        :pswitch_571
        :pswitch_565
        :pswitch_552
        :pswitch_53f
        :pswitch_528
        :pswitch_515
        :pswitch_509
        :pswitch_4ee
        :pswitch_4d3
        :pswitch_4c0
        :pswitch_4ad
        :pswitch_49a
        :pswitch_47f
        :pswitch_464
        :pswitch_451
        :pswitch_442
        :pswitch_42f
        :pswitch_414
        :pswitch_408
        :pswitch_3fc
        :pswitch_3f0
        :pswitch_3e1
        :pswitch_3d1
        :pswitch_3b6
        :pswitch_397
        :pswitch_37c
        :pswitch_369
        :pswitch_356
        :pswitch_347
        :pswitch_33b
        :pswitch_324
        :pswitch_318
        :pswitch_2fd
        :pswitch_2e6
        :pswitch_2d3
        :pswitch_2c0
        :pswitch_2b1
        :pswitch_29e
        :pswitch_28f
        :pswitch_278
        :pswitch_265
        :pswitch_25d
        :pswitch_24a
        :pswitch_237
        :pswitch_224
        :pswitch_20d
        :pswitch_205
        :pswitch_1f2
        :pswitch_1df
        :pswitch_1d0
        :pswitch_1bd
        :pswitch_1ae
        :pswitch_19b
        :pswitch_184
        :pswitch_171
        :pswitch_152
        :pswitch_13f
        :pswitch_128
        :pswitch_115
        :pswitch_fe
        :pswitch_df
        :pswitch_c8
        :pswitch_b5
        :pswitch_ad
        :pswitch_96
        :pswitch_7f
        :pswitch_6c
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method

.method protected pilferPointers_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 4007
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_INPUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 4008
    return-void
.end method

.method protected registerKeyboardBacklightListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 4012
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_KEYBOARD_BACKLIGHT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 4013
    return-void
.end method

.method protected remapModifierKey_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3916
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3917
    return-void
.end method

.method protected removeKeyboardLayoutForInputDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3904
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3905
    return-void
.end method

.method protected setCurrentKeyboardLayoutForInputDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3893
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3894
    return-void
.end method

.method protected setKeyboardLayoutForInputDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3910
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3911
    return-void
.end method

.method protected unregisterKeyboardBacklightListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 4017
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_KEYBOARD_BACKLIGHT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 4018
    return-void
.end method
