.class public abstract Landroid/hardware/fingerprint/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintService"

.field static final TRANSACTION_addAuthenticatorsRegisteredCallback:I = 0x21

.field static final TRANSACTION_addClientActiveCallback:I = 0x1e

.field static final TRANSACTION_addLockoutResetCallback:I = 0x1c

.field static final TRANSACTION_authenticate:I = 0x5

.field static final TRANSACTION_cancelAuthentication:I = 0x9

.field static final TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final TRANSACTION_cancelEnrollment:I = 0xd

.field static final TRANSACTION_cancelFingerprintDetect:I = 0xa

.field static final TRANSACTION_createTestSession:I = 0x1

.field static final TRANSACTION_detectFingerprint:I = 0x6

.field static final TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final TRANSACTION_enroll:I = 0xc

.field static final TRANSACTION_generateChallenge:I = 0x14

.field static final TRANSACTION_getAuthenticatorId:I = 0x1a

.field static final TRANSACTION_getEnrolledFingerprints:I = 0x11

.field static final TRANSACTION_getLockoutModeForUser:I = 0x18

.field static final TRANSACTION_getSensorProperties:I = 0x4

.field static final TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final TRANSACTION_hasEnrolledFingerprints:I = 0x17

.field static final TRANSACTION_hasEnrolledFingerprintsDeprecated:I = 0x16

.field static final TRANSACTION_invalidateAuthenticatorId:I = 0x19

.field static final TRANSACTION_isClientActive:I = 0x1d

.field static final TRANSACTION_isHardwareDetected:I = 0x13

.field static final TRANSACTION_isHardwareDetectedDeprecated:I = 0x12

.field static final TRANSACTION_onPointerDown:I = 0x22

.field static final TRANSACTION_onPointerUp:I = 0x23

.field static final TRANSACTION_onPowerPressed:I = 0x29

.field static final TRANSACTION_onUiReady:I = 0x24

.field static final TRANSACTION_prepareForAuthentication:I = 0x7

.field static final TRANSACTION_registerAuthenticators:I = 0x20

.field static final TRANSACTION_registerBiometricStateListener:I = 0x28

.field static final TRANSACTION_remove:I = 0xe

.field static final TRANSACTION_removeAll:I = 0xf

.field static final TRANSACTION_removeClientActiveCallback:I = 0x1f

.field static final TRANSACTION_rename:I = 0x10

.field static final TRANSACTION_resetLockout:I = 0x1b

.field static final TRANSACTION_revokeChallenge:I = 0x15

.field static final TRANSACTION_scheduleWatchdog:I = 0x2a

.field static final TRANSACTION_semAddMaskView:I = 0x3c

.field static final TRANSACTION_semAuthenticate:I = 0x2b

.field static final TRANSACTION_semBioSysUiRequest:I = 0x46

.field static final TRANSACTION_semForceCBGE:I = 0x2e

.field static final TRANSACTION_semGetDaemonVersion:I = 0x37

.field static final TRANSACTION_semGetIconBottomMargin:I = 0x41

.field static final TRANSACTION_semGetMaxEnrollmentNumber:I = 0x2c

.field static final TRANSACTION_semGetRemainingLockoutTime:I = 0x4d

.field static final TRANSACTION_semGetSecurityLevel:I = 0x43

.field static final TRANSACTION_semGetSensorAreaInDisplay:I = 0x40

.field static final TRANSACTION_semGetSensorData:I = 0x49

.field static final TRANSACTION_semGetSensorInfo:I = 0x35

.field static final TRANSACTION_semGetSensorStatus:I = 0x31

.field static final TRANSACTION_semGetSensorTestResult:I = 0x39

.field static final TRANSACTION_semGetTrustAppVersion:I = 0x44

.field static final TRANSACTION_semGetUserIdList:I = 0x36

.field static final TRANSACTION_semHasFeature:I = 0x2d

.field static final TRANSACTION_semIsEnrollSession:I = 0x2f

.field static final TRANSACTION_semIsTemplateDbCorrupted:I = 0x30

.field static final TRANSACTION_semMoveSensorIconInDisplay:I = 0x42

.field static final TRANSACTION_semOpenSession:I = 0x34

.field static final TRANSACTION_semPauseEnroll:I = 0x32

.field static final TRANSACTION_semProcessFido:I = 0x4c

.field static final TRANSACTION_semRegisterAodController:I = 0x3e

.field static final TRANSACTION_semRegisterDisplayStateCallback:I = 0x47

.field static final TRANSACTION_semRemoveMaskView:I = 0x3d

