.class public abstract Landroid/sec/enterprise/IEDMProxy$Stub;
.super Landroid/os/Binder;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_AuditLogger:I = 0x2c

.field static final TRANSACTION_AuditLoggerAsUser:I = 0x2e

.field static final TRANSACTION_AuditLoggerPrivileged:I = 0x30

.field static final TRANSACTION_AuditLoggerPrivilegedAsUser:I = 0x32

.field static final TRANSACTION_RedactedAuditLogger:I = 0x2d

.field static final TRANSACTION_RedactedAuditLoggerAsUser:I = 0x2f

.field static final TRANSACTION_RedactedAuditLoggerPrivileged:I = 0x31

.field static final TRANSACTION_RedactedAuditLoggerPrivilegedAsUser:I = 0x33

.field static final TRANSACTION_addCallsCount:I = 0x1

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x15

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x18

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x16

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x19

.field static final TRANSACTION_bluetoothLog:I = 0x29

.field static final TRANSACTION_canIncomingCall:I = 0x70

.field static final TRANSACTION_canIncomingSms:I = 0x1c

.field static final TRANSACTION_canOutgoingCall:I = 0x6f

.field static final TRANSACTION_canOutgoingSms:I = 0x1b

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x1a

.field static final TRANSACTION_getAddHomeShorcutRequested:I = 0x64

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x7

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x6

.field static final TRANSACTION_getApplicationNameFromDb:I = 0x45

.field static final TRANSACTION_getApplicationRestrictions:I = 0x59

.field static final TRANSACTION_getBrowserSettingStatus:I = 0xf

.field static final TRANSACTION_getELMPermissions:I = 0x63

.field static final TRANSACTION_getEmergencyCallOnly:I = 0x14

.field static final TRANSACTION_getExtendedCallInfoState:I = 0x5a

.field static final TRANSACTION_getKeyboardMode:I = 0x55

.field static final TRANSACTION_getNtpServer:I = 0x1e

.field static final TRANSACTION_getNtpTimeout:I = 0x1f

.field static final TRANSACTION_getProKioskHideNotificationMessages:I = 0x4a

.field static final TRANSACTION_getProKioskNotificationMessagesState:I = 0x49

.field static final TRANSACTION_getProKioskState:I = 0x48

.field static final TRANSACTION_getSensorDisabled:I = 0x4e

.field static final TRANSACTION_getToastEnabledState:I = 0x4c

.field static final TRANSACTION_getToastGravity:I = 0x52

.field static final TRANSACTION_getToastGravityEnabledState:I = 0x51

.field static final TRANSACTION_getToastGravityXOffset:I = 0x53

.field static final TRANSACTION_getToastGravityYOffset:I = 0x54

.field static final TRANSACTION_getToastShowPackageNameState:I = 0x4d

.field static final TRANSACTION_getUsbNetAddress:I = 0x58

.field static final TRANSACTION_getUsbNetStateInternal:I = 0x57

.field static final TRANSACTION_getVolumeButtonRotationState:I = 0x50

.field static final TRANSACTION_getVolumeControlStream:I = 0x4b

.field static final TRANSACTION_getVolumePanelEnabledState:I = 0x4f

.field static final TRANSACTION_getWifiState:I = 0x56

.field static final TRANSACTION_isAccountRemovalAllowed:I = 0x44

.field static final TRANSACTION_isAllowedMamPackage:I = 0x5b

.field static final TRANSACTION_isAnyApplicationNameChangedAsUser:I = 0x46

.field static final TRANSACTION_isAudioRecordAllowed:I = 0x3b

.field static final TRANSACTION_isAuditLogEnabledAsUser:I = 0x34

.field static final TRANSACTION_isBackupAllowed:I = 0x2b

.field static final TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x41

.field static final TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x40

.field static final TRANSACTION_isBluetoothDeviceAllowed:I = 0xb

.field static final TRANSACTION_isBluetoothEnabled:I = 0xe

.field static final TRANSACTION_isBluetoothLogEnabled:I = 0x28

.field static final TRANSACTION_isBluetoothUUIDAllowed:I = 0x9

.field static final TRANSACTION_isCaCertificateTrustedAsUser:I = 0x38

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x2

.field static final TRANSACTION_isCertificateTrustedUntrustedEnabledAsUser:I = 0x39

.field static final TRANSACTION_isCertificateValidationAtInstallEnabledAsUser:I = 0x3a

.field static final TRANSACTION_isClipboardAllowed:I = 0x12

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x3f

.field static final TRANSACTION_isCopyContactToSimAllowed:I = 0x47

.field static final TRANSACTION_isDataAllowedFromSimSlot:I = 0x71

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xd

.field static final TRANSACTION_isFactoryResetAllowed:I = 0x24

.field static final TRANSACTION_isGoogleAccountsAutoSyncAllowedAsUser:I = 0x67

.field static final TRANSACTION_isIncomingCallAllowedFromSimSlot:I = 0x6e

.field static final TRANSACTION_isIncomingMmsAllowed:I = 0x2a

.field static final TRANSACTION_isIncomingSmsAllowed:I = 0x26

.field static final TRANSACTION_isIncomingSmsAllowedFromSimSlot:I = 0x6a

.field static final TRANSACTION_isKnoxBluetoothEnabled:I = 0x5c

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x17

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x13

.field static final TRANSACTION_isMmsAllowedFromSimSlot:I = 0x6c

.field static final TRANSACTION_isMockLocationEnabled:I = 0x66

.field static final TRANSACTION_isNtpSetByMDM:I = 0x21

.field static final TRANSACTION_isOcspCheckEnabled:I = 0x37

