.class public abstract Lcom/samsung/android/knox/dar/IDarManagerService$Stub;
.super Landroid/os/Binder;
.source "IDarManagerService.java"

# interfaces
.implements Lcom/samsung/android/knox/dar/IDarManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/IDarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addBlockedClearablePackages:I = 0x2f

.field static final TRANSACTION_addEngine:I = 0x1b

.field static final TRANSACTION_allow:I = 0x18

.field static final TRANSACTION_clearResetPasswordToken:I = 0x9

.field static final TRANSACTION_createEncPkgDir:I = 0x20

.field static final TRANSACTION_deleteToeknFromTrusted:I = 0x22

.field static final TRANSACTION_disallow:I = 0x19

.field static final TRANSACTION_exists:I = 0x17

.field static final TRANSACTION_getAvailableUserId:I = 0x7

.field static final TRANSACTION_getBlockedClearablePackages:I = 0x30

.field static final TRANSACTION_getEngineInfo:I = 0x1d

.field static final TRANSACTION_getInnerAuthUserId:I = 0x2c

.field static final TRANSACTION_getMainUserId:I = 0x2e

.field static final TRANSACTION_getPackageListForDualDarPolicy:I = 0x31

.field static final TRANSACTION_getPasswordMinimumLengthForInner:I = 0x32

.field static final TRANSACTION_getReservedUserIdForSystem:I = 0x6

.field static final TRANSACTION_getSupportedSDKVersion:I = 0x1a

.field static final TRANSACTION_isDarSupported:I = 0x1

.field static final TRANSACTION_isDefaultPathUser:I = 0x28

.field static final TRANSACTION_isDeviceRootKeyInstalled:I = 0x3

.field static final TRANSACTION_isInnerAuthRequired:I = 0x2a

.field static final TRANSACTION_isKnoxKeyInstallable:I = 0x4

.field static final TRANSACTION_isLicensed:I = 0x16

.field static final TRANSACTION_isResetPasswordTokenActive:I = 0xa

.field static final TRANSACTION_isSDPEnabled:I = 0xc

.field static final TRANSACTION_isSdpSupported:I = 0xd

.field static final TRANSACTION_isSdpSupportedSecureFolder:I = 0xe

.field static final TRANSACTION_isSensitive:I = 0x1f

.field static final TRANSACTION_lock:I = 0x10

.field static final TRANSACTION_migrate:I = 0x13

.field static final TRANSACTION_onBiometricsAuthenticated:I = 0x24

.field static final TRANSACTION_onDeviceOwnerLocked:I = 0x25

.field static final TRANSACTION_registerClient:I = 0x26

.field static final TRANSACTION_registerListener:I = 0x14

.field static final TRANSACTION_removeEngine:I = 0x1c

.field static final TRANSACTION_reserveUserIdForSystem:I = 0x5

.field static final TRANSACTION_resetPassword:I = 0x12

.field static final TRANSACTION_resetPasswordWithToken:I = 0xb

.field static final TRANSACTION_saveTokenIntoTrusted:I = 0x21

.field static final TRANSACTION_setDualDarInfo:I = 0x29

.field static final TRANSACTION_setInnerAuthUserId:I = 0x2b

.field static final TRANSACTION_setMainUserId:I = 0x2d

.field static final TRANSACTION_setPassword:I = 0x11

.field static final TRANSACTION_setResetPasswordToken:I = 0x8

.field static final TRANSACTION_setSensitive:I = 0x1e

.field static final TRANSACTION_startMonitoringDomains:I = 0x37

.field static final TRANSACTION_startMonitoringFiles:I = 0x35

.field static final TRANSACTION_startTracing:I = 0x33

.field static final TRANSACTION_stopMonitoringDomains:I = 0x38

.field static final TRANSACTION_stopMonitoringFiles:I = 0x36

.field static final TRANSACTION_stopTracing:I = 0x34

.field static final TRANSACTION_systemReady:I = 0x2

.field static final TRANSACTION_unlock:I = 0xf

.field static final TRANSACTION_unlockViaTrusted:I = 0x23

.field static final TRANSACTION_unregisterClient:I = 0x27