.field static final TRANSACTION_semRequest:I = 0x4f

.field static final TRANSACTION_semResumeEnroll:I = 0x33

.field static final TRANSACTION_semRunSensorTest:I = 0x38

.field static final TRANSACTION_semSetCalibrationMode:I = 0x4b

.field static final TRANSACTION_semSetFlagForIFAA:I = 0x4e

.field static final TRANSACTION_semSetFodStrictMode:I = 0x4a

.field static final TRANSACTION_semSetScreenStatus:I = 0x3a

.field static final TRANSACTION_semShowBouncerScreen:I = 0x3b

.field static final TRANSACTION_semUnregisterAodController:I = 0x3f

.field static final TRANSACTION_semUnregisterDisplayStateCallback:I = 0x48

.field static final TRANSACTION_semUpdateTrustApp:I = 0x45

.field static final TRANSACTION_setSidefpsController:I = 0x26

.field static final TRANSACTION_setUdfpsOverlay:I = 0x27

.field static final TRANSACTION_setUdfpsOverlayController:I = 0x25

.field static final TRANSACTION_startPreparedClient:I = 0x8


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    nop

    .line 376
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 375
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 365
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 366
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 367
    if-eqz p1, :cond_d

    .line 370
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 371
    return-void

    .line 368
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 384
    if-nez p0, :cond_4

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_4
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 388
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_14

    .line 389
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintService;

    return-object v1

    .line 391
    :cond_14
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 400
    packed-switch p0, :pswitch_data_f2

    .line 720
    const/4 v0, 0x0

    return-object v0

    .line 716
    :pswitch_5
    const-string v0, "semRequest"

    return-object v0

    .line 712
    :pswitch_8
    const-string v0, "semSetFlagForIFAA"

    return-object v0

    .line 708
    :pswitch_b
    const-string v0, "semGetRemainingLockoutTime"

    return-object v0

    .line 704
    :pswitch_e
    const-string v0, "semProcessFido"

    return-object v0

    .line 700
    :pswitch_11
    const-string v0, "semSetCalibrationMode"

    return-object v0

    .line 696
    :pswitch_14
    const-string v0, "semSetFodStrictMode"

    return-object v0

    .line 692
    :pswitch_17
    const-string v0, "semGetSensorData"

    return-object v0

    .line 688
    :pswitch_1a
    const-string v0, "semUnregisterDisplayStateCallback"

    return-object v0

    .line 684
    :pswitch_1d
    const-string v0, "semRegisterDisplayStateCallback"

    return-object v0

    .line 680
    :pswitch_20
    const-string v0, "semBioSysUiRequest"

    return-object v0

    .line 676
    :pswitch_23
    const-string v0, "semUpdateTrustApp"

    return-object v0

    .line 672
    :pswitch_26
    const-string v0, "semGetTrustAppVersion"

    return-object v0

    .line 668
    :pswitch_29
    const-string v0, "semGetSecurityLevel"

    return-object v0

    .line 664
    :pswitch_2c
    const-string v0, "semMoveSensorIconInDisplay"

    return-object v0

    .line 660
    :pswitch_2f
    const-string v0, "semGetIconBottomMargin"

    return-object v0

    .line 656
    :pswitch_32
    const-string v0, "semGetSensorAreaInDisplay"

    return-object v0

    .line 652
    :pswitch_35
    const-string v0, "semUnregisterAodController"

    return-object v0

    .line 648
    :pswitch_38
    const-string v0, "semRegisterAodController"

    return-object v0

    .line 644
    :pswitch_3b
    const-string v0, "semRemoveMaskView"

    return-object v0

    .line 640
    :pswitch_3e
    const-string v0, "semAddMaskView"

    return-object v0

    .line 636
    :pswitch_41
    const-string v0, "semShowBouncerScreen"

    return-object v0

    .line 632
    :pswitch_44
    const-string v0, "semSetScreenStatus"

    return-object v0

    .line 628
    :pswitch_47
    const-string v0, "semGetSensorTestResult"

    return-object v0

    .line 624
    :pswitch_4a
    const-string v0, "semRunSensorTest"

    return-object v0

    .line 620
    :pswitch_4d
    const-string v0, "semGetDaemonVersion"

    return-object v0

    .line 616
    :pswitch_50
    const-string v0, "semGetUserIdList"

    return-object v0

    .line 612
    :pswitch_53
    const-string v0, "semGetSensorInfo"

    return-object v0

    .line 608
    :pswitch_56
    const-string v0, "semOpenSession"

    return-object v0

    .line 604
    :pswitch_59
    const-string v0, "semResumeEnroll"

    return-object v0

    .line 600
    :pswitch_5c
    const-string v0, "semPauseEnroll"

    return-object v0

    .line 596
    :pswitch_5f
    const-string v0, "semGetSensorStatus"

    return-object v0

    .line 592
    :pswitch_62
    const-string v0, "semIsTemplateDbCorrupted"

    return-object v0

    .line 588
    :pswitch_65
    const-string v0, "semIsEnrollSession"

    return-object v0

    .line 584
    :pswitch_68
    const-string v0, "semForceCBGE"

    return-object v0

    .line 580
    :pswitch_6b
    const-string v0, "semHasFeature"

    return-object v0

    .line 576
    :pswitch_6e
    const-string v0, "semGetMaxEnrollmentNumber"

    return-object v0

    .line 572
    :pswitch_71
    const-string v0, "semAuthenticate"

    return-object v0

    .line 568
    :pswitch_74
    const-string v0, "scheduleWatchdog"

    return-object v0

    .line 564
    :pswitch_77
    const-string v0, "onPowerPressed"

    return-object v0

    .line 560
    :pswitch_7a
    const-string v0, "registerBiometricStateListener"

    return-object v0

    .line 556
    :pswitch_7d
    const-string v0, "setUdfpsOverlay"

    return-object v0

    .line 552
    :pswitch_80
    const-string v0, "setSidefpsController"

    return-object v0

    .line 548
    :pswitch_83
    const-string v0, "setUdfpsOverlayController"

    return-object v0

    .line 544
    :pswitch_86
    const-string v0, "onUiReady"

    return-object v0

    .line 540
    :pswitch_89
    const-string v0, "onPointerUp"

    return-object v0

    .line 536
    :pswitch_8c
    const-string v0, "onPointerDown"

    return-object v0

    .line 532
    :pswitch_8f
    const-string v0, "addAuthenticatorsRegisteredCallback"

    return-object v0

    .line 528
    :pswitch_92
    const-string v0, "registerAuthenticators"

    return-object v0

    .line 524
    :pswitch_95
    const-string v0, "removeClientActiveCallback"

    return-object v0

    .line 520
    :pswitch_98
    const-string v0, "addClientActiveCallback"

    return-object v0

    .line 516
    :pswitch_9b
    const-string v0, "isClientActive"

    return-object v0

    .line 512
    :pswitch_9e
    const-string v0, "addLockoutResetCallback"

    return-object v0

    .line 508
    :pswitch_a1
    const-string v0, "resetLockout"

    return-object v0

    .line 504
    :pswitch_a4
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 500
    :pswitch_a7
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 496
    :pswitch_aa
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 492
    :pswitch_ad
    const-string v0, "hasEnrolledFingerprints"

    return-object v0

    .line 488
    :pswitch_b0
    const-string v0, "hasEnrolledFingerprintsDeprecated"

    return-object v0

    .line 484
    :pswitch_b3
    const-string v0, "revokeChallenge"

    return-object v0

    .line 480
    :pswitch_b6
    const-string v0, "generateChallenge"

    return-object v0

    .line 476
    :pswitch_b9
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 472
    :pswitch_bc
    const-string v0, "isHardwareDetectedDeprecated"

    return-object v0

    .line 468
    :pswitch_bf
    const-string v0, "getEnrolledFingerprints"

    return-object v0

    .line 464
    :pswitch_c2
    const-string v0, "rename"

    return-object v0

    .line 460
    :pswitch_c5
    const-string v0, "removeAll"

    return-object v0

    .line 456
    :pswitch_c8
    const-string v0, "remove"

    return-object v0

    .line 452
    :pswitch_cb
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 448
    :pswitch_ce
    const-string v0, "enroll"

    return-object v0

    .line 444
    :pswitch_d1
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 440
    :pswitch_d4
    const-string v0, "cancelFingerprintDetect"

    return-object v0

    .line 436
    :pswitch_d7
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 432
    :pswitch_da
    const-string v0, "startPreparedClient"

    return-object v0

    .line 428
    :pswitch_dd
    const-string v0, "prepareForAuthentication"

    return-object v0

    .line 424
    :pswitch_e0
    const-string v0, "detectFingerprint"

    return-object v0

    .line 420
    :pswitch_e3
    const-string v0, "authenticate"

    return-object v0

    .line 416
    :pswitch_e6
    const-string v0, "getSensorProperties"

    return-object v0

    .line 412
    :pswitch_e9
    const-string v0, "getSensorPropertiesInternal"

    return-object v0

    .line 408
    :pswitch_ec
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 404
    :pswitch_ef
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_f2
    .packed-switch 0x1
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
.method protected addAuthenticatorsRegisteredCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3283
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3284
    return-void