.field static final TRANSACTION_isOutgoingCallAllowedFromSimSlot:I = 0x6d

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0x8

.field static final TRANSACTION_isOutgoingSmsAllowed:I = 0x27

.field static final TRANSACTION_isOutgoingSmsAllowedFromSimSlot:I = 0x6b

.field static final TRANSACTION_isPackageAllowedToAccessExternalSdcard:I = 0x5d

.field static final TRANSACTION_isPackageInAvrWhitelist:I = 0x68

.field static final TRANSACTION_isPairingEnabled:I = 0xc

.field static final TRANSACTION_isProfileEnabled:I = 0xa

.field static final TRANSACTION_isRevocationCheckEnabled:I = 0x36

.field static final TRANSACTION_isRoamingDataEnabled:I = 0x11

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x10

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x4

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x22

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabledAsUser:I = 0x23

.field static final TRANSACTION_isSmsPatternCheckRequired:I = 0x1d

.field static final TRANSACTION_isTaskManagerAllowed:I = 0x25

.field static final TRANSACTION_isVideoRecordAllowed:I = 0x3c

.field static final TRANSACTION_isWapPushAllowed:I = 0x43

.field static final TRANSACTION_notifyCertificateFailureAsUser:I = 0x35

.field static final TRANSACTION_notifyCertificateRemovedAsUser:I = 0x3d

.field static final TRANSACTION_notifyPasswordPolicyOneLockChanged:I = 0x69

.field static final TRANSACTION_registerSystemUICallback:I = 0x65

.field static final TRANSACTION_shallForceNtpMdmValues:I = 0x20

.field static final TRANSACTION_storeBlockedSmsMms:I = 0x42

.field static final TRANSACTION_storeCalling:I = 0x3

.field static final TRANSACTION_storeSMS:I = 0x5

.field static final TRANSACTION_ucmDecrypt:I = 0x5f

.field static final TRANSACTION_ucmEncrypt:I = 0x60

.field static final TRANSACTION_ucmGetCertificateChain:I = 0x5e

.field static final TRANSACTION_ucmMac:I = 0x62

.field static final TRANSACTION_ucmSign:I = 0x61