.field static final TRANSACTION_unregisterListener:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 252
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 253
    const-string v0, "com.samsung.android.knox.dar.IDarManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 261
    if-nez p0, :cond_4

    .line 262
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_4
    const-string v0, "com.samsung.android.knox.dar.IDarManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 265
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/dar/IDarManagerService;

    if-eqz v1, :cond_14

    .line 266
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/dar/IDarManagerService;

    return-object v1

    .line 268
    :cond_14
    new-instance v1, Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 277
    packed-switch p0, :pswitch_data_de

    .line 505
    const/4 v0, 0x0

    return-object v0

    .line 501
    :pswitch_5
    const-string/jumbo v0, "stopMonitoringDomains"

    return-object v0

    .line 497
    :pswitch_9
    const-string/jumbo v0, "startMonitoringDomains"

    return-object v0

    .line 493
    :pswitch_d
    const-string/jumbo v0, "stopMonitoringFiles"

    return-object v0

    .line 489
    :pswitch_11
    const-string/jumbo v0, "startMonitoringFiles"

    return-object v0

    .line 485
    :pswitch_15
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 481
    :pswitch_19
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 477
    :pswitch_1d
    const-string/jumbo v0, "getPasswordMinimumLengthForInner"

    return-object v0

    .line 473
    :pswitch_21
    const-string/jumbo v0, "getPackageListForDualDarPolicy"

    return-object v0

    .line 469
    :pswitch_25
    const-string/jumbo v0, "getBlockedClearablePackages"

    return-object v0

    .line 465
    :pswitch_29
    const-string v0, "addBlockedClearablePackages"

    return-object v0

    .line 461
    :pswitch_2c
    const-string/jumbo v0, "getMainUserId"

    return-object v0

    .line 457
    :pswitch_30
    const-string/jumbo v0, "setMainUserId"

    return-object v0

    .line 453
    :pswitch_34
    const-string/jumbo v0, "getInnerAuthUserId"

    return-object v0

    .line 449
    :pswitch_38
    const-string/jumbo v0, "setInnerAuthUserId"

    return-object v0

    .line 445
    :pswitch_3c
    const-string/jumbo v0, "isInnerAuthRequired"

    return-object v0

    .line 441
    :pswitch_40
    const-string/jumbo v0, "setDualDarInfo"

    return-object v0

    .line 437
    :pswitch_44
    const-string/jumbo v0, "isDefaultPathUser"

    return-object v0

    .line 433
    :pswitch_48
    const-string/jumbo v0, "unregisterClient"

    return-object v0

    .line 429
    :pswitch_4c
    const-string/jumbo v0, "registerClient"

    return-object v0

    .line 425
    :pswitch_50
    const-string/jumbo v0, "onDeviceOwnerLocked"

    return-object v0

    .line 421
    :pswitch_54
    const-string/jumbo v0, "onBiometricsAuthenticated"

    return-object v0

    .line 417
    :pswitch_58
    const-string/jumbo v0, "unlockViaTrusted"

    return-object v0

    .line 413
    :pswitch_5c
    const-string v0, "deleteToeknFromTrusted"

    return-object v0

    .line 409
    :pswitch_5f
    const-string/jumbo v0, "saveTokenIntoTrusted"

    return-object v0

    .line 405
    :pswitch_63
    const-string v0, "createEncPkgDir"

    return-object v0

    .line 401
    :pswitch_66
    const-string/jumbo v0, "isSensitive"

    return-object v0

    .line 397
    :pswitch_6a
    const-string/jumbo v0, "setSensitive"

    return-object v0

    .line 393
    :pswitch_6e
    const-string/jumbo v0, "getEngineInfo"

    return-object v0

    .line 389
    :pswitch_72
    const-string/jumbo v0, "removeEngine"

    return-object v0

    .line 385
    :pswitch_76
    const-string v0, "addEngine"

    return-object v0

    .line 381
    :pswitch_79
    const-string/jumbo v0, "getSupportedSDKVersion"

    return-object v0

    .line 377
    :pswitch_7d
    const-string v0, "disallow"

    return-object v0

    .line 373
    :pswitch_80
    const-string v0, "allow"

    return-object v0

    .line 369
    :pswitch_83
    const-string v0, "exists"

    return-object v0

    .line 365
    :pswitch_86
    const-string/jumbo v0, "isLicensed"

    return-object v0

    .line 361
    :pswitch_8a
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 357
    :pswitch_8e
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 353
    :pswitch_92
    const-string/jumbo v0, "migrate"

    return-object v0

    .line 349
    :pswitch_96
    const-string/jumbo v0, "resetPassword"

    return-object v0

    .line 345
    :pswitch_9a
    const-string/jumbo v0, "setPassword"

    return-object v0

    .line 341
    :pswitch_9e
    const-string/jumbo v0, "lock"

    return-object v0

    .line 337
    :pswitch_a2
    const-string/jumbo v0, "unlock"

    return-object v0

    .line 333
    :pswitch_a6
    const-string/jumbo v0, "isSdpSupportedSecureFolder"

    return-object v0

    .line 329
    :pswitch_aa
    const-string/jumbo v0, "isSdpSupported"

    return-object v0

    .line 325
    :pswitch_ae
    const-string/jumbo v0, "isSDPEnabled"

    return-object v0

    .line 321
    :pswitch_b2
    const-string/jumbo v0, "resetPasswordWithToken"

    return-object v0

    .line 317
    :pswitch_b6
    const-string/jumbo v0, "isResetPasswordTokenActive"

    return-object v0

    .line 313
    :pswitch_ba
    const-string v0, "clearResetPasswordToken"

    return-object v0

    .line 309
    :pswitch_bd
    const-string/jumbo v0, "setResetPasswordToken"

    return-object v0

    .line 305
    :pswitch_c1
    const-string/jumbo v0, "getAvailableUserId"

    return-object v0

    .line 301
    :pswitch_c5
    const-string/jumbo v0, "getReservedUserIdForSystem"

    return-object v0

    .line 297
    :pswitch_c9
    const-string/jumbo v0, "reserveUserIdForSystem"

    return-object v0

    .line 293
    :pswitch_cd
    const-string/jumbo v0, "isKnoxKeyInstallable"

    return-object v0

    .line 289
    :pswitch_d1
    const-string/jumbo v0, "isDeviceRootKeyInstalled"

    return-object v0

    .line 285
    :pswitch_d5
    const-string/jumbo v0, "systemReady"

    return-object v0

    .line 281
    :pswitch_d9
    const-string/jumbo v0, "isDarSupported"

    return-object v0

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c1
        :pswitch_bd
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
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
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_63
        :pswitch_5f
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
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

    .line 272
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2191
    const/16 v0, 0x37

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 512
    invoke-static {p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 516
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.knox.dar.IDarManagerService"

    .line 517
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 518
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    :cond_15
    packed-switch v7, :pswitch_data_476

    .line 528
    packed-switch v7, :pswitch_data_47c

    .line 1113
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 524
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    return v11

    .line 1105
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1106
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->stopMonitoringDomains(I)V

    .line 1108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    goto/16 :goto_474

    .line 1090
    .end local v0    # "_arg0":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1092
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1094
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1096
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IZtdListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IZtdListener;

    move-result-object v3

    .line 1097
    .local v3, "_arg3":Landroid/os/IZtdListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->startMonitoringDomains(I[ILjava/util/List;Landroid/os/IZtdListener;)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    goto/16 :goto_474

    .line 1081
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg3":Landroid/os/IZtdListener;
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1082
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->stopMonitoringFiles(I)V

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    goto/16 :goto_474

    .line 1064
    .end local v0    # "_arg0":I
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1066
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    .line 1068
    .local v13, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 1070
    .local v14, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 1072
    .local v15, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IZtdListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IZtdListener;

    move-result-object v16

    .line 1073
    .local v16, "_arg4":Landroid/os/IZtdListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->startMonitoringFiles(I[ILjava/util/List;Ljava/util/List;Landroid/os/IZtdListener;)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    goto/16 :goto_474

    .line 1052
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":[I
    .end local v14    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "_arg4":Landroid/os/IZtdListener;
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1054
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1055
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->stopTracing(II)I

    move-result v2

    .line 1057
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    goto/16 :goto_474

    .line 1036
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1038
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1040
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1042
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    move-result-object v3

    .line 1043
    .local v3, "_arg3":Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->startTracing(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result v4

    .line 1045
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    goto/16 :goto_474

    .line 1028
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;
    .end local v4    # "_result":I
    :pswitch_ca
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getPasswordMinimumLengthForInner()I

    move-result v0

    .line 1029
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    goto/16 :goto_474

    .line 1019
    .end local v0    # "_result":I
    :pswitch_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1022
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1024
    goto/16 :goto_474

    .line 1009
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1010
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getBlockedClearablePackages(I)Ljava/util/List;

    move-result-object v1

    .line 1012
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1014
    goto/16 :goto_474

    .line 998
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1000
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->addBlockedClearablePackages(ILjava/lang/String;)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    goto/16 :goto_474

    .line 988
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_10f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 989
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getMainUserId(I)I

    move-result v1

    .line 991
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    goto/16 :goto_474

    .line 977
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 979
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 980
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setMainUserId(II)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    goto/16 :goto_474

    .line 967
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 968
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getInnerAuthUserId(I)I

    move-result v1

    .line 970
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    goto/16 :goto_474

    .line 956
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 958
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 959
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setInnerAuthUserId(II)V

    .line 961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    goto/16 :goto_474

    .line 946
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_15b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 947
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isInnerAuthRequired(I)Z

    move-result v1

    .line 949
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 951
    goto/16 :goto_474

    .line 934
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 936
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 937
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setDualDarInfo(II)Z

    move-result v2

    .line 939
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 941
    goto/16 :goto_474

    .line 924
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 925
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDefaultPathUser(I)Z

    move-result v1

    .line 927
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 929
    goto/16 :goto_474

    .line 914
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 916
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v1

    .line 917
    .local v1, "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    .line 919
    goto/16 :goto_474

    .line 904
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    :pswitch_1ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 906
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v1

    .line 907
    .restart local v1    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    .line 909
    goto/16 :goto_474

    .line 895
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    :pswitch_1c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 896
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->onDeviceOwnerLocked(I)V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto/16 :goto_474

    .line 886
    .end local v0    # "_arg0":I
    :pswitch_1cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 887
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->onBiometricsAuthenticated(I)V

    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    goto/16 :goto_474

    .line 874
    .end local v0    # "_arg0":I
    :pswitch_1de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 879
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    goto/16 :goto_474

    .line 864
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 865
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->deleteToeknFromTrusted(Ljava/lang/String;)I

    move-result v1

    .line 867
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    goto/16 :goto_474

    .line 852
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 857
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    goto/16 :goto_474

    .line 840
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_21f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 842
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 843
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->createEncPkgDir(ILjava/lang/String;)I

    move-result v2

    .line 845
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    goto/16 :goto_474

    .line 830
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSensitive(Ljava/lang/String;)Z

    move-result v1

    .line 833
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 835
    goto/16 :goto_474

    .line 818
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 820
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setSensitive(ILjava/lang/String;)Z

    move-result v2

    .line 823
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 825
    goto/16 :goto_474

    .line 808
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 811
    .local v1, "_result":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 813
    goto/16 :goto_474

    .line 798
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :pswitch_273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 799
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->removeEngine(Ljava/lang/String;)I

    move-result v1

    .line 801
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    goto/16 :goto_474

    .line 784
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_286
    sget-object v0, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    .line 786
    .local v0, "_arg0":Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 791
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    goto/16 :goto_474

    .line 776
    .end local v0    # "_arg0":Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_2a5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getSupportedSDKVersion()D

    move-result-wide v0

    .line 777
    .local v0, "_result":D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 779
    goto/16 :goto_474

    .line 765
    .end local v0    # "_result":D
    :pswitch_2b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 768
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->disallow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 770
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    goto/16 :goto_474

    .line 753
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_2c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 755
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 756
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->allow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 758
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    goto/16 :goto_474

    .line 743
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_2df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 744
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->exists(Ljava/lang/String;)I

    move-result v1

    .line 746
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    goto/16 :goto_474

    .line 735
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_2f2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isLicensed()I

    move-result v0

    .line 736
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    goto/16 :goto_474

    .line 724
    .end local v0    # "_result":I
    :pswitch_2fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v1

    .line 727
    .local v1, "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result v2

    .line 729
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    goto/16 :goto_474

    .line 712
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    .end local v2    # "_result":I
    :pswitch_319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 714
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v1

    .line 715
    .restart local v1    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result v2

    .line 717
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    goto/16 :goto_474

    .line 702
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    .end local v2    # "_result":I
    :pswitch_334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->migrate(Ljava/lang/String;)I

    move-result v1

    .line 705
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    goto/16 :goto_474

    .line 688
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 690
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 695
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    goto/16 :goto_474

    .line 676
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 678
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 681
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    goto/16 :goto_474

    .line 666
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 667
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->lock(Ljava/lang/String;)I

    move-result v1

    .line 669
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    goto/16 :goto_474

    .line 654
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_38c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 656
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unlock(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 659
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    goto/16 :goto_474

    .line 644
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_3a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 645
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSdpSupportedSecureFolder(I)Z

    move-result v1

    .line 647
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 649
    goto/16 :goto_474

    .line 636
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3b6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSdpSupported()Z

    move-result v0

    .line 637
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 639
    goto/16 :goto_474

    .line 627
    .end local v0    # "_result":Z
    :pswitch_3c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSDPEnabled(I)Z

    move-result v1

    .line 630
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    goto/16 :goto_474

    .line 613
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 617
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 618
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->resetPasswordWithToken(Ljava/lang/String;[BI)Z

    move-result v3

    .line 620
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 622
    goto/16 :goto_474

    .line 603
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_3f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 604
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isResetPasswordTokenActive(I)Z

    move-result v1

    .line 606
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 608
    goto/16 :goto_474

    .line 593
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 594
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->clearResetPasswordToken(I)Z

    move-result v1

    .line 596
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 598
    goto :goto_474

    .line 581
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 583
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setResetPasswordToken([BI)Z

    move-result v2

    .line 586
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 588
    goto :goto_474

    .line 573
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_42b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getAvailableUserId()I

    move-result v0

    .line 574
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    goto :goto_474

    .line 566
    .end local v0    # "_result":I
    :pswitch_436
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getReservedUserIdForSystem()I

    move-result v0

    .line 567
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    goto :goto_474

    .line 559
    .end local v0    # "_result":I
    :pswitch_441
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->reserveUserIdForSystem()I

    move-result v0

    .line 560
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    goto :goto_474

    .line 552
    .end local v0    # "_result":I
    :pswitch_44c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isKnoxKeyInstallable()Z

    move-result v0

    .line 553
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 555
    goto :goto_474

    .line 545
    .end local v0    # "_result":Z
    :pswitch_457
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDeviceRootKeyInstalled()Z

    move-result v0

    .line 546
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 548
    goto :goto_474

    .line 539
    .end local v0    # "_result":Z
    :pswitch_462
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->systemReady()V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    goto :goto_474

    .line 532
    :pswitch_469
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDarSupported()Z

    move-result v0

    .line 533
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 535
    nop

    .line 1116
    .end local v0    # "_result":Z
    :goto_474
    return v11

    nop

    :pswitch_data_476
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_47c
    .packed-switch 0x1
        :pswitch_469
        :pswitch_462
        :pswitch_457
        :pswitch_44c
        :pswitch_441
        :pswitch_436
        :pswitch_42b
        :pswitch_415
        :pswitch_403
        :pswitch_3f0
        :pswitch_3d5
        :pswitch_3c2
        :pswitch_3b6
        :pswitch_3a3
        :pswitch_38c
        :pswitch_379
        :pswitch_362
        :pswitch_347
        :pswitch_334
        :pswitch_319
        :pswitch_2fe
        :pswitch_2f2
        :pswitch_2df
        :pswitch_2c8
        :pswitch_2b1
        :pswitch_2a5
        :pswitch_286
        :pswitch_273
        :pswitch_260
        :pswitch_249
        :pswitch_236
        :pswitch_21f
        :pswitch_208
        :pswitch_1f5
        :pswitch_1de
        :pswitch_1cf
        :pswitch_1c0
        :pswitch_1ac
        :pswitch_198
        :pswitch_185
        :pswitch_16e
        :pswitch_15b
        :pswitch_148
        :pswitch_135
        :pswitch_122
        :pswitch_10f
        :pswitch_fc
        :pswitch_e9
        :pswitch_d6
        :pswitch_ca
        :pswitch_a3
        :pswitch_8c
        :pswitch_61
        :pswitch_52
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method
