.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_acquireLowRefreshRateToken:I = 0x55

.field static final TRANSACTION_acquirePassiveModeToken:I = 0x54

.field static final TRANSACTION_acquireRefreshRateMaxLimitToken:I = 0x56

.field static final TRANSACTION_acquireRefreshRateMinLimitToken:I = 0x57

.field static final TRANSACTION_areUserDisabledHdrTypesAllowed:I = 0x11

.field static final TRANSACTION_connectWifiDisplay:I = 0x8

.field static final TRANSACTION_connectWifiDisplayWithConfig:I = 0x1b

.field static final TRANSACTION_convertToBrightness:I = 0x52

.field static final TRANSACTION_createVirtualDisplay:I = 0x15

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x9

.field static final TRANSACTION_fitToActiveDisplay:I = 0x29

.field static final TRANSACTION_forgetWifiDisplay:I = 0xb

.field static final TRANSACTION_getAmbientBrightnessStats:I = 0x31

.field static final TRANSACTION_getBackupBrightnessConfiguration:I = 0x51

.field static final TRANSACTION_getBrightness:I = 0x3a

.field static final TRANSACTION_getBrightnessConfigurationForDisplay:I = 0x34

.field static final TRANSACTION_getBrightnessConfigurationForUser:I = 0x35

.field static final TRANSACTION_getBrightnessEvents:I = 0x30

.field static final TRANSACTION_getBrightnessInfo:I = 0x3d

.field static final TRANSACTION_getDefaultBrightnessConfiguration:I = 0x36

.field static final TRANSACTION_getDeviceMaxVolume:I = 0x27

.field static final TRANSACTION_getDeviceMinVolume:I = 0x25

.field static final TRANSACTION_getDisplayDecorationSupport:I = 0x4a

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getDlnaDevice:I = 0x21

.field static final TRANSACTION_getHdrConversionMode:I = 0x44

.field static final TRANSACTION_getHdrConversionModeSetting:I = 0x43

.field static final TRANSACTION_getMinimumBrightnessCurve:I = 0x3c

.field static final TRANSACTION_getOverlaySupport:I = 0x4c

.field static final TRANSACTION_getPreferredWideGamutColorSpaceId:I = 0x3e

.field static final TRANSACTION_getPresentationOwner:I = 0x2b

.field static final TRANSACTION_getPrimaryPhysicalDisplayId:I = 0x58

.field static final TRANSACTION_getRefreshRateSwitchingType:I = 0x49

.field static final TRANSACTION_getScreenSharingStatus:I = 0x1e

.field static final TRANSACTION_getStableDisplaySize:I = 0x2f

.field static final TRANSACTION_getSupportedHdrOutputTypes:I = 0x45

.field static final TRANSACTION_getSystemPreferredDisplayMode:I = 0x41

.field static final TRANSACTION_getUserDisabledHdrTypes:I = 0x12

.field static final TRANSACTION_getUserPreferredDisplayMode:I = 0x40

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xe

.field static final TRANSACTION_isDeviceVolumeMuted:I = 0x26

.field static final TRANSACTION_isFitToActiveDisplay:I = 0x2a

.field static final TRANSACTION_isMinimalPostProcessingRequested:I = 0x37

.field static final TRANSACTION_isUidPresentOnDisplay:I = 0x3

.field static final TRANSACTION_isWifiDisplayWithPinSupported:I = 0x28

.field static final TRANSACTION_overrideHdrTypes:I = 0x13

.field static final TRANSACTION_pauseWifiDisplay:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0x4

.field static final TRANSACTION_registerCallbackWithEventMask:I = 0x5

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x18

.field static final TRANSACTION_renameWifiDisplay:I = 0xa

.field static final TRANSACTION_requestColorMode:I = 0x14

.field static final TRANSACTION_requestSetWifiDisplayParameters:I = 0x2d

.field static final TRANSACTION_requestWifiDisplayParameter:I = 0x2e

.field static final TRANSACTION_resetBrightnessConfigurationForUser:I = 0x4e

.field static final TRANSACTION_resizeVirtualDisplay:I = 0x16

.field static final TRANSACTION_resumeWifiDisplay:I = 0xd

.field static final TRANSACTION_rotateVirtualDisplay:I = 0x1a