.field static final TRANSACTION_validateCertificateAtInstallAsUser:I = 0x3e


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 475
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 476
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 484
    if-nez p0, :cond_4

    .line 485
    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 488
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_14

    .line 489
    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/IEDMProxy;

    return-object v1

    .line 491
    :cond_14
    new-instance v1, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 500
    packed-switch p0, :pswitch_data_1ac

    .line 956
    const/4 v0, 0x0

    return-object v0

    .line 952
    :pswitch_5
    const-string/jumbo v0, "isDataAllowedFromSimSlot"

    return-object v0

    .line 948
    :pswitch_9
    const-string v0, "canIncomingCall"

    return-object v0

    .line 944
    :pswitch_c
    const-string v0, "canOutgoingCall"

    return-object v0

    .line 940
    :pswitch_f
    const-string/jumbo v0, "isIncomingCallAllowedFromSimSlot"

    return-object v0

    .line 936
    :pswitch_13
    const-string/jumbo v0, "isOutgoingCallAllowedFromSimSlot"

    return-object v0

    .line 932
    :pswitch_17
    const-string/jumbo v0, "isMmsAllowedFromSimSlot"

    return-object v0

    .line 928
    :pswitch_1b
    const-string/jumbo v0, "isOutgoingSmsAllowedFromSimSlot"

    return-object v0

    .line 924
    :pswitch_1f
    const-string/jumbo v0, "isIncomingSmsAllowedFromSimSlot"

    return-object v0

    .line 920
    :pswitch_23
    const-string/jumbo v0, "notifyPasswordPolicyOneLockChanged"

    return-object v0

    .line 916
    :pswitch_27
    const-string/jumbo v0, "isPackageInAvrWhitelist"

    return-object v0

    .line 912
    :pswitch_2b
    const-string/jumbo v0, "isGoogleAccountsAutoSyncAllowedAsUser"

    return-object v0

    .line 908
    :pswitch_2f
    const-string/jumbo v0, "isMockLocationEnabled"

    return-object v0

    .line 904
    :pswitch_33
    const-string/jumbo v0, "registerSystemUICallback"

    return-object v0

    .line 900
    :pswitch_37
    const-string v0, "getAddHomeShorcutRequested"

    return-object v0

    .line 896
    :pswitch_3a
    const-string v0, "getELMPermissions"

    return-object v0

    .line 892
    :pswitch_3d
    const-string/jumbo v0, "ucmMac"

    return-object v0

    .line 888
    :pswitch_41
    const-string/jumbo v0, "ucmSign"

    return-object v0

    .line 884
    :pswitch_45
    const-string/jumbo v0, "ucmEncrypt"

    return-object v0

    .line 880
    :pswitch_49
    const-string/jumbo v0, "ucmDecrypt"

    return-object v0

    .line 876
    :pswitch_4d
    const-string/jumbo v0, "ucmGetCertificateChain"

    return-object v0

    .line 872
    :pswitch_51
    const-string/jumbo v0, "isPackageAllowedToAccessExternalSdcard"

    return-object v0

    .line 868
    :pswitch_55
    const-string/jumbo v0, "isKnoxBluetoothEnabled"

    return-object v0

    .line 864
    :pswitch_59
    const-string/jumbo v0, "isAllowedMamPackage"

    return-object v0

    .line 860
    :pswitch_5d
    const-string v0, "getExtendedCallInfoState"

    return-object v0

    .line 856
    :pswitch_60
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 852
    :pswitch_63
    const-string/jumbo v0, "getUsbNetAddress"

    return-object v0

    .line 848
    :pswitch_67
    const-string/jumbo v0, "getUsbNetStateInternal"

    return-object v0

    .line 844
    :pswitch_6b
    const-string/jumbo v0, "getWifiState"

    return-object v0

    .line 840
    :pswitch_6f
    const-string v0, "getKeyboardMode"

    return-object v0

    .line 836
    :pswitch_72
    const-string/jumbo v0, "getToastGravityYOffset"

    return-object v0

    .line 832
    :pswitch_76
    const-string/jumbo v0, "getToastGravityXOffset"

    return-object v0

    .line 828
    :pswitch_7a
    const-string/jumbo v0, "getToastGravity"

    return-object v0

    .line 824
    :pswitch_7e
    const-string/jumbo v0, "getToastGravityEnabledState"

    return-object v0

    .line 820
    :pswitch_82
    const-string/jumbo v0, "getVolumeButtonRotationState"

    return-object v0

    .line 816
    :pswitch_86
    const-string/jumbo v0, "getVolumePanelEnabledState"

    return-object v0

    .line 812
    :pswitch_8a
    const-string/jumbo v0, "getSensorDisabled"

    return-object v0

    .line 808
    :pswitch_8e
    const-string/jumbo v0, "getToastShowPackageNameState"

    return-object v0

    .line 804
    :pswitch_92
    const-string/jumbo v0, "getToastEnabledState"

    return-object v0

    .line 800
    :pswitch_96
    const-string/jumbo v0, "getVolumeControlStream"

    return-object v0

    .line 796
    :pswitch_9a
    const-string/jumbo v0, "getProKioskHideNotificationMessages"

    return-object v0

    .line 792
    :pswitch_9e
    const-string/jumbo v0, "getProKioskNotificationMessagesState"

    return-object v0

    .line 788
    :pswitch_a2
    const-string/jumbo v0, "getProKioskState"

    return-object v0

    .line 784
    :pswitch_a6
    const-string/jumbo v0, "isCopyContactToSimAllowed"

    return-object v0

    .line 780
    :pswitch_aa
    const-string/jumbo v0, "isAnyApplicationNameChangedAsUser"

    return-object v0

    .line 776
    :pswitch_ae
    const-string v0, "getApplicationNameFromDb"

    return-object v0

    .line 772
    :pswitch_b1
    const-string/jumbo v0, "isAccountRemovalAllowed"

    return-object v0

    .line 768
    :pswitch_b5
    const-string/jumbo v0, "isWapPushAllowed"

    return-object v0

    .line 764
    :pswitch_b9
    const-string/jumbo v0, "storeBlockedSmsMms"

    return-object v0

    .line 760
    :pswitch_bd
    const-string/jumbo v0, "isBlockMmsWithStorageEnabled"

    return-object v0

    .line 756
    :pswitch_c1
    const-string/jumbo v0, "isBlockSmsWithStorageEnabled"

    return-object v0

    .line 752
    :pswitch_c5
    const-string/jumbo v0, "isClipboardShareAllowed"

    return-object v0

    .line 748
    :pswitch_c9
    const-string/jumbo v0, "validateCertificateAtInstallAsUser"

    return-object v0

    .line 744
    :pswitch_cd
    const-string/jumbo v0, "notifyCertificateRemovedAsUser"

    return-object v0

    .line 740
    :pswitch_d1
    const-string/jumbo v0, "isVideoRecordAllowed"

    return-object v0

    .line 736
    :pswitch_d5
    const-string/jumbo v0, "isAudioRecordAllowed"

    return-object v0

    .line 732
    :pswitch_d9
    const-string/jumbo v0, "isCertificateValidationAtInstallEnabledAsUser"

    return-object v0

    .line 728
    :pswitch_dd
    const-string/jumbo v0, "isCertificateTrustedUntrustedEnabledAsUser"

    return-object v0

    .line 724
    :pswitch_e1
    const-string/jumbo v0, "isCaCertificateTrustedAsUser"

    return-object v0

    .line 720
    :pswitch_e5
    const-string/jumbo v0, "isOcspCheckEnabled"

    return-object v0

    .line 716
    :pswitch_e9
    const-string/jumbo v0, "isRevocationCheckEnabled"

    return-object v0

    .line 712
    :pswitch_ed
    const-string/jumbo v0, "notifyCertificateFailureAsUser"

    return-object v0

    .line 708
    :pswitch_f1
    const-string/jumbo v0, "isAuditLogEnabledAsUser"

    return-object v0

    .line 704
    :pswitch_f5
    const-string v0, "RedactedAuditLoggerPrivilegedAsUser"

    return-object v0

    .line 700
    :pswitch_f8
    const-string v0, "AuditLoggerPrivilegedAsUser"

    return-object v0

    .line 696
    :pswitch_fb
    const-string v0, "RedactedAuditLoggerPrivileged"

    return-object v0

    .line 692
    :pswitch_fe
    const-string v0, "AuditLoggerPrivileged"

    return-object v0

    .line 688
    :pswitch_101
    const-string v0, "RedactedAuditLoggerAsUser"

    return-object v0

    .line 684
    :pswitch_104
    const-string v0, "AuditLoggerAsUser"

    return-object v0

    .line 680
    :pswitch_107
    const-string v0, "RedactedAuditLogger"

    return-object v0

    .line 676
    :pswitch_10a
    const-string v0, "AuditLogger"

    return-object v0

    .line 672
    :pswitch_10d
    const-string/jumbo v0, "isBackupAllowed"

    return-object v0

    .line 668
    :pswitch_111
    const-string/jumbo v0, "isIncomingMmsAllowed"

    return-object v0

    .line 664
    :pswitch_115
    const-string v0, "bluetoothLog"

    return-object v0

    .line 660
    :pswitch_118
    const-string/jumbo v0, "isBluetoothLogEnabled"

    return-object v0

    .line 656
    :pswitch_11c
    const-string/jumbo v0, "isOutgoingSmsAllowed"

    return-object v0

    .line 652
    :pswitch_120
    const-string/jumbo v0, "isIncomingSmsAllowed"

    return-object v0

    .line 648
    :pswitch_124
    const-string/jumbo v0, "isTaskManagerAllowed"

    return-object v0

    .line 644
    :pswitch_128
    const-string/jumbo v0, "isFactoryResetAllowed"

    return-object v0

    .line 640
    :pswitch_12c
    const-string/jumbo v0, "isScreenLockPatternVisibilityEnabledAsUser"

    return-object v0

    .line 636
    :pswitch_130
    const-string/jumbo v0, "isScreenLockPatternVisibilityEnabled"

    return-object v0

    .line 632
    :pswitch_134
    const-string/jumbo v0, "isNtpSetByMDM"

    return-object v0

    .line 628
    :pswitch_138
    const-string/jumbo v0, "shallForceNtpMdmValues"

    return-object v0

    .line 624
    :pswitch_13c
    const-string/jumbo v0, "getNtpTimeout"

    return-object v0

    .line 620
    :pswitch_140
    const-string/jumbo v0, "getNtpServer"

    return-object v0

    .line 616
    :pswitch_144
    const-string/jumbo v0, "isSmsPatternCheckRequired"

    return-object v0

    .line 612
    :pswitch_148
    const-string v0, "canIncomingSms"

    return-object v0

    .line 608
    :pswitch_14b
    const-string v0, "canOutgoingSms"

    return-object v0

    .line 604
    :pswitch_14e
    const-string v0, "decreaseNumberOfOutgoingSms"

    return-object v0

    .line 600
    :pswitch_151
    const-string v0, "addNumberOfOutgoingSms"

    return-object v0

    .line 596
    :pswitch_154
    const-string v0, "addNumberOfIncomingSms"

    return-object v0

    .line 592
    :pswitch_157
    const-string/jumbo v0, "isLimitNumberOfSmsEnabled"

    return-object v0

    .line 588
    :pswitch_15b
    const-string v0, "addNumberOfOutgoingCalls"

    return-object v0

    .line 584
    :pswitch_15e
    const-string v0, "addNumberOfIncomingCalls"

    return-object v0

    .line 580
    :pswitch_161
    const-string v0, "getEmergencyCallOnly"

    return-object v0

    .line 576
    :pswitch_164
    const-string/jumbo v0, "isMicrophoneEnabled"

    return-object v0

    .line 572
    :pswitch_168
    const-string/jumbo v0, "isClipboardAllowed"

    return-object v0

    .line 568
    :pswitch_16c
    const-string/jumbo v0, "isRoamingDataEnabled"

    return-object v0

    .line 564
    :pswitch_170
    const-string/jumbo v0, "isRoamingPushEnabled"

    return-object v0

    .line 560
    :pswitch_174
    const-string v0, "getBrowserSettingStatus"

    return-object v0

    .line 556
    :pswitch_177
    const-string/jumbo v0, "isBluetoothEnabled"

    return-object v0

    .line 552
    :pswitch_17b
    const-string/jumbo v0, "isDiscoverableEnabled"

    return-object v0

    .line 548
    :pswitch_17f
    const-string/jumbo v0, "isPairingEnabled"

    return-object v0

    .line 544
    :pswitch_183
    const-string/jumbo v0, "isBluetoothDeviceAllowed"

    return-object v0

    .line 540
    :pswitch_187
    const-string/jumbo v0, "isProfileEnabled"

    return-object v0

    .line 536
    :pswitch_18b
    const-string/jumbo v0, "isBluetoothUUIDAllowed"

    return-object v0

    .line 532
    :pswitch_18f
    const-string/jumbo v0, "isOutgoingCallsAllowed"

    return-object v0

    .line 528
    :pswitch_193
    const-string v0, "getAllowBluetoothDataTransfer"

    return-object v0

    .line 524
    :pswitch_196
    const-string v0, "getApplicationIconFromDb"

    return-object v0

    .line 520
    :pswitch_199
    const-string/jumbo v0, "storeSMS"

    return-object v0

    .line 516
    :pswitch_19d
    const-string/jumbo v0, "isSMSCaptureEnabled"

    return-object v0

    .line 512
    :pswitch_1a1
    const-string/jumbo v0, "storeCalling"

    return-object v0

    .line 508
    :pswitch_1a5
    const-string/jumbo v0, "isCallingCaptureEnabled"

    return-object v0

    .line 504
    :pswitch_1a9
    const-string v0, "addCallsCount"

    return-object v0

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_1a9
        :pswitch_1a5
        :pswitch_1a1
        :pswitch_19d
        :pswitch_199
        :pswitch_196
        :pswitch_193
        :pswitch_18f
        :pswitch_18b
        :pswitch_187
        :pswitch_183
        :pswitch_17f
        :pswitch_17b
        :pswitch_177
        :pswitch_174
        :pswitch_170
        :pswitch_16c
        :pswitch_168
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_157
        :pswitch_154
        :pswitch_151
        :pswitch_14e
        :pswitch_14b
        :pswitch_148
        :pswitch_144
        :pswitch_140
        :pswitch_13c
        :pswitch_138
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_128
        :pswitch_124
        :pswitch_120
        :pswitch_11c
        :pswitch_118
        :pswitch_115
        :pswitch_111
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f1
        :pswitch_ed
        :pswitch_e9
        :pswitch_e5
        :pswitch_e1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 495
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 4299
    const/16 v0, 0x70

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 963
    invoke-static {p1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 967
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.sec.enterprise.IEDMProxy"

    .line 968
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_15

    const v0, 0xffffff

    if-gt v10, v0, :cond_15

    .line 969
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    :cond_15
    packed-switch v10, :pswitch_data_8d2

    .line 979
    packed-switch v10, :pswitch_data_8d8

    .line 2121
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 975
    :pswitch_20
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    return v14

    .line 2112
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2113
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2114
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDataAllowedFromSimSlot(I)Z

    move-result v1

    .line 2115
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2116
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2117
    goto/16 :goto_8d1

    .line 2102
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2103
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2104
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v1

    .line 2105
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2106
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2107
    goto/16 :goto_8d1

    .line 2092
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2093
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2094
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v1

    .line 2095
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2096
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2097
    goto/16 :goto_8d1

    .line 2082
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2083
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2084
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result v1

    .line 2085
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2086
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2087
    goto/16 :goto_8d1

    .line 2072
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2073
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2074
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result v1

    .line 2075
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2077
    goto/16 :goto_8d1

    .line 2062
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2063
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2064
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMmsAllowedFromSimSlot(I)Z

    move-result v1

    .line 2065
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2066
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2067
    goto/16 :goto_8d1

    .line 2052
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2053
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2054
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result v1

    .line 2055
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2056
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2057
    goto/16 :goto_8d1

    .line 2042
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2043
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2044
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result v1

    .line 2045
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2047
    goto/16 :goto_8d1

    .line 2031
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2033
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2034
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2035
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyPasswordPolicyOneLockChanged(ZI)V

    .line 2036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2037
    goto/16 :goto_8d1

    .line 2021
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2022
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2023
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageInAvrWhitelist(I)Z

    move-result v1

    .line 2024
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2025
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2026
    goto/16 :goto_8d1

    .line 2011
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2012
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2013
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v1

    .line 2014
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2015
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2016
    goto/16 :goto_8d1

    .line 2003
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f5
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMockLocationEnabled()Z

    move-result v0

    .line 2004
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2006
    goto/16 :goto_8d1

    .line 1994
    .end local v0    # "_result":Z
    :pswitch_101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    move-result-object v0

    .line 1995
    .local v0, "_arg0":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1996
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    move-result v1

    .line 1997
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1999
    goto/16 :goto_8d1

    .line 1986
    .end local v0    # "_arg0":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .end local v1    # "_result":Z
    :pswitch_118
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAddHomeShorcutRequested()Z

    move-result v0

    .line 1987
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1988
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1989
    goto/16 :goto_8d1

    .line 1977
    .end local v0    # "_result":Z
    :pswitch_124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1978
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1979
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1980
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1982
    goto/16 :goto_8d1

    .line 1963
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1965
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1967
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1968
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1969
    invoke-virtual {v9, v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmMac(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v3

    .line 1970
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1972
    goto/16 :goto_8d1

    .line 1949
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1951
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1953
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1954
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    invoke-virtual {v9, v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmSign(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v3

    .line 1956
    .restart local v3    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1958
    goto/16 :goto_8d1

    .line 1933
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_16d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1935
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1937
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1939
    .restart local v2    # "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1940
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1941
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmEncrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v4

    .line 1942
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1944
    goto/16 :goto_8d1

    .line 1917
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":[B
    :pswitch_190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1919
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1921
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1923
    .restart local v2    # "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1924
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1925
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmDecrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v4

    .line 1926
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1928
    goto/16 :goto_8d1

    .line 1907
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":[B
    :pswitch_1b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1908
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1909
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmGetCertificateChain(Ljava/lang/String;)[B

    move-result-object v1

    .line 1910
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1912
    goto/16 :goto_8d1

    .line 1895
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_1c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1897
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1898
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1899
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v2

    .line 1900
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1902
    goto/16 :goto_8d1

    .line 1885
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1886
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1887
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isKnoxBluetoothEnabled(I)Z

    move-result v1

    .line 1888
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1889
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1890
    goto/16 :goto_8d1

    .line 1875
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1876
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1877
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAllowedMamPackage(Ljava/lang/String;)Z

    move-result v1

    .line 1878
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1880
    goto/16 :goto_8d1

    .line 1867
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_203
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getExtendedCallInfoState()Z

    move-result v0

    .line 1868
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1870
    goto/16 :goto_8d1

    .line 1856
    .end local v0    # "_result":Z
    :pswitch_20f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1858
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1859
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1860
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 1861
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1862
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1863
    goto/16 :goto_8d1

    .line 1846
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1847
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1848
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 1849
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1850
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1851
    goto/16 :goto_8d1

    .line 1838
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_239
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getUsbNetStateInternal()Z

    move-result v0

    .line 1839
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1841
    goto/16 :goto_8d1

    .line 1831
    .end local v0    # "_result":Z
    :pswitch_245
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiState()Z

    move-result v0

    .line 1832
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1834
    goto/16 :goto_8d1

    .line 1824
    .end local v0    # "_result":Z
    :pswitch_251
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getKeyboardMode()I

    move-result v0

    .line 1825
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    goto/16 :goto_8d1

    .line 1817
    .end local v0    # "_result":I
    :pswitch_25d
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityYOffset()I

    move-result v0

    .line 1818
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1820
    goto/16 :goto_8d1

    .line 1810
    .end local v0    # "_result":I
    :pswitch_269
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityXOffset()I

    move-result v0

    .line 1811
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    goto/16 :goto_8d1

    .line 1803
    .end local v0    # "_result":I
    :pswitch_275
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravity()I

    move-result v0

    .line 1804
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1806
    goto/16 :goto_8d1

    .line 1796
    .end local v0    # "_result":I
    :pswitch_281
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityEnabledState()Z

    move-result v0

    .line 1797
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1799
    goto/16 :goto_8d1

    .line 1789
    .end local v0    # "_result":Z
    :pswitch_28d
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumeButtonRotationState()Z

    move-result v0

    .line 1790
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1792
    goto/16 :goto_8d1

    .line 1782
    .end local v0    # "_result":Z
    :pswitch_299
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumePanelEnabledState()Z

    move-result v0

    .line 1783
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1785
    goto/16 :goto_8d1

    .line 1775
    .end local v0    # "_result":Z
    :pswitch_2a5
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSensorDisabled()I

    move-result v0

    .line 1776
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1777
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    goto/16 :goto_8d1

    .line 1768
    .end local v0    # "_result":I
    :pswitch_2b1
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastShowPackageNameState()Z

    move-result v0

    .line 1769
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1770
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1771
    goto/16 :goto_8d1

    .line 1761
    .end local v0    # "_result":Z
    :pswitch_2bd
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastEnabledState()Z

    move-result v0

    .line 1762
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1764
    goto/16 :goto_8d1

    .line 1754
    .end local v0    # "_result":Z
    :pswitch_2c9
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumeControlStream()I

    move-result v0

    .line 1755
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1757
    goto/16 :goto_8d1

    .line 1747
    .end local v0    # "_result":I
    :pswitch_2d5
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskHideNotificationMessages()I

    move-result v0

    .line 1748
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    goto/16 :goto_8d1

    .line 1740
    .end local v0    # "_result":I
    :pswitch_2e1
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskNotificationMessagesState()Z

    move-result v0

    .line 1741
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1742
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1743
    goto/16 :goto_8d1

    .line 1733
    .end local v0    # "_result":Z
    :pswitch_2ed
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskState()Z

    move-result v0

    .line 1734
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1736
    goto/16 :goto_8d1

    .line 1724
    .end local v0    # "_result":Z
    :pswitch_2f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1725
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1726
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCopyContactToSimAllowed(I)Z

    move-result v1

    .line 1727
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1729
    goto/16 :goto_8d1

    .line 1714
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_30c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1715
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1716
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAnyApplicationNameChangedAsUser(I)Z

    move-result v1

    .line 1717
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1719
    goto/16 :goto_8d1

    .line 1702
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_31f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1705
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1706
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1707
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1709
    goto/16 :goto_8d1

    .line 1688
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1690
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1692
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1693
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1694
    invoke-virtual {v9, v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1695
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1697
    goto/16 :goto_8d1

    .line 1680
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_351
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWapPushAllowed()Z

    move-result v0

    .line 1681
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1683
    goto/16 :goto_8d1

    .line 1660
    .end local v0    # "_result":Z
    :pswitch_35d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1662
    .local v8, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 1664
    .local v15, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1666
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1668
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1670
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1672
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1673
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1674
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    goto/16 :goto_8d1

    .line 1652
    .end local v8    # "_arg0":Z
    .end local v15    # "_arg1":[B
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_392
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockMmsWithStorageEnabled()Z

    move-result v0

    .line 1653
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1655
    goto/16 :goto_8d1

    .line 1645
    .end local v0    # "_result":Z
    :pswitch_39e
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockSmsWithStorageEnabled()Z

    move-result v0

    .line 1646
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1648
    goto/16 :goto_8d1

    .line 1638
    .end local v0    # "_result":Z
    :pswitch_3aa
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardShareAllowed()Z

    move-result v0

    .line 1639
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1641
    goto/16 :goto_8d1

    .line 1627
    .end local v0    # "_result":Z
    :pswitch_3b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1629
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1630
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1631
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->validateCertificateAtInstallAsUser([BI)I

    move-result v2

    .line 1632
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    goto/16 :goto_8d1

    .line 1616
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_3cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1619
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1620
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    goto/16 :goto_8d1

    .line 1606
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1607
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1608
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isVideoRecordAllowed(Z)Z

    move-result v1

    .line 1609
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1611
    goto/16 :goto_8d1

    .line 1596
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_3f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1597
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1598
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAudioRecordAllowed(Z)Z

    move-result v1

    .line 1599
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1601
    goto/16 :goto_8d1

    .line 1586
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1587
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1588
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1

    .line 1589
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1591
    goto/16 :goto_8d1

    .line 1576
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1577
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1578
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v1

    .line 1579
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1581
    goto/16 :goto_8d1

    .line 1560
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_42c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1562
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1564
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1566
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1567
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1568
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCaCertificateTrustedAsUser([BZZI)Z

    move-result v4

    .line 1569
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1571
    goto/16 :goto_8d1

    .line 1552
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_44b
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOcspCheckEnabled()Z

    move-result v0

    .line 1553
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1555
    goto/16 :goto_8d1

    .line 1545
    .end local v0    # "_result":Z
    :pswitch_457
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRevocationCheckEnabled()Z

    move-result v0

    .line 1546
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1548
    goto/16 :goto_8d1

    .line 1531
    .end local v0    # "_result":Z
    :pswitch_463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1533
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1535
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1537
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1538
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1539
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    goto/16 :goto_8d1

    .line 1521
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_47e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1522
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1523
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    .line 1524
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1526
    goto/16 :goto_8d1

    .line 1498
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1500
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1502
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1504
    .local v17, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1506
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1508
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1510
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1512
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1513
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1514
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/sec/enterprise/IEDMProxy$Stub;->RedactedAuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1516
    goto/16 :goto_8d1

    .line 1477
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    :pswitch_4cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1479
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1481
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1483
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1485
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1487
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1489
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1490
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    goto/16 :goto_8d1

    .line 1456
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1458
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1460
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1462
    .restart local v16    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1464
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1466
    .restart local v18    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1468
    .restart local v19    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1469
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1470
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->RedactedAuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    goto/16 :goto_8d1

    .line 1437
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1439
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1441
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 1443
    .local v15, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1445
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1447
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1448
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1449
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    goto/16 :goto_8d1

    .line 1414
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1416
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1418
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1420
    .local v17, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1422
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1424
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1426
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1428
    .restart local v21    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1429
    .restart local v22    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1430
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/sec/enterprise/IEDMProxy$Stub;->RedactedAuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    goto/16 :goto_8d1

    .line 1393
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    :pswitch_5a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1395
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1397
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1399
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1401
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1403
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1405
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1406
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto/16 :goto_8d1

    .line 1372
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_5d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1374
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1376
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1378
    .restart local v16    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1380
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1382
    .restart local v18    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1384
    .restart local v19    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1385
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->RedactedAuditLogger(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    goto/16 :goto_8d1

    .line 1353
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_60b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1355
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1357
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 1359
    .local v15, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1361
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1363
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1364
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1365
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    goto/16 :goto_8d1

    .line 1343
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1344
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1345
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackupAllowed(Z)Z

    move-result v1

    .line 1346
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1348
    goto/16 :goto_8d1

    .line 1335
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_64c
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingMmsAllowed()Z

    move-result v0

    .line 1336
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1338
    goto/16 :goto_8d1

    .line 1325
    .end local v0    # "_result":Z
    :pswitch_658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1329
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    goto/16 :goto_8d1

    .line 1317
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_66b
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothLogEnabled()Z

    move-result v0

    .line 1318
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1320
    goto/16 :goto_8d1

    .line 1310
    .end local v0    # "_result":Z
    :pswitch_677
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowed()Z

    move-result v0

    .line 1311
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1313
    goto/16 :goto_8d1

    .line 1303
    .end local v0    # "_result":Z
    :pswitch_683
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowed()Z

    move-result v0

    .line 1304
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1306
    goto/16 :goto_8d1

    .line 1294
    .end local v0    # "_result":Z
    :pswitch_68f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1295
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1296
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTaskManagerAllowed(Z)Z

    move-result v1

    .line 1297
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1299
    goto/16 :goto_8d1

    .line 1286
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_6a2
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isFactoryResetAllowed()Z

    move-result v0

    .line 1287
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1289
    goto/16 :goto_8d1

    .line 1277
    .end local v0    # "_result":Z
    :pswitch_6ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1278
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result v1

    .line 1280
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1282
    goto/16 :goto_8d1

    .line 1269
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6c1
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabled()Z

    move-result v0

    .line 1270
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1272
    goto/16 :goto_8d1

    .line 1262
    .end local v0    # "_result":Z
    :pswitch_6cd
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNtpSetByMDM()Z

    move-result v0

    .line 1263
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1265
    goto/16 :goto_8d1

    .line 1255
    .end local v0    # "_result":Z
    :pswitch_6d9
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->shallForceNtpMdmValues()Z

    move-result v0

    .line 1256
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1258
    goto/16 :goto_8d1

    .line 1248
    .end local v0    # "_result":Z
    :pswitch_6e5
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNtpTimeout()J

    move-result-wide v0

    .line 1249
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1251
    goto/16 :goto_8d1

    .line 1241
    .end local v0    # "_result":J
    :pswitch_6f1
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNtpServer()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1244
    goto/16 :goto_8d1

    .line 1234
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_6fd
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSmsPatternCheckRequired()Z

    move-result v0

    .line 1235
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1237
    goto/16 :goto_8d1

    .line 1225
    .end local v0    # "_result":Z
    :pswitch_709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v1

    .line 1228
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1230
    goto/16 :goto_8d1

    .line 1215
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_71c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1216
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v1

    .line 1218
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1220
    goto/16 :goto_8d1

    .line 1207
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_72f
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v0

    .line 1208
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1210
    goto/16 :goto_8d1

    .line 1200
    .end local v0    # "_result":Z
    :pswitch_73b
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingSms()Z

    move-result v0

    .line 1201
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1203
    goto/16 :goto_8d1

    .line 1193
    .end local v0    # "_result":Z
    :pswitch_747
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingSms()Z

    move-result v0

    .line 1194
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1196
    goto/16 :goto_8d1

    .line 1186
    .end local v0    # "_result":Z
    :pswitch_753
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v0

    .line 1187
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1189
    goto/16 :goto_8d1

    .line 1179
    .end local v0    # "_result":Z
    :pswitch_75f
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v0

    .line 1180
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1182
    goto/16 :goto_8d1

    .line 1172
    .end local v0    # "_result":Z
    :pswitch_76b
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingCalls()Z

    move-result v0

    .line 1173
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1175
    goto/16 :goto_8d1

    .line 1163
    .end local v0    # "_result":Z
    :pswitch_777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1164
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v1

    .line 1166
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1168
    goto/16 :goto_8d1

    .line 1153
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_78a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1154
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v1

    .line 1156
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1158
    goto/16 :goto_8d1

    .line 1143
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_79d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1144
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardAllowed(Z)Z

    move-result v1

    .line 1146
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1148
    goto/16 :goto_8d1

    .line 1135
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_7b0
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingDataEnabled()Z

    move-result v0

    .line 1136
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1138
    goto/16 :goto_8d1

    .line 1128
    .end local v0    # "_result":Z
    :pswitch_7bc
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingPushEnabled()Z

    move-result v0

    .line 1129
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1131
    goto/16 :goto_8d1

    .line 1119
    .end local v0    # "_result":Z
    :pswitch_7c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1120
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBrowserSettingStatus(I)Z

    move-result v1

    .line 1122
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1124
    goto/16 :goto_8d1

    .line 1111
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7db
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothEnabled()Z

    move-result v0

    .line 1112
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1114
    goto/16 :goto_8d1

    .line 1104
    .end local v0    # "_result":Z
    :pswitch_7e7
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDiscoverableEnabled()Z

    move-result v0

    .line 1105
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1107
    goto/16 :goto_8d1

    .line 1097
    .end local v0    # "_result":Z
    :pswitch_7f3
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPairingEnabled()Z

    move-result v0

    .line 1098
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1100
    goto/16 :goto_8d1

    .line 1088
    .end local v0    # "_result":Z
    :pswitch_7ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1091
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1093
    goto/16 :goto_8d1

    .line 1078
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1079
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isProfileEnabled(I)Z

    move-result v1

    .line 1081
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1083
    goto/16 :goto_8d1

    .line 1068
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1071
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1073
    goto/16 :goto_8d1

    .line 1060
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_838
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallsAllowed()Z

    move-result v0

    .line 1061
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1063
    goto/16 :goto_8d1

    .line 1051
    .end local v0    # "_result":Z
    :pswitch_844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1052
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowBluetoothDataTransfer(Z)Z

    move-result v1

    .line 1054
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1056
    goto/16 :goto_8d1

    .line 1039
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1042
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1044
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1046
    goto :goto_8d1

    .line 1024
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :pswitch_86d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1031
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    goto :goto_8d1

    .line 1016
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_887
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSMSCaptureEnabled()Z

    move-result v0

    .line 1017
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1019
    goto :goto_8d1

    .line 1000
    .end local v0    # "_result":Z
    :pswitch_892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1002
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1004
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1006
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1008
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1009
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    goto :goto_8d1

    .line 992
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Z
    :pswitch_8b8
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCallingCaptureEnabled()Z

    move-result v0

    .line 993
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 995
    goto :goto_8d1

    .line 984
    .end local v0    # "_result":Z
    :pswitch_8c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addCallsCount(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    nop

    .line 2124
    .end local v0    # "_arg0":Ljava/lang/String;
    :goto_8d1
    return v14

    :pswitch_data_8d2
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_8d8
    .packed-switch 0x1
        :pswitch_8c3
        :pswitch_8b8
        :pswitch_892
        :pswitch_887
        :pswitch_86d
        :pswitch_857
        :pswitch_844
        :pswitch_838
        :pswitch_825
        :pswitch_812
        :pswitch_7ff
        :pswitch_7f3
        :pswitch_7e7
        :pswitch_7db
        :pswitch_7c8
        :pswitch_7bc
        :pswitch_7b0
        :pswitch_79d
        :pswitch_78a
        :pswitch_777
        :pswitch_76b
        :pswitch_75f
        :pswitch_753
        :pswitch_747
        :pswitch_73b
        :pswitch_72f
        :pswitch_71c
        :pswitch_709
        :pswitch_6fd
        :pswitch_6f1
        :pswitch_6e5
        :pswitch_6d9
        :pswitch_6cd
        :pswitch_6c1
        :pswitch_6ae
        :pswitch_6a2
        :pswitch_68f
        :pswitch_683
        :pswitch_677
        :pswitch_66b
        :pswitch_658
        :pswitch_64c
        :pswitch_639
        :pswitch_60b
        :pswitch_5d6
        :pswitch_5a1
        :pswitch_565
        :pswitch_537
        :pswitch_502
        :pswitch_4cd
        :pswitch_491
        :pswitch_47e
        :pswitch_463
        :pswitch_457
        :pswitch_44b
        :pswitch_42c
        :pswitch_419
        :pswitch_406
        :pswitch_3f3
        :pswitch_3e0
        :pswitch_3cd
        :pswitch_3b6
        :pswitch_3aa
        :pswitch_39e
        :pswitch_392
        :pswitch_35d
        :pswitch_351
        :pswitch_336
        :pswitch_31f
        :pswitch_30c
        :pswitch_2f9
        :pswitch_2ed
        :pswitch_2e1
        :pswitch_2d5
        :pswitch_2c9
        :pswitch_2bd
        :pswitch_2b1
        :pswitch_2a5
        :pswitch_299
        :pswitch_28d
        :pswitch_281
        :pswitch_275
        :pswitch_269
        :pswitch_25d
        :pswitch_251
        :pswitch_245
        :pswitch_239
        :pswitch_226
        :pswitch_20f
        :pswitch_203
        :pswitch_1f0
        :pswitch_1dd
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_190
        :pswitch_16d
        :pswitch_152
        :pswitch_137
        :pswitch_124
        :pswitch_118
        :pswitch_101
        :pswitch_f5
        :pswitch_e2
        :pswitch_cf
        :pswitch_bc
        :pswitch_a9
        :pswitch_96
        :pswitch_83
        :pswitch_70
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
