.class public abstract Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.super Landroid/os/Binder;
.source "IKnoxGuardManager.java"

# interfaces
.implements Lcom/samsung/android/knoxguard/IKnoxGuardManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/IKnoxGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addPackagesToClearCacheBlockList:I = 0x8

.field static final TRANSACTION_addPackagesToForceStopBlockList:I = 0x7

.field static final TRANSACTION_allowFirmwareRecovery:I = 0x4

.field static final TRANSACTION_allowOTAUpgrade:I = 0x5

.field static final TRANSACTION_allowSafeMode:I = 0x6

.field static final TRANSACTION_bindToLockScreen:I = 0x16

.field static final TRANSACTION_callKGsv:I = 0x1

.field static final TRANSACTION_generateHotpDHRequest:I = 0x20

.field static final TRANSACTION_getClientData:I = 0x27

.field static final TRANSACTION_getHotpChallenge:I = 0x21

.field static final TRANSACTION_getKGID:I = 0x29

.field static final TRANSACTION_getKGPolicy:I = 0x1d

.field static final TRANSACTION_getKGServiceInfo:I = 0x35

.field static final TRANSACTION_getKGServiceVersion:I = 0x17

.field static final TRANSACTION_getLockAction:I = 0x26

.field static final TRANSACTION_getNonce:I = 0x30

.field static final TRANSACTION_getPBAUniqueNumber:I = 0x12

.field static final TRANSACTION_getStringSystemProperty:I = 0x2e

.field static final TRANSACTION_getTAError:I = 0x2f

.field static final TRANSACTION_getTAInfo:I = 0x31

.field static final TRANSACTION_getTAState:I = 0x1b

.field static final TRANSACTION_getTAStateSetError:I = 0x1c

.field static final TRANSACTION_isSkipSupportContainerSupported:I = 0x11

.field static final TRANSACTION_isVpnExceptionRequired:I = 0x33

.field static final TRANSACTION_lockScreen:I = 0x25

.field static final TRANSACTION_provisionCert:I = 0x32

.field static final TRANSACTION_registerIntent:I = 0x2

.field static final TRANSACTION_removeActiveAdmin:I = 0xc

.field static final TRANSACTION_resetRPMB:I = 0x2a

.field static final TRANSACTION_resetRPMB2:I = 0x2b

.field static final TRANSACTION_revokeRuntimePermission:I = 0xe

.field static final TRANSACTION_setActiveAdmin:I = 0xb

.field static final TRANSACTION_setAdminRemovable:I = 0x3

.field static final TRANSACTION_setAirplaneMode:I = 0xa

.field static final TRANSACTION_setApplicationUninstallationDisabled:I = 0x9

.field static final TRANSACTION_setCheckingState:I = 0x2c

.field static final TRANSACTION_setClientData:I = 0x28

.field static final TRANSACTION_setClientHealthOK:I = 0x34

.field static final TRANSACTION_setKnoxGuardExemptRule:I = 0x15

.field static final TRANSACTION_setRemoteLockToLockscreen:I = 0xf

.field static final TRANSACTION_setRemoteLockToLockscreenWithSkipSupport:I = 0x10

.field static final TRANSACTION_setRuntimePermission:I = 0xd

.field static final TRANSACTION_shouldBlockCustomRom:I = 0x14

.field static final TRANSACTION_showInstallmentStatus:I = 0x13

.field static final TRANSACTION_unRegisterIntent:I = 0x18

.field static final TRANSACTION_unlockScreen:I = 0x24

.field static final TRANSACTION_verifyCompleteToken:I = 0x1f

.field static final TRANSACTION_verifyHOTPDHChallenge:I = 0x1e

.field static final TRANSACTION_verifyHOTPPin:I = 0x1a

.field static final TRANSACTION_verifyHOTPsecret:I = 0x19

.field static final TRANSACTION_verifyKgRot:I = 0x2d