.field static final TRANSACTION_setAreUserDisabledHdrTypesAllowed:I = 0x10

.field static final TRANSACTION_setBackupBrightnessConfiguration:I = 0x50

.field static final TRANSACTION_setBrightness:I = 0x39

.field static final TRANSACTION_setBrightnessConfigurationForDisplay:I = 0x33

.field static final TRANSACTION_setBrightnessConfigurationForUser:I = 0x32

.field static final TRANSACTION_setBrightnessConfigurationForUserWithStats:I = 0x4d

.field static final TRANSACTION_setDeviceVolume:I = 0x22

.field static final TRANSACTION_setDeviceVolumeMuted:I = 0x23

.field static final TRANSACTION_setDisplayIdToMirror:I = 0x4b

.field static final TRANSACTION_setDisplayStateLimit:I = 0x53

.field static final TRANSACTION_setDlnaDevice:I = 0x20

.field static final TRANSACTION_setHdrConversionMode:I = 0x42

.field static final TRANSACTION_setRefreshRateSwitchingType:I = 0x48

.field static final TRANSACTION_setScreenSharingStatus:I = 0x1f

.field static final TRANSACTION_setShouldAlwaysRespectAppRequestedMode:I = 0x46

.field static final TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x3b

.field static final TRANSACTION_setTemporaryBrightness:I = 0x38

.field static final TRANSACTION_setTemporaryBrightnessForSlowChange:I = 0x4f

.field static final TRANSACTION_setUserDisabledHdrTypes:I = 0xf

.field static final TRANSACTION_setUserPreferredDisplayMode:I = 0x3f

.field static final TRANSACTION_setVirtualDisplayState:I = 0x19

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0x17

.field static final TRANSACTION_setVolumeKeyEvent:I = 0x24

.field static final TRANSACTION_setWifiDisplayParam:I = 0x2c

.field static final TRANSACTION_shouldAlwaysRespectAppRequestedMode:I = 0x47

.field static final TRANSACTION_startWifiDisplayChannelScan:I = 0x1c

.field static final TRANSACTION_startWifiDisplayChannelScanAndInterval:I = 0x1d