.end method

.method protected addClientActiveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3268
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3269
    return-void
.end method

.method protected addLockoutResetCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3258
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3259
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 395
    return-object p0
.end method

.method protected cancelAuthenticationFromService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3185
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3186
    return-void
.end method

.method protected cancelEnrollment_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3195
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3196
    return-void
.end method

.method protected cancelFingerprintDetect_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3180
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3181
    return-void
.end method

.method protected createTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3147
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3148
    return-void
.end method

.method protected detectFingerprint_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3164
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3165
    return-void
.end method

.method protected dumpSensorServiceStateProto_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3152
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3153
    return-void
.end method

.method protected enroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3190
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3191
    return-void
.end method

.method protected generateChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3222
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3223
    return-void
.end method

.method protected getAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3248
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3249
    return-void
.end method

.method protected getLockoutModeForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3238
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3239
    return-void
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 3486
    const/16 v0, 0x4e

    return v0
.end method

.method protected getSensorProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3158
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3159
    return-void
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 727
    invoke-static {p1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasEnrolledFingerprints_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3233
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3234
    return-void
.end method

.method protected invalidateAuthenticatorId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3243
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3244
    return-void
.end method

.method protected isClientActive_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3263
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3264
    return-void
.end method

.method protected isHardwareDetected_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3217
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3218
    return-void
.end method

.method protected onPointerDown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3288
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3289
    return-void
.end method

.method protected onPointerUp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3293
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3294
    return-void
.end method

.method protected onPowerPressed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3323
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3324
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "android.hardware.fingerprint.IFingerprintService"

    .line 732
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_15

    const v0, 0xffffff

    if-gt v11, v0, :cond_15

    .line 733
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    :cond_15
    packed-switch v11, :pswitch_data_792

    .line 743
    packed-switch v11, :pswitch_data_798

    .line 1665
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 739
    :pswitch_20
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    return v15

    .line 1636
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1638
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1640
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1642
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1643
    .local v8, "_arg3_length":I
    if-gez v8, :cond_39

    .line 1644
    const/4 v0, 0x0

    move-object v7, v0

    .local v0, "_arg3":[B
    goto :goto_3c

    .line 1646
    .end local v0    # "_arg3":[B
    :cond_39
    new-array v0, v8, [B

    move-object v7, v0

    .line 1649
    .local v7, "_arg3":[B
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1651
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1653
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1655
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    move-result-object v21

    .line 1656
    .local v21, "_arg7":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1657
    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object v4, v7

    move/from16 v5, v18

    move/from16 v6, v19

    move-object v15, v7

    .end local v7    # "_arg3":[B
    .local v15, "_arg3":[B
    move-object/from16 v7, v20

    move/from16 v22, v8

    .end local v8    # "_arg3_length":I
    .local v22, "_arg3_length":I
    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRequest(Landroid/os/IBinder;I[B[BIILjava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I

    move-result v0

    .line 1658
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1661
    goto/16 :goto_790

    .line 1625
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v21    # "_arg7":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    .end local v22    # "_arg3_length":I
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1627
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1628
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1629
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetFlagForIFAA(ILjava/lang/String;)V

    .line 1630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    goto/16 :goto_790

    .line 1615
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1616
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetRemainingLockoutTime(I)I

    move-result v1

    .line 1618
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    goto/16 :goto_790

    .line 1593
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1595
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1597
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1598
    .local v2, "_arg2_length":I
    if-gez v2, :cond_ab

    .line 1599
    const/4 v3, 0x0

    .local v3, "_arg2":[B
    goto :goto_ad

    .line 1601
    .end local v3    # "_arg2":[B
    :cond_ab
    new-array v3, v2, [B

    .line 1604
    .restart local v3    # "_arg2":[B
    :goto_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1605
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1606
    invoke-virtual {v10, v0, v1, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semProcessFido(I[B[BLjava/lang/String;)I

    move-result v5

    .line 1607
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1610
    goto/16 :goto_790

    .line 1579
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1581
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1583
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1584
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1585
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetCalibrationMode(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v3

    .line 1586
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    goto/16 :goto_790

    .line 1570
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1571
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1572
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetFodStrictMode(Z)V

    .line 1573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    goto/16 :goto_790

    .line 1560
    .end local v0    # "_arg0":Z
    :pswitch_ed
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1561
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1562
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorData(Landroid/os/Bundle;)V

    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1565
    goto/16 :goto_790

    .line 1553
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_101
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUnregisterDisplayStateCallback()V

    .line 1554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1555
    goto/16 :goto_790

    .line 1544
    :pswitch_109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    move-result-object v0

    .line 1545
    .local v0, "_arg0":Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1546
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRegisterDisplayStateCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I

    move-result v1

    .line 1547
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1549
    goto/16 :goto_790

    .line 1528
    .end local v0    # "_arg0":Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;
    .end local v1    # "_result":I
    :pswitch_120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1530
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1532
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1534
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1535
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-wide v3, v8

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semBioSysUiRequest(IIJLjava/lang/String;)I

    move-result v0

    .line 1537
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1539
    goto/16 :goto_790

    .line 1515
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":J
    .end local v15    # "_arg3":Ljava/lang/String;
    :pswitch_145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    move-result-object v1

    .line 1519
    .local v1, "_arg1":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1520
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUpdateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;)V

    .line 1522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    goto/16 :goto_790

    .line 1507
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_160
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1510
    goto/16 :goto_790

    .line 1500
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_16c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSecurityLevel()I

    move-result v0

    .line 1501
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    goto/16 :goto_790

    .line 1490
    .end local v0    # "_result":I
    :pswitch_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1492
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1493
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1494
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semMoveSensorIconInDisplay(II)V

    .line 1495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    goto/16 :goto_790

    .line 1482
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_18b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetIconBottomMargin()I

    move-result v0

    .line 1483
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    goto/16 :goto_790

    .line 1469
    .end local v0    # "_result":I
    :pswitch_197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1471
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1473
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 1474
    .local v2, "_arg2":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1475
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorAreaInDisplay(IILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1476
    .local v3, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1478
    goto/16 :goto_790

    .line 1460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/graphics/Point;
    .end local v3    # "_result":Landroid/graphics/Rect;
    :pswitch_1b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1461
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1462
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUnregisterAodController(Landroid/os/IBinder;)V

    .line 1463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    goto/16 :goto_790

    .line 1449
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1451
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    move-result-object v1

    .line 1452
    .local v1, "_arg1":Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1453
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRegisterAodController(Landroid/os/IBinder;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V

    .line 1454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    goto/16 :goto_790

    .line 1437
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
    :pswitch_1dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1439
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1441
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRemoveMaskView(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v2

    .line 1442
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    goto/16 :goto_790

    .line 1425
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1427
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1428
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1429
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semAddMaskView(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1430
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1432
    goto/16 :goto_790

    .line 1415
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_20b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1416
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semShowBouncerScreen(I)I

    move-result v1

    .line 1418
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    goto/16 :goto_790

    .line 1405
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_21e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1406
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetScreenStatus(I)I

    move-result v1

    .line 1408
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    goto/16 :goto_790

    .line 1389
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1390
    .local v0, "_arg0_length":I
    if-gez v0, :cond_239

    .line 1391
    const/4 v1, 0x0

    .local v1, "_arg0":[B
    goto :goto_23b

    .line 1393
    .end local v1    # "_arg0":[B
    :cond_239
    new-array v1, v0, [B

    .line 1395
    .restart local v1    # "_arg0":[B
    :goto_23b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1396
    invoke-virtual {v10, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorTestResult([B)I

    move-result v2

    .line 1397
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1400
    goto/16 :goto_790

    .line 1373
    .end local v0    # "_arg0_length":I
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":I
    :pswitch_24d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1375
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1377
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1379
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    move-result-object v3

    .line 1380
    .local v3, "_arg3":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRunSensorTest(Landroid/os/IBinder;IILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I

    move-result v4

    .line 1382
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    goto/16 :goto_790

    .line 1365
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    .end local v4    # "_result":I
    :pswitch_270
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetDaemonVersion()Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1368
    goto/16 :goto_790

    .line 1358
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_27c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetUserIdList()[Ljava/lang/String;

    move-result-object v0

    .line 1359
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1361
    goto/16 :goto_790

    .line 1351
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_288
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorInfo()Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1354
    goto/16 :goto_790

    .line 1344
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_294
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semOpenSession()Z

    move-result v0

    .line 1345
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1347
    goto/16 :goto_790

    .line 1337
    .end local v0    # "_result":Z
    :pswitch_2a0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semResumeEnroll()Z

    move-result v0

    .line 1338
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1340
    goto/16 :goto_790

    .line 1330
    .end local v0    # "_result":Z
    :pswitch_2ac
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semPauseEnroll()Z

    move-result v0

    .line 1331
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1333
    goto/16 :goto_790

    .line 1323
    .end local v0    # "_result":Z
    :pswitch_2b8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorStatus()I

    move-result v0

    .line 1324
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    goto/16 :goto_790

    .line 1316
    .end local v0    # "_result":I
    :pswitch_2c4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semIsTemplateDbCorrupted()Z

    move-result v0

    .line 1317
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1319
    goto/16 :goto_790

    .line 1309
    .end local v0    # "_result":Z
    :pswitch_2d0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semIsEnrollSession()Z

    move-result v0

    .line 1310
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1312
    goto/16 :goto_790

    .line 1303
    .end local v0    # "_result":Z
    :pswitch_2dc
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semForceCBGE()V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    goto/16 :goto_790

    .line 1294
    :pswitch_2e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1295
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1296
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semHasFeature(I)Z

    move-result v1

    .line 1297
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1299
    goto/16 :goto_790

    .line 1286
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2f7
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetMaxEnrollmentNumber()I

    move-result v0

    .line 1287
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    goto/16 :goto_790

    .line 1269
    .end local v0    # "_result":I
    :pswitch_303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1271
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1273
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v15

    .line 1275
    .local v15, "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    sget-object v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 1277
    .local v16, "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 1278
    .local v17, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semAuthenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/Bundle;)J

    move-result-wide v0

    .line 1280
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1282
    goto/16 :goto_790

    .line 1262
    .end local v0    # "_result":J
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":J
    .end local v15    # "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v16    # "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .end local v17    # "_arg4":Landroid/os/Bundle;
    :pswitch_33f
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->scheduleWatchdog()V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    goto/16 :goto_790

    .line 1257
    :pswitch_347
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPowerPressed()V

    .line 1258
    goto/16 :goto_790

    .line 1249
    :pswitch_34c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricStateListener;

    move-result-object v0

    .line 1250
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 1252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    goto/16 :goto_790

    .line 1240
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricStateListener;
    :pswitch_35f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsOverlay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlay;

    move-result-object v0

    .line 1241
    .local v0, "_arg0":Landroid/hardware/fingerprint/IUdfpsOverlay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setUdfpsOverlay(Landroid/hardware/fingerprint/IUdfpsOverlay;)V

    .line 1243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    goto/16 :goto_790

    .line 1231
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IUdfpsOverlay;
    :pswitch_372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/ISidefpsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/ISidefpsController;

    move-result-object v0

    .line 1232
    .local v0, "_arg0":Landroid/hardware/fingerprint/ISidefpsController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    goto/16 :goto_790

    .line 1222
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/ISidefpsController;
    :pswitch_385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v0

    .line 1223
    .local v0, "_arg0":Landroid/hardware/fingerprint/IUdfpsOverlayController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1224
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    .line 1225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    goto/16 :goto_790

    .line 1211
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IUdfpsOverlayController;
    :pswitch_398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1213
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1214
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onUiReady(JI)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    goto/16 :goto_790

    .line 1198
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_3ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1200
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1202
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 1203
    .local v3, "_arg2":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 1205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_790

    .line 1185
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_3c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1187
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1189
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 1190
    .restart local v3    # "_arg2":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    goto/16 :goto_790

    .line 1176
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_3e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    move-result-object v0

    .line 1177
    .local v0, "_arg0":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    goto/16 :goto_790

    .line 1167
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    :pswitch_3f4
    sget-object v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1168
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticators(Ljava/util/List;)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    goto/16 :goto_790

    .line 1158
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :pswitch_405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    move-result-object v0

    .line 1159
    .local v0, "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    goto/16 :goto_790

    .line 1149
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    :pswitch_418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    move-result-object v0

    .line 1150
    .restart local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 1152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    goto/16 :goto_790

    .line 1141
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    :pswitch_42b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isClientActive()Z

    move-result v0

    .line 1142
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1144
    goto/16 :goto_790

    .line 1131
    .end local v0    # "_result":Z
    :pswitch_437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v0

    .line 1133
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    goto/16 :goto_790

    .line 1114
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_44e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1116
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1118
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1120
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1122
    .local v9, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1123
    .local v15, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    goto/16 :goto_790

    .line 1102
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":[B
    .end local v15    # "_arg4":Ljava/lang/String;
    :pswitch_474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1104
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1105
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId(II)J

    move-result-wide v2

    .line 1107
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1109
    goto/16 :goto_790

    .line 1089
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_48b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1091
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1093
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 1094
    .local v2, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    goto/16 :goto_790

    .line 1077
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_4a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1079
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1080
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getLockoutModeForUser(II)I

    move-result v2

    .line 1082
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    goto/16 :goto_790

    .line 1063
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_4bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1065
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1067
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1069
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints(IILjava/lang/String;)Z

    move-result v3

    .line 1070
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1072
    goto/16 :goto_790

    .line 1049
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1051
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1053
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1054
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1056
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1058
    goto/16 :goto_790

    .line 1032
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1034
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1036
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1038
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1040
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 1041
    .local v16, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v15

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    goto/16 :goto_790

    .line 1015
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":J
    :pswitch_51a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1017
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1019
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1021
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 1023
    .local v9, "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1024
    .local v15, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    goto/16 :goto_790

    .line 1003
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v15    # "_arg4":Ljava/lang/String;
    :pswitch_544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1005
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1006
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v2

    .line 1008
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1010
    goto/16 :goto_790

    .line 991
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_55b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 994
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 996
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 998
    goto/16 :goto_790

    .line 977
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 979
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 981
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 984
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 986
    goto/16 :goto_790

    .line 964
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :pswitch_58e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 966
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 968
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 969
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename(IILjava/lang/String;)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    goto/16 :goto_790

    .line 949
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_5a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 951
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 953
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v2

    .line 955
    .local v2, "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    goto/16 :goto_790

    .line 932
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_5c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 934
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 936
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 938
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 940
    .restart local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 941
    .restart local v15    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    goto/16 :goto_790

    .line 921
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v15    # "_arg4":Ljava/lang/String;
    :pswitch_5ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 923
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 924
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_790

    .line 901
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":J
    :pswitch_601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 903
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 905
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 907
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v15

    .line 909
    .local v15, "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 911
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 912
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J

    move-result-wide v0

    .line 914
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 916
    goto/16 :goto_790

    .line 886
    .end local v0    # "_result":J
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":I
    .end local v15    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":I
    :pswitch_636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 888
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 890
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 892
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 893
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    goto/16 :goto_790

    .line 873
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":J
    :pswitch_657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 875
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 878
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    goto/16 :goto_790

    .line 858
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_66e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 860
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 862
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 864
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 865
    .restart local v15    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V

    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    goto/16 :goto_790

    .line 847
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":J
    :pswitch_68f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 849
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 850
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->startPreparedClient(II)V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    goto/16 :goto_790

    .line 826
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_6a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 828
    .local v15, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 830
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v18

    .line 832
    .local v18, "_arg2":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    sget-object v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 834
    .local v19, "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 836
    .local v20, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 838
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 839
    .local v23, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v2, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    move/from16 v8, v22

    move/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->prepareForAuthentication(Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZ)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    goto/16 :goto_790

    .line 812
    .end local v15    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":J
    .end local v18    # "_arg2":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v19    # "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .end local v20    # "_arg4":J
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":Z
    :pswitch_6e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 814
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v1

    .line 816
    .local v1, "_arg1":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    sget-object v2, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 817
    .local v2, "_arg2":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->detectFingerprint(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v3

    .line 819
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {v13, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 821
    goto/16 :goto_790

    .line 796
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v2    # "_arg2":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .end local v3    # "_result":J
    :pswitch_705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 798
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 800
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 802
    .local v9, "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    sget-object v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 803
    .local v15, "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-object v4, v9

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->authenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v0

    .line 805
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 807
    goto :goto_790

    .line 784
    .end local v0    # "_result":J
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v15    # "_arg3":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    :pswitch_732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 786
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v2

    .line 789
    .local v2, "_result":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 791
    goto :goto_790

    .line 774
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    :pswitch_749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {v10, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 777
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 779
    goto :goto_790

    .line 762
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :pswitch_75c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 764
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 765
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {v10, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v2

    .line 767
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 769
    goto :goto_790

    .line 748
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[B
    :pswitch_772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 750
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 752
    .local v1, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 755
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 757
    nop

    .line 1668
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_790
    const/4 v0, 0x1

    return v0

    :pswitch_data_792
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_798
    .packed-switch 0x1
        :pswitch_772
        :pswitch_75c
        :pswitch_749
        :pswitch_732
        :pswitch_705
        :pswitch_6e2
        :pswitch_6a2
        :pswitch_68f
        :pswitch_66e
        :pswitch_657
        :pswitch_636
        :pswitch_601
        :pswitch_5ee
        :pswitch_5c4
        :pswitch_5a5
        :pswitch_58e
        :pswitch_572
        :pswitch_55b
        :pswitch_544
        :pswitch_51a
        :pswitch_4f3
        :pswitch_4d8
        :pswitch_4bd
        :pswitch_4a6
        :pswitch_48b
        :pswitch_474
        :pswitch_44e
        :pswitch_437
        :pswitch_42b
        :pswitch_418
        :pswitch_405
        :pswitch_3f4
        :pswitch_3e1
        :pswitch_3c6
        :pswitch_3ab
        :pswitch_398
        :pswitch_385
        :pswitch_372
        :pswitch_35f
        :pswitch_34c
        :pswitch_347
        :pswitch_33f
        :pswitch_303
        :pswitch_2f7
        :pswitch_2e4
        :pswitch_2dc
        :pswitch_2d0
        :pswitch_2c4
        :pswitch_2b8
        :pswitch_2ac
        :pswitch_2a0
        :pswitch_294
        :pswitch_288
        :pswitch_27c
        :pswitch_270
        :pswitch_24d
        :pswitch_231
        :pswitch_21e
        :pswitch_20b
        :pswitch_1f4
        :pswitch_1dd
        :pswitch_1c6
        :pswitch_1b7
        :pswitch_197
        :pswitch_18b
        :pswitch_178
        :pswitch_16c
        :pswitch_160
        :pswitch_145
        :pswitch_120
        :pswitch_109
        :pswitch_101
        :pswitch_ed
        :pswitch_de
        :pswitch_c3
        :pswitch_9b
        :pswitch_88
        :pswitch_75
        :pswitch_24
    .end packed-switch
.end method

.method protected onUiReady_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3298
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3299
    return-void
.end method

.method protected prepareForAuthentication_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3169
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3170
    return-void
.end method

.method protected registerAuthenticators_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3278
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3279
    return-void
.end method

.method protected registerBiometricStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3318
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3319
    return-void
.end method

.method protected removeAll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3205
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3206
    return-void
.end method

.method protected removeClientActiveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3273
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3274
    return-void
.end method

.method protected remove_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3200
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3201
    return-void
.end method

.method protected rename_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3210
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3211
    return-void
.end method

.method protected resetLockout_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3253
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3254
    return-void
.end method

.method protected revokeChallenge_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3227
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3228
    return-void
.end method

.method protected scheduleWatchdog_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3328
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3329
    return-void
.end method

.method protected semAddMaskView_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3402
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3403
    return-void
.end method

.method protected semBioSysUiRequest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3444
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3445
    return-void
.end method

.method protected semForceCBGE_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3336
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3337
    return-void
.end method

.method protected semGetDaemonVersion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3377
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3378
    return-void
.end method

.method protected semGetRemainingLockoutTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3475
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3476
    return-void
.end method

.method protected semGetSecurityLevel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3429
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3430
    return-void
.end method

.method protected semGetSensorData_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3459
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3460
    return-void
.end method

.method protected semGetSensorInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3367
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3368
    return-void
.end method

.method protected semGetSensorTestResult_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3387
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3388
    return-void
.end method

.method protected semGetTrustAppVersion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3434
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3435
    return-void
.end method

.method protected semGetUserIdList_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3372
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3373
    return-void
.end method

.method protected semIsEnrollSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3341
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3342
    return-void
.end method

.method protected semIsTemplateDbCorrupted_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3346
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3347
    return-void
.end method

.method protected semMoveSensorIconInDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3424
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3425
    return-void
.end method

.method protected semOpenSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3362
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3363
    return-void
.end method

.method protected semPauseEnroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3352
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3353
    return-void
.end method

.method protected semRegisterAodController_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3412
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3413
    return-void
.end method

.method protected semRegisterDisplayStateCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3449
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3450
    return-void
.end method

.method protected semRemoveMaskView_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3407
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3408
    return-void
.end method

.method protected semResumeEnroll_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3357
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3358
    return-void
.end method

.method protected semRunSensorTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3382
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3383
    return-void
.end method

.method protected semSetCalibrationMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3469
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3470
    return-void
.end method

.method protected semSetFlagForIFAA_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3480
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3481
    return-void
.end method

.method protected semSetFodStrictMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3464
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3465
    return-void
.end method

.method protected semSetScreenStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3392
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3393
    return-void
.end method

.method protected semShowBouncerScreen_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3397
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3398
    return-void
.end method

.method protected semUnregisterAodController_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3417
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3418
    return-void
.end method

.method protected semUnregisterDisplayStateCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3454
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3455
    return-void
.end method

.method protected semUpdateTrustApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3439
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3440
    return-void
.end method

.method protected setSidefpsController_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3308
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3309
    return-void
.end method

.method protected setUdfpsOverlayController_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3303
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3304
    return-void
.end method

.method protected setUdfpsOverlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3313
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3314
    return-void
.end method

.method protected startPreparedClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3174
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3175
    return-void
.end method