.field static final TRANSACTION_verifyPolicy:I = 0x23

.field static final TRANSACTION_verifyRegistrationInfo:I = 0x22


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 221
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 222
    const-string v0, "com.samsung.android.knoxguard.IKnoxGuardManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knoxguard/IKnoxGuardManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 230
    if-nez p0, :cond_4

    .line 231
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_4
    const-string v0, "com.samsung.android.knoxguard.IKnoxGuardManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 234
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    if-eqz v1, :cond_14

    .line 235
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    return-object v1

    .line 237
    :cond_14
    new-instance v1, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 246
    packed-switch p0, :pswitch_data_d2

    .line 462
    const/4 v0, 0x0

    return-object v0

    .line 458
    :pswitch_5
    const-string/jumbo v0, "getKGServiceInfo"

    return-object v0

    .line 454
    :pswitch_9
    const-string/jumbo v0, "setClientHealthOK"

    return-object v0

    .line 450
    :pswitch_d
    const-string/jumbo v0, "isVpnExceptionRequired"

    return-object v0

    .line 446
    :pswitch_11
    const-string/jumbo v0, "provisionCert"

    return-object v0

    .line 442
    :pswitch_15
    const-string/jumbo v0, "getTAInfo"

    return-object v0

    .line 438
    :pswitch_19
    const-string/jumbo v0, "getNonce"

    return-object v0

    .line 434
    :pswitch_1d
    const-string/jumbo v0, "getTAError"

    return-object v0

    .line 430
    :pswitch_21
    const-string/jumbo v0, "getStringSystemProperty"

    return-object v0

    .line 426
    :pswitch_25
    const-string/jumbo v0, "verifyKgRot"

    return-object v0

    .line 422
    :pswitch_29
    const-string/jumbo v0, "setCheckingState"

    return-object v0

    .line 418
    :pswitch_2d
    const-string/jumbo v0, "resetRPMB2"

    return-object v0

    .line 414
    :pswitch_31
    const-string/jumbo v0, "resetRPMB"

    return-object v0

    .line 410
    :pswitch_35
    const-string/jumbo v0, "getKGID"

    return-object v0

    .line 406
    :pswitch_39
    const-string/jumbo v0, "setClientData"

    return-object v0

    .line 402
    :pswitch_3d
    const-string/jumbo v0, "getClientData"

    return-object v0

    .line 398
    :pswitch_41
    const-string/jumbo v0, "getLockAction"

    return-object v0

    .line 394
    :pswitch_45
    const-string/jumbo v0, "lockScreen"

    return-object v0

    .line 390
    :pswitch_49
    const-string/jumbo v0, "unlockScreen"

    return-object v0

    .line 386
    :pswitch_4d
    const-string/jumbo v0, "verifyPolicy"

    return-object v0

    .line 382
    :pswitch_51
    const-string/jumbo v0, "verifyRegistrationInfo"

    return-object v0

    .line 378
    :pswitch_55
    const-string/jumbo v0, "getHotpChallenge"

    return-object v0

    .line 374
    :pswitch_59
    const-string v0, "generateHotpDHRequest"

    return-object v0

    .line 370
    :pswitch_5c
    const-string/jumbo v0, "verifyCompleteToken"

    return-object v0

    .line 366
    :pswitch_60
    const-string/jumbo v0, "verifyHOTPDHChallenge"

    return-object v0

    .line 362
    :pswitch_64
    const-string/jumbo v0, "getKGPolicy"

    return-object v0

    .line 358
    :pswitch_68
    const-string/jumbo v0, "getTAStateSetError"

    return-object v0

    .line 354
    :pswitch_6c
    const-string/jumbo v0, "getTAState"

    return-object v0

    .line 350
    :pswitch_70
    const-string/jumbo v0, "verifyHOTPPin"

    return-object v0

    .line 346
    :pswitch_74
    const-string/jumbo v0, "verifyHOTPsecret"

    return-object v0

    .line 342
    :pswitch_78
    const-string/jumbo v0, "unRegisterIntent"

    return-object v0

    .line 338
    :pswitch_7c
    const-string/jumbo v0, "getKGServiceVersion"

    return-object v0

    .line 334
    :pswitch_80
    const-string v0, "bindToLockScreen"

    return-object v0

    .line 330
    :pswitch_83
    const-string/jumbo v0, "setKnoxGuardExemptRule"

    return-object v0

    .line 326
    :pswitch_87
    const-string/jumbo v0, "shouldBlockCustomRom"

    return-object v0

    .line 322
    :pswitch_8b
    const-string/jumbo v0, "showInstallmentStatus"

    return-object v0

    .line 318
    :pswitch_8f
    const-string/jumbo v0, "getPBAUniqueNumber"

    return-object v0

    .line 314
    :pswitch_93
    const-string/jumbo v0, "isSkipSupportContainerSupported"

    return-object v0

    .line 310
    :pswitch_97
    const-string/jumbo v0, "setRemoteLockToLockscreenWithSkipSupport"

    return-object v0

    .line 306
    :pswitch_9b
    const-string/jumbo v0, "setRemoteLockToLockscreen"

    return-object v0

    .line 302
    :pswitch_9f
    const-string/jumbo v0, "revokeRuntimePermission"

    return-object v0

    .line 298
    :pswitch_a3
    const-string/jumbo v0, "setRuntimePermission"

    return-object v0

    .line 294
    :pswitch_a7
    const-string/jumbo v0, "removeActiveAdmin"

    return-object v0

    .line 290
    :pswitch_ab
    const-string/jumbo v0, "setActiveAdmin"

    return-object v0

    .line 286
    :pswitch_af
    const-string/jumbo v0, "setAirplaneMode"

    return-object v0

    .line 282
    :pswitch_b3
    const-string/jumbo v0, "setApplicationUninstallationDisabled"

    return-object v0

    .line 278
    :pswitch_b7
    const-string v0, "addPackagesToClearCacheBlockList"

    return-object v0

    .line 274
    :pswitch_ba
    const-string v0, "addPackagesToForceStopBlockList"

    return-object v0

    .line 270
    :pswitch_bd
    const-string v0, "allowSafeMode"

    return-object v0

    .line 266
    :pswitch_c0
    const-string v0, "allowOTAUpgrade"

    return-object v0

    .line 262
    :pswitch_c3
    const-string v0, "allowFirmwareRecovery"

    return-object v0

    .line 258
    :pswitch_c6
    const-string/jumbo v0, "setAdminRemovable"

    return-object v0

    .line 254
    :pswitch_ca
    const-string/jumbo v0, "registerIntent"

    return-object v0

    .line 250
    :pswitch_ce
    const-string v0, "callKGsv"

    return-object v0

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
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

    .line 241
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2039
    const/16 v0, 0x34

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 469
    invoke-static {p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 37
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "com.samsung.android.knoxguard.IKnoxGuardManager"

    .line 474
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v14, v9, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    .line 475
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    :cond_15
    packed-switch v14, :pswitch_data_5d8

    .line 485
    packed-switch v14, :pswitch_data_5de

    .line 1025
    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 481
    :pswitch_23
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    return v9

    .line 1018
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGServiceInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1019
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v12, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1021
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 1012
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setClientHealthOK()V

    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 1005
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->isVpnExceptionRequired()Z

    move-result v0

    .line 1006
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1008
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 990
    .end local v0    # "_result":Z
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 999
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 980
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 981
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 985
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 968
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 975
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 960
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_ba
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAError()I

    move-result v0

    .line 961
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 949
    .end local v0    # "_result":I
    :pswitch_cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 952
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 954
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 956
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 941
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_eb
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyKgRot()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 944
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 934
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_fe
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setCheckingState()I

    move-result v0

    .line 935
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 925
    .end local v0    # "_result":I
    :pswitch_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->resetRPMB2(Ljava/lang/String;)I

    move-result v1

    .line 928
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 917
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_12b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->resetRPMB()I

    move-result v0

    .line 918
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 910
    .end local v0    # "_result":I
    :pswitch_13e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGID()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 901
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setClientData(Ljava/lang/String;)I

    move-result v1

    .line 904
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 893
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_16b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getClientData()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 896
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 886
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_17e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getLockAction()Ljava/lang/String;

    move-result-object v0

    .line 887
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 863
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 865
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 867
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 869
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 871
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 873
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 875
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 877
    .local v21, "_arg6":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 878
    .local v22, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I

    move-result v0

    .line 880
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 855
    .end local v0    # "_result":I
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Landroid/os/Bundle;
    :pswitch_1de
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->unlockScreen()I

    move-result v0

    .line 856
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 844
    .end local v0    # "_result":I
    :pswitch_1f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 849
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 851
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 832
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_20f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 834
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 824
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_22d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getHotpChallenge()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 827
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 817
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_240
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->generateHotpDHRequest()Ljava/lang/String;

    move-result-object v0

    .line 818
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 820
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 808
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyCompleteToken(Ljava/lang/String;)I

    move-result v1

    .line 811
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 794
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_26d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 796
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 801
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 786
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_28f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGPolicy()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 789
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 777
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 778
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAStateSetError(Z)I

    move-result v1

    .line 780
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 769
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_2bc
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAState()I

    move-result v0

    .line 770
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 760
    .end local v0    # "_result":I
    :pswitch_2cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyHOTPPin(Ljava/lang/String;)I

    move-result v1

    .line 763
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 750
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_2e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 751
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyHOTPsecret(Ljava/lang/String;)I

    move-result v1

    .line 753
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 743
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_303
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->unRegisterIntent()V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 736
    :pswitch_312
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGServiceVersion()I

    move-result v0

    .line 737
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 730
    .end local v0    # "_result":I
    :pswitch_325
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->bindToLockScreen()V

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 722
    :pswitch_334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 723
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setKnoxGuardExemptRule(Z)V

    .line 725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 714
    .end local v0    # "_arg0":Z
    :pswitch_34a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->shouldBlockCustomRom()Z

    move-result v0

    .line 715
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 717
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 707
    .end local v0    # "_result":Z
    :pswitch_35d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->showInstallmentStatus()Z

    move-result v0

    .line 708
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 710
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 700
    .end local v0    # "_result":Z
    :pswitch_370
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getPBAUniqueNumber()Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 703
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 693
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_383
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->isSkipSupportContainerSupported()Z

    move-result v0

    .line 694
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 696
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_5d6

    .line 661
    .end local v0    # "_result":Z
    :pswitch_396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 663
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 665
    .local v17, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 667
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 669
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 671
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 673
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 675
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 677
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 679
    .local v24, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 681
    .local v26, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v27

    .line 683
    .local v27, "_arg10":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/os/Bundle;

    .line 685
    .local v28, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    .line 686
    .local v29, "_arg12":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v30, v9

    move-wide/from16 v9, v24

    move-object/from16 v31, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v31, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move/from16 v12, v27

    move-object v15, v13

    move-object/from16 v13, v28

    move/from16 v14, v29

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v3, p0

    move-object/from16 v2, p3

    move-object v4, v15

    goto/16 :goto_5d6

    .line 630
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":J
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":Z
    .end local v28    # "_arg11":Landroid/os/Bundle;
    .end local v29    # "_arg12":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_401
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 632
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 634
    .local v16, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 636
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 638
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 640
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 642
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 644
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 646
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 648
    .local v23, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 650
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 652
    .local v26, "_arg10":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 653
    .local v27, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-wide/from16 v9, v23

    move/from16 v11, v25

    move/from16 v12, v26

    move-object/from16 v13, v27

    invoke-virtual/range {v0 .. v13}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v3, p0

    move-object/from16 v2, p3

    move-object v4, v15

    goto/16 :goto_5d6

    .line 617
    .end local v14    # "_arg0":I
    .end local v16    # "_arg1":Z
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":J
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":Landroid/os/Bundle;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_465
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 622
    .local v2, "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    move-object/from16 v3, p0

    move-object v4, v15

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    move-object/from16 v2, p3

    goto/16 :goto_5d6

    .line 604
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_48a
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 606
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 608
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 609
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    move-object/from16 v2, p3

    goto/16 :goto_5d6

    .line 595
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4ad
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 596
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    move-object/from16 v2, p3

    goto/16 :goto_5d6

    .line 586
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4c8
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 587
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    move-object/from16 v2, p3

    goto/16 :goto_5d6

    .line 577
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4e3
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 578
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setAirplaneMode(Z)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    move-object/from16 v2, p3

    goto/16 :goto_5d6

    .line 567
    .end local v0    # "_arg0":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4fa
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setApplicationUninstallationDisabled(Ljava/lang/String;)Z

    move-result v1

    .line 570
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 572
    goto/16 :goto_5d6

    .line 557
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_515
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 558
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->addPackagesToClearCacheBlockList(Ljava/util/List;)Z

    move-result v1

    .line 560
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 562
    goto/16 :goto_5d6

    .line 547
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_52f
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 548
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->addPackagesToForceStopBlockList(Ljava/util/List;)Z

    move-result v1

    .line 550
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 552
    goto/16 :goto_5d6

    .line 537
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_549
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 538
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowSafeMode(Z)Z

    move-result v1

    .line 540
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 542
    goto/16 :goto_5d6

    .line 527
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_563
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 528
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowOTAUpgrade(Z)Z

    move-result v1

    .line 530
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 532
    goto/16 :goto_5d6

    .line 517
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_57d
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 518
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowFirmwareRecovery(Z)Z

    move-result v1

    .line 520
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 522
    goto :goto_5d6

    .line 507
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_596
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 508
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setAdminRemovable(Z)Z

    move-result v1

    .line 510
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    goto :goto_5d6

    .line 496
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5af
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 499
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->registerIntent(Ljava/lang/String;Ljava/util/List;)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto :goto_5d6

    .line 489
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5c8
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->callKGsv()V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    nop

    .line 1028
    :goto_5d6
    return v30

    nop

    :pswitch_data_5d8
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_5de
    .packed-switch 0x1
        :pswitch_5c8
        :pswitch_5af
        :pswitch_596
        :pswitch_57d
        :pswitch_563
        :pswitch_549
        :pswitch_52f
        :pswitch_515
        :pswitch_4fa
        :pswitch_4e3
        :pswitch_4c8
        :pswitch_4ad
        :pswitch_48a
        :pswitch_465
        :pswitch_401
        :pswitch_396
        :pswitch_383
        :pswitch_370
        :pswitch_35d
        :pswitch_34a
        :pswitch_334
        :pswitch_325
        :pswitch_312
        :pswitch_303
        :pswitch_2e9
        :pswitch_2cf
        :pswitch_2bc
        :pswitch_2a2
        :pswitch_28f
        :pswitch_26d
        :pswitch_253
        :pswitch_240
        :pswitch_22d
        :pswitch_20f
        :pswitch_1f1
        :pswitch_1de
        :pswitch_191
        :pswitch_17e
        :pswitch_16b
        :pswitch_151
        :pswitch_13e
        :pswitch_12b
        :pswitch_111
        :pswitch_fe
        :pswitch_eb
        :pswitch_cd
        :pswitch_ba
        :pswitch_9c
        :pswitch_82
        :pswitch_5c
        :pswitch_49
        :pswitch_3a
        :pswitch_27
    .end packed-switch
.end method