.field static final TRANSACTION_startWifiDisplayScan:I = 0x6

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 403
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 404
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 412
    if-nez p0, :cond_4

    .line 413
    const/4 v0, 0x0

    return-object v0

    .line 415
    :cond_4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 416
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_14

    .line 417
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    .line 419
    :cond_14
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 428
    packed-switch p0, :pswitch_data_10e

    .line 784
    const/4 v0, 0x0

    return-object v0

    .line 780
    :pswitch_5
    const-string v0, "getPrimaryPhysicalDisplayId"

    return-object v0

    .line 776
    :pswitch_8
    const-string v0, "acquireRefreshRateMinLimitToken"

    return-object v0

    .line 772
    :pswitch_b
    const-string v0, "acquireRefreshRateMaxLimitToken"

    return-object v0

    .line 768
    :pswitch_e
    const-string v0, "acquireLowRefreshRateToken"

    return-object v0

    .line 764
    :pswitch_11
    const-string v0, "acquirePassiveModeToken"

    return-object v0

    .line 760
    :pswitch_14
    const-string v0, "setDisplayStateLimit"

    return-object v0

    .line 756
    :pswitch_17
    const-string v0, "convertToBrightness"

    return-object v0

    .line 752
    :pswitch_1a
    const-string v0, "getBackupBrightnessConfiguration"

    return-object v0

    .line 748
    :pswitch_1d
    const-string v0, "setBackupBrightnessConfiguration"

    return-object v0

    .line 744
    :pswitch_20
    const-string v0, "setTemporaryBrightnessForSlowChange"

    return-object v0

    .line 740
    :pswitch_23
    const-string v0, "resetBrightnessConfigurationForUser"

    return-object v0

    .line 736
    :pswitch_26
    const-string v0, "setBrightnessConfigurationForUserWithStats"

    return-object v0

    .line 732
    :pswitch_29
    const-string v0, "getOverlaySupport"

    return-object v0

    .line 728
    :pswitch_2c
    const-string v0, "setDisplayIdToMirror"

    return-object v0

    .line 724
    :pswitch_2f
    const-string v0, "getDisplayDecorationSupport"

    return-object v0

    .line 720
    :pswitch_32
    const-string v0, "getRefreshRateSwitchingType"

    return-object v0

    .line 716
    :pswitch_35
    const-string v0, "setRefreshRateSwitchingType"

    return-object v0

    .line 712
    :pswitch_38
    const-string v0, "shouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 708
    :pswitch_3b
    const-string v0, "setShouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 704
    :pswitch_3e
    const-string v0, "getSupportedHdrOutputTypes"

    return-object v0

    .line 700
    :pswitch_41
    const-string v0, "getHdrConversionMode"

    return-object v0

    .line 696
    :pswitch_44
    const-string v0, "getHdrConversionModeSetting"

    return-object v0

    .line 692
    :pswitch_47
    const-string v0, "setHdrConversionMode"

    return-object v0

    .line 688
    :pswitch_4a
    const-string v0, "getSystemPreferredDisplayMode"

    return-object v0

    .line 684
    :pswitch_4d
    const-string v0, "getUserPreferredDisplayMode"

    return-object v0

    .line 680
    :pswitch_50
    const-string v0, "setUserPreferredDisplayMode"

    return-object v0

    .line 676
    :pswitch_53
    const-string v0, "getPreferredWideGamutColorSpaceId"

    return-object v0

    .line 672
    :pswitch_56
    const-string v0, "getBrightnessInfo"

    return-object v0

    .line 668
    :pswitch_59
    const-string v0, "getMinimumBrightnessCurve"

    return-object v0

    .line 664
    :pswitch_5c
    const-string v0, "setTemporaryAutoBrightnessAdjustment"

    return-object v0

    .line 660
    :pswitch_5f
    const-string v0, "getBrightness"

    return-object v0

    .line 656
    :pswitch_62
    const-string v0, "setBrightness"

    return-object v0

    .line 652
    :pswitch_65
    const-string v0, "setTemporaryBrightness"

    return-object v0

    .line 648
    :pswitch_68
    const-string v0, "isMinimalPostProcessingRequested"

    return-object v0

    .line 644
    :pswitch_6b
    const-string v0, "getDefaultBrightnessConfiguration"

    return-object v0

    .line 640
    :pswitch_6e
    const-string v0, "getBrightnessConfigurationForUser"

    return-object v0

    .line 636
    :pswitch_71
    const-string v0, "getBrightnessConfigurationForDisplay"

    return-object v0

    .line 632
    :pswitch_74
    const-string v0, "setBrightnessConfigurationForDisplay"

    return-object v0

    .line 628
    :pswitch_77
    const-string v0, "setBrightnessConfigurationForUser"

    return-object v0

    .line 624
    :pswitch_7a
    const-string v0, "getAmbientBrightnessStats"

    return-object v0

    .line 620
    :pswitch_7d
    const-string v0, "getBrightnessEvents"

    return-object v0

    .line 616
    :pswitch_80
    const-string v0, "getStableDisplaySize"

    return-object v0

    .line 612
    :pswitch_83
    const-string v0, "requestWifiDisplayParameter"

    return-object v0

    .line 608
    :pswitch_86
    const-string v0, "requestSetWifiDisplayParameters"

    return-object v0

    .line 604
    :pswitch_89
    const-string v0, "setWifiDisplayParam"

    return-object v0

    .line 600
    :pswitch_8c
    const-string v0, "getPresentationOwner"

    return-object v0

    .line 596
    :pswitch_8f
    const-string v0, "isFitToActiveDisplay"

    return-object v0

    .line 592
    :pswitch_92
    const-string v0, "fitToActiveDisplay"

    return-object v0

    .line 588
    :pswitch_95
    const-string v0, "isWifiDisplayWithPinSupported"

    return-object v0

    .line 584
    :pswitch_98
    const-string v0, "getDeviceMaxVolume"

    return-object v0

    .line 580
    :pswitch_9b
    const-string v0, "isDeviceVolumeMuted"

    return-object v0

    .line 576
    :pswitch_9e
    const-string v0, "getDeviceMinVolume"

    return-object v0

    .line 572
    :pswitch_a1
    const-string v0, "setVolumeKeyEvent"

    return-object v0

    .line 568
    :pswitch_a4
    const-string v0, "setDeviceVolumeMuted"

    return-object v0

    .line 564
    :pswitch_a7
    const-string v0, "setDeviceVolume"

    return-object v0

    .line 560
    :pswitch_aa
    const-string v0, "getDlnaDevice"

    return-object v0

    .line 556
    :pswitch_ad
    const-string v0, "setDlnaDevice"

    return-object v0

    .line 552
    :pswitch_b0
    const-string v0, "setScreenSharingStatus"

    return-object v0

    .line 548
    :pswitch_b3
    const-string v0, "getScreenSharingStatus"

    return-object v0

    .line 544
    :pswitch_b6
    const-string v0, "startWifiDisplayChannelScanAndInterval"

    return-object v0

    .line 540
    :pswitch_b9
    const-string v0, "startWifiDisplayChannelScan"

    return-object v0

    .line 536
    :pswitch_bc
    const-string v0, "connectWifiDisplayWithConfig"

    return-object v0

    .line 532
    :pswitch_bf
    const-string v0, "rotateVirtualDisplay"

    return-object v0

    .line 528
    :pswitch_c2
    const-string v0, "setVirtualDisplayState"

    return-object v0

    .line 524
    :pswitch_c5
    const-string v0, "releaseVirtualDisplay"

    return-object v0

    .line 520
    :pswitch_c8
    const-string v0, "setVirtualDisplaySurface"

    return-object v0

    .line 516
    :pswitch_cb
    const-string v0, "resizeVirtualDisplay"

    return-object v0

    .line 512
    :pswitch_ce
    const-string v0, "createVirtualDisplay"

    return-object v0

    .line 508
    :pswitch_d1
    const-string v0, "requestColorMode"

    return-object v0

    .line 504
    :pswitch_d4
    const-string v0, "overrideHdrTypes"

    return-object v0

    .line 500
    :pswitch_d7
    const-string v0, "getUserDisabledHdrTypes"

    return-object v0

    .line 496
    :pswitch_da
    const-string v0, "areUserDisabledHdrTypesAllowed"

    return-object v0

    .line 492
    :pswitch_dd
    const-string v0, "setAreUserDisabledHdrTypesAllowed"

    return-object v0

    .line 488
    :pswitch_e0
    const-string v0, "setUserDisabledHdrTypes"

    return-object v0

    .line 484
    :pswitch_e3
    const-string v0, "getWifiDisplayStatus"

    return-object v0

    .line 480
    :pswitch_e6
    const-string v0, "resumeWifiDisplay"

    return-object v0

    .line 476
    :pswitch_e9
    const-string v0, "pauseWifiDisplay"

    return-object v0

    .line 472
    :pswitch_ec
    const-string v0, "forgetWifiDisplay"

    return-object v0

    .line 468
    :pswitch_ef
    const-string v0, "renameWifiDisplay"

    return-object v0

    .line 464
    :pswitch_f2
    const-string v0, "disconnectWifiDisplay"

    return-object v0

    .line 460
    :pswitch_f5
    const-string v0, "connectWifiDisplay"

    return-object v0

    .line 456
    :pswitch_f8
    const-string v0, "stopWifiDisplayScan"

    return-object v0

    .line 452
    :pswitch_fb
    const-string v0, "startWifiDisplayScan"

    return-object v0

    .line 448
    :pswitch_fe
    const-string v0, "registerCallbackWithEventMask"

    return-object v0

    .line 444
    :pswitch_101
    const-string v0, "registerCallback"

    return-object v0

    .line 440
    :pswitch_104
    const-string v0, "isUidPresentOnDisplay"

    return-object v0

    .line 436
    :pswitch_107
    const-string v0, "getDisplayIds"

    return-object v0

    .line 432
    :pswitch_10a
    const-string v0, "getDisplayInfo"

    return-object v0

    nop

    :pswitch_data_10e
    .packed-switch 0x1
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
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 423
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 3319
    const/16 v0, 0x57

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 791
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 795
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.hardware.display.IDisplayManager"

    .line 796
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 797
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    :cond_15
    packed-switch v8, :pswitch_data_65a

    .line 807
    packed-switch v8, :pswitch_data_660

    .line 1661
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 803
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 804
    return v12

    .line 1654
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0

    .line 1655
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1657
    goto/16 :goto_658

    .line 1641
    .end local v0    # "_result":J
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1643
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1645
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1646
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1647
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v3

    .line 1648
    .local v3, "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1650
    goto/16 :goto_658

    .line 1627
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1629
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1631
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1632
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1633
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v3

    .line 1634
    .restart local v3    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1636
    goto/16 :goto_658

    .line 1615
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1617
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1618
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1619
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->acquireLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v2

    .line 1620
    .local v2, "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1622
    goto/16 :goto_658

    .line 1603
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1605
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1606
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1607
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->acquirePassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v2

    .line 1608
    .restart local v2    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1610
    goto/16 :goto_658

    .line 1592
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :pswitch_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1594
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1595
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1596
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayStateLimit(Landroid/os/IBinder;I)V

    .line 1597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    goto/16 :goto_658

    .line 1582
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1583
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1584
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->convertToBrightness(F)I

    move-result v1

    .line 1585
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1586
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    goto/16 :goto_658

    .line 1572
    .end local v0    # "_arg0":F
    .end local v1    # "_result":I
    :pswitch_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1573
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1574
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    .line 1575
    .local v1, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1577
    goto/16 :goto_658

    .line 1559
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_cd
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 1561
    .local v0, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1563
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1564
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1565
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    goto/16 :goto_658

    .line 1546
    .end local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1548
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1550
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1551
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1552
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightnessForSlowChange(IFZ)V

    .line 1553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    goto/16 :goto_658

    .line 1535
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":Z
    :pswitch_ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1537
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1538
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1539
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->resetBrightnessConfigurationForUser(ILjava/lang/String;)V

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    goto/16 :goto_658

    .line 1516
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_112
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/display/BrightnessConfiguration;

    .line 1518
    .local v13, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1520
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1522
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1524
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 1526
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 1527
    .local v18, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1528
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUserWithStats(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    goto/16 :goto_658

    .line 1508
    .end local v13    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_145
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v0

    .line 1509
    .local v0, "_result":Landroid/hardware/OverlayProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1511
    goto/16 :goto_658

    .line 1498
    .end local v0    # "_result":Landroid/hardware/OverlayProperties;
    :pswitch_151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1500
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1501
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1502
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayIdToMirror(Landroid/os/IBinder;I)V

    .line 1503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    goto/16 :goto_658

    .line 1488
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1489
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1490
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v1

    .line 1491
    .local v1, "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1493
    goto/16 :goto_658

    .line 1480
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    :pswitch_177
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getRefreshRateSwitchingType()I

    move-result v0

    .line 1481
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1483
    goto/16 :goto_658

    .line 1472
    .end local v0    # "_result":I
    :pswitch_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1473
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1474
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType(I)V

    .line 1475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    goto/16 :goto_658

    .line 1464
    .end local v0    # "_arg0":I
    :pswitch_192
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0

    .line 1465
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1467
    goto/16 :goto_658

    .line 1456
    .end local v0    # "_result":Z
    :pswitch_19e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1457
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1458
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    goto/16 :goto_658

    .line 1448
    .end local v0    # "_arg0":Z
    :pswitch_1ad
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getSupportedHdrOutputTypes()[I

    move-result-object v0

    .line 1449
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1451
    goto/16 :goto_658

    .line 1441
    .end local v0    # "_result":[I
    :pswitch_1b9
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0

    .line 1442
    .local v0, "_result":Landroid/hardware/display/HdrConversionMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1444
    goto/16 :goto_658

    .line 1434
    .end local v0    # "_result":Landroid/hardware/display/HdrConversionMode;
    :pswitch_1c5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0

    .line 1435
    .restart local v0    # "_result":Landroid/hardware/display/HdrConversionMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1437
    goto/16 :goto_658

    .line 1426
    .end local v0    # "_result":Landroid/hardware/display/HdrConversionMode;
    :pswitch_1d1
    sget-object v0, Landroid/hardware/display/HdrConversionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/HdrConversionMode;

    .line 1427
    .local v0, "_arg0":Landroid/hardware/display/HdrConversionMode;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    goto/16 :goto_658

    .line 1416
    .end local v0    # "_arg0":Landroid/hardware/display/HdrConversionMode;
    :pswitch_1e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1417
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v1

    .line 1419
    .local v1, "_result":Landroid/view/Display$Mode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1421
    goto/16 :goto_658

    .line 1406
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/Display$Mode;
    :pswitch_1f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1407
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1408
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v1

    .line 1409
    .restart local v1    # "_result":Landroid/view/Display$Mode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1411
    goto/16 :goto_658

    .line 1395
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/Display$Mode;
    :pswitch_20a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1397
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$Mode;

    .line 1398
    .local v1, "_arg1":Landroid/view/Display$Mode;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    goto/16 :goto_658

    .line 1387
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/Display$Mode;
    :pswitch_221
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPreferredWideGamutColorSpaceId()I

    move-result v0

    .line 1388
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    goto/16 :goto_658

    .line 1378
    .end local v0    # "_result":I
    :pswitch_22d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1379
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1380
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v1

    .line 1381
    .local v1, "_result":Landroid/hardware/display/BrightnessInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1383
    goto/16 :goto_658

    .line 1370
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/display/BrightnessInfo;
    :pswitch_240
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    .line 1371
    .local v0, "_result":Landroid/hardware/display/Curve;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1373
    goto/16 :goto_658

    .line 1362
    .end local v0    # "_result":Landroid/hardware/display/Curve;
    :pswitch_24c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1363
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1364
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 1365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    goto/16 :goto_658

    .line 1352
    .end local v0    # "_arg0":F
    :pswitch_25b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1353
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightness(I)F

    move-result v1

    .line 1355
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1357
    goto/16 :goto_658

    .line 1341
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_26e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1343
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1344
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1345
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness(IF)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    goto/16 :goto_658

    .line 1330
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1332
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1333
    .restart local v1    # "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(IF)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    goto/16 :goto_658

    .line 1320
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1321
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1322
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->isMinimalPostProcessingRequested(I)Z

    move-result v1

    .line 1323
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1325
    goto/16 :goto_658

    .line 1312
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2a7
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 1313
    .local v0, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1315
    goto/16 :goto_658

    .line 1303
    .end local v0    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_2b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1304
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    .line 1306
    .local v1, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1308
    goto/16 :goto_658

    .line 1291
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_2c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1294
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1295
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 1296
    .local v2, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1298
    goto/16 :goto_658

    .line 1276
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_2dd
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 1278
    .local v0, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1280
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1282
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1283
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 1285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    goto/16 :goto_658

    .line 1263
    .end local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2fc
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 1265
    .restart local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1267
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1268
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    goto/16 :goto_658

    .line 1255
    .end local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_317
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1256
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1258
    goto/16 :goto_658

    .line 1246
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1247
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1249
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1251
    goto/16 :goto_658

    .line 1238
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_336
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1239
    .local v0, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1241
    goto/16 :goto_658

    .line 1227
    .end local v0    # "_result":Landroid/graphics/Point;
    :pswitch_342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 1230
    .local v1, "_arg1":Landroid/hardware/display/SemWifiDisplayParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z

    move-result v2

    .line 1232
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1234
    goto/16 :goto_658

    .line 1217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/hardware/display/SemWifiDisplayParameter;
    .end local v2    # "_result":Z
    :pswitch_35d
    sget-object v0, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1218
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->requestSetWifiDisplayParameters(Ljava/util/List;)Z

    move-result v1

    .line 1220
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1222
    goto/16 :goto_658

    .line 1206
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    .end local v1    # "_result":Z
    :pswitch_372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_658

    .line 1196
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1197
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1198
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1200
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1201
    goto/16 :goto_658

    .line 1188
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_398
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isFitToActiveDisplay()Z

    move-result v0

    .line 1189
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1191
    goto/16 :goto_658

    .line 1180
    .end local v0    # "_result":Z
    :pswitch_3a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1181
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->fitToActiveDisplay(Z)V

    .line 1183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    goto/16 :goto_658

    .line 1170
    .end local v0    # "_arg0":Z
    :pswitch_3b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->isWifiDisplayWithPinSupported(Ljava/lang/String;)Z

    move-result v1

    .line 1173
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1175
    goto/16 :goto_658

    .line 1162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3c6
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDeviceMaxVolume()I

    move-result v0

    .line 1163
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    goto/16 :goto_658

    .line 1155
    .end local v0    # "_result":I
    :pswitch_3d2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isDeviceVolumeMuted()Z

    move-result v0

    .line 1156
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1158
    goto/16 :goto_658

    .line 1148
    .end local v0    # "_result":Z
    :pswitch_3de
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDeviceMinVolume()I

    move-result v0

    .line 1149
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    goto/16 :goto_658

    .line 1140
    .end local v0    # "_result":I
    :pswitch_3ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1141
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setVolumeKeyEvent(I)V

    .line 1143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    goto/16 :goto_658

    .line 1131
    .end local v0    # "_arg0":I
    :pswitch_3f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1132
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setDeviceVolumeMuted(Z)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    goto/16 :goto_658

    .line 1122
    .end local v0    # "_arg0":Z
    :pswitch_408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1123
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setDeviceVolume(I)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    goto/16 :goto_658

    .line 1114
    .end local v0    # "_arg0":I
    :pswitch_417
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    .line 1115
    .local v0, "_result":Landroid/hardware/display/SemDlnaDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1117
    goto/16 :goto_658

    .line 1104
    .end local v0    # "_result":Landroid/hardware/display/SemDlnaDevice;
    :pswitch_423
    sget-object v0, Landroid/hardware/display/SemDlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/SemDlnaDevice;

    .line 1106
    .local v0, "_arg0":Landroid/hardware/display/SemDlnaDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1107
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    goto/16 :goto_658

    .line 1095
    .end local v0    # "_arg0":Landroid/hardware/display/SemDlnaDevice;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_43a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1096
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setScreenSharingStatus(I)V

    .line 1098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    goto/16 :goto_658

    .line 1087
    .end local v0    # "_arg0":I
    :pswitch_449
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getScreenSharingStatus()I

    move-result v0

    .line 1088
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    goto/16 :goto_658

    .line 1077
    .end local v0    # "_result":I
    :pswitch_455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1079
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1080
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayChannelScanAndInterval(II)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    goto/16 :goto_658

    .line 1068
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1069
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayChannelScan(I)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    goto/16 :goto_658

    .line 1057
    .end local v0    # "_arg0":I
    :pswitch_477
    sget-object v0, Landroid/hardware/display/SemWifiDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/SemWifiDisplayConfig;

    .line 1059
    .local v0, "_arg0":Landroid/hardware/display/SemWifiDisplayConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IWifiDisplayConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IWifiDisplayConnectionCallback;

    move-result-object v1

    .line 1060
    .local v1, "_arg1":Landroid/hardware/display/IWifiDisplayConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithConfig(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V

    .line 1062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    goto/16 :goto_658

    .line 1046
    .end local v0    # "_arg0":Landroid/hardware/display/SemWifiDisplayConfig;
    .end local v1    # "_arg1":Landroid/hardware/display/IWifiDisplayConnectionCallback;
    :pswitch_492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 1048
    .local v0, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1049
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    goto/16 :goto_658

    .line 1035
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":I
    :pswitch_4a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 1037
    .restart local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1038
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    goto/16 :goto_658

    .line 1026
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":Z
    :pswitch_4c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 1027
    .restart local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 1029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    goto/16 :goto_658

    .line 1015
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :pswitch_4d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 1017
    .restart local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 1018
    .local v1, "_arg1":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    goto/16 :goto_658

    .line 1000
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":Landroid/view/Surface;
    :pswitch_4ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 1002
    .restart local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1004
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1006
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1007
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    goto/16 :goto_658

    .line 984
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_50d
    sget-object v0, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/VirtualDisplayConfig;

    .line 986
    .local v0, "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 988
    .local v1, "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 990
    .local v2, "_arg2":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v4

    .line 993
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    goto/16 :goto_658

    .line 973
    .end local v0    # "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v1    # "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg2":Landroid/media/projection/IMediaProjection;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 975
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 976
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_658

    .line 962
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_54b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 964
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 965
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->overrideHdrTypes(I[I)V

    .line 967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_658

    .line 954
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_55e
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserDisabledHdrTypes()[I

    move-result-object v0

    .line 955
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 957
    goto/16 :goto_658

    .line 947
    .end local v0    # "_result":[I
    :pswitch_56a
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->areUserDisabledHdrTypesAllowed()Z

    move-result v0

    .line 948
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 950
    goto/16 :goto_658

    .line 939
    .end local v0    # "_result":Z
    :pswitch_576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 940
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed(Z)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    goto/16 :goto_658

    .line 930
    .end local v0    # "_arg0":Z
    :pswitch_585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 931
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes([I)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    goto/16 :goto_658

    .line 922
    .end local v0    # "_arg0":[I
    :pswitch_594
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    .line 923
    .local v0, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 925
    goto/16 :goto_658

    .line 916
    .end local v0    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :pswitch_5a0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    goto/16 :goto_658

    .line 910
    :pswitch_5a8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    goto/16 :goto_658

    .line 902
    :pswitch_5b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_658

    .line 891
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 893
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto/16 :goto_658

    .line 884
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5d2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_658

    .line 876
    :pswitch_5da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 877
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto :goto_658

    .line 869
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5e8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto :goto_658

    .line 863
    :pswitch_5ef
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    goto :goto_658

    .line 853
    :pswitch_5f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v0

    .line 855
    .local v0, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 856
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    goto :goto_658

    .line 844
    .end local v0    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    .end local v1    # "_arg1":J
    :pswitch_60c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v0

    .line 845
    .restart local v0    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto :goto_658

    .line 832
    .end local v0    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :pswitch_61e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 834
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 835
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->isUidPresentOnDisplay(II)Z

    move-result v2

    .line 837
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 839
    goto :goto_658

    .line 822
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 823
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds(Z)[I

    move-result-object v1

    .line 825
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 827
    goto :goto_658

    .line 812
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":[I
    :pswitch_646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 813
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 815
    .local v1, "_result":Landroid/view/DisplayInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 817
    nop

    .line 1664
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/DisplayInfo;
    :goto_658
    return v12

    nop

    :pswitch_data_65a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_660
    .packed-switch 0x1
        :pswitch_646
        :pswitch_634
        :pswitch_61e
        :pswitch_60c
        :pswitch_5f6
        :pswitch_5ef
        :pswitch_5e8
        :pswitch_5da
        :pswitch_5d2
        :pswitch_5bf
        :pswitch_5b0
        :pswitch_5a8
        :pswitch_5a0
        :pswitch_594
        :pswitch_585
        :pswitch_576
        :pswitch_56a
        :pswitch_55e
        :pswitch_54b
        :pswitch_538
        :pswitch_50d
        :pswitch_4ee
        :pswitch_4d3
        :pswitch_4c0
        :pswitch_4a9
        :pswitch_492
        :pswitch_477
        :pswitch_468
        :pswitch_455
        :pswitch_449
        :pswitch_43a
        :pswitch_423
        :pswitch_417
        :pswitch_408
        :pswitch_3f9
        :pswitch_3ea
        :pswitch_3de
        :pswitch_3d2
        :pswitch_3c6
        :pswitch_3b3
        :pswitch_3a4
        :pswitch_398
        :pswitch_385
        :pswitch_372
        :pswitch_35d
        :pswitch_342
        :pswitch_336
        :pswitch_323
        :pswitch_317
        :pswitch_2fc
        :pswitch_2dd
        :pswitch_2c6
        :pswitch_2b3
        :pswitch_2a7
        :pswitch_294
        :pswitch_281
        :pswitch_26e
        :pswitch_25b
        :pswitch_24c
        :pswitch_240
        :pswitch_22d
        :pswitch_221
        :pswitch_20a
        :pswitch_1f7
        :pswitch_1e4
        :pswitch_1d1
        :pswitch_1c5
        :pswitch_1b9
        :pswitch_1ad
        :pswitch_19e
        :pswitch_192
        :pswitch_183
        :pswitch_177
        :pswitch_164
        :pswitch_151
        :pswitch_145
        :pswitch_112
        :pswitch_ff
        :pswitch_e8
        :pswitch_cd
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_7d
        :pswitch_66
        :pswitch_4b
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
