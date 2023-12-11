.class public abstract Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.super Landroid/os/Binder;
.source "ISemPersonaManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ISemPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ISemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_CMFALock:I = 0x3c

.field static final TRANSACTION_CMFAUnLock:I = 0x3d

.field static final TRANSACTION_addAppPackageNameToAllowList:I = 0x1d

.field static final TRANSACTION_appliedPasswordPolicy:I = 0x31

.field static final TRANSACTION_bindCoreServiceAsUser:I = 0x28

.field static final TRANSACTION_broadcastIntentThroughPersona:I = 0x18

.field static final TRANSACTION_clearAttributes:I = 0x21

.field static final TRANSACTION_getAdminComponentName:I = 0x1c

.field static final TRANSACTION_getAttributes:I = 0x20

.field static final TRANSACTION_getContainerName:I = 0x8

.field static final TRANSACTION_getContainerOrder:I = 0x15

.field static final TRANSACTION_getCustomResource:I = 0x22

.field static final TRANSACTION_getDualDARProfile:I = 0x2f

.field static final TRANSACTION_getECName:I = 0xa

.field static final TRANSACTION_getFocusedLauncherId:I = 0x1e

.field static final TRANSACTION_getFocusedUser:I = 0x2b

.field static final TRANSACTION_getFotaVersion:I = 0x19

.field static final TRANSACTION_getKnoxForesightService:I = 0x48

.field static final TRANSACTION_getKnoxIcon:I = 0x23

.field static final TRANSACTION_getMoveToKnoxMenuList:I = 0x2a

.field static final TRANSACTION_getPersonaCacheValue:I = 0x1a

.field static final TRANSACTION_getPersonaUserHasBeenShutdownBefore:I = 0x30

.field static final TRANSACTION_getPersonalModeName:I = 0xd

.field static final TRANSACTION_getProfileName:I = 0xb

.field static final TRANSACTION_getProfiles:I = 0x2

.field static final TRANSACTION_getRCPDataPolicy:I = 0x32

.field static final TRANSACTION_getRCPDataPolicyForUser:I = 0x33

.field static final TRANSACTION_getSecureFolderId:I = 0x6

.field static final TRANSACTION_getSecureFolderName:I = 0x7

.field static final TRANSACTION_getSecureFolderPolicy:I = 0x3a

.field static final TRANSACTION_getSeparatedAppsList:I = 0x11

.field static final TRANSACTION_getSeparationConfigfromCache:I = 0x3e

.field static final TRANSACTION_getUpdatedListWithAppSeparation:I = 0x13

.field static final TRANSACTION_getWorkspaceName:I = 0x9

.field static final TRANSACTION_hasLicensePermission:I = 0x47

.field static final TRANSACTION_hideMultiWindows:I = 0x27

.field static final TRANSACTION_isAppSeparationPresent:I = 0x12

.field static final TRANSACTION_isContainerCorePackageUID:I = 0x41

.field static final TRANSACTION_isContainerService:I = 0x45

.field static final TRANSACTION_isExternalStorageEnabled:I = 0x16

.field static final TRANSACTION_isFOTAUpgrade:I = 0x1

.field static final TRANSACTION_isFotaUpgradeVersionChanged:I = 0x5

.field static final TRANSACTION_isInSeparatedAppsOnly:I = 0x10

.field static final TRANSACTION_isKnoxProfileActivePasswordSufficientForParent:I = 0x2c

.field static final TRANSACTION_isKnoxWindowExist:I = 0x14

.field static final TRANSACTION_isMoveFilesToContainerAllowed:I = 0x36

.field static final TRANSACTION_isMoveFilesToOwnerAllowed:I = 0x37

.field static final TRANSACTION_isPasswordSufficientAfterKnoxProfileUnification:I = 0x2d

.field static final TRANSACTION_isPossibleAddAppsToContainer:I = 0xf

.field static final TRANSACTION_isShareClipboardDataToContainerAllowed:I = 0x39

.field static final TRANSACTION_isShareClipboardDataToOwnerAllowed:I = 0x35

.field static final TRANSACTION_logDpmsKA:I = 0x38

.field static final TRANSACTION_postPwdChangeNotificationForDeviceOwner:I = 0x44

.field static final TRANSACTION_refreshLockTimer:I = 0x25

.field static final TRANSACTION_registerSystemPersonaObserver:I = 0x3

.field static final TRANSACTION_sendKnoxForesightBroadcast:I = 0x46

.field static final TRANSACTION_sendProxyMessage:I = 0x26

.field static final TRANSACTION_sendRequestKeyStatus:I = 0x29

.field static final TRANSACTION_setAppSeparationDefaultPolicy:I = 0x3f

.field static final TRANSACTION_setAttributes:I = 0x1f

.field static final TRANSACTION_setDualDARProfile:I = 0x2e

.field static final TRANSACTION_setFocusedLauncherId:I = 0x4

.field static final TRANSACTION_setPackageSettingInstalled:I = 0x24

.field static final TRANSACTION_setPersonalModeName:I = 0xe

.field static final TRANSACTION_setProfileName:I = 0xc

.field static final TRANSACTION_setRCPDataPolicy:I = 0x34

.field static final TRANSACTION_setSecureFolderPolicy:I = 0x3b

.field static final TRANSACTION_startActivityThroughPersona:I = 0x17

.field static final TRANSACTION_startCountrySelectionActivity:I = 0x42

.field static final TRANSACTION_startTermsActivity:I = 0x43

.field static final TRANSACTION_updatePersonaCache:I = 0x1b

.field static final TRANSACTION_updateProfileActivityTimeFromKnox:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 313
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 314
    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 322
    if-nez p0, :cond_4

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_4
    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 326
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_14

    .line 327
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v1

    .line 329
    :cond_14
    new-instance v1, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 338
    packed-switch p0, :pswitch_data_11c

    .line 630
    const/4 v0, 0x0

    return-object v0

    .line 626
    :pswitch_5
    const-string/jumbo v0, "getKnoxForesightService"

    return-object v0

    .line 622
    :pswitch_9
    const-string/jumbo v0, "hasLicensePermission"

    return-object v0

    .line 618
    :pswitch_d
    const-string/jumbo v0, "sendKnoxForesightBroadcast"

    return-object v0

    .line 614
    :pswitch_11
    const-string/jumbo v0, "isContainerService"

    return-object v0

    .line 610
    :pswitch_15
    const-string/jumbo v0, "postPwdChangeNotificationForDeviceOwner"

    return-object v0

    .line 606
    :pswitch_19
    const-string/jumbo v0, "startTermsActivity"

    return-object v0

    .line 602
    :pswitch_1d
    const-string/jumbo v0, "startCountrySelectionActivity"

    return-object v0

    .line 598
    :pswitch_21
    const-string/jumbo v0, "isContainerCorePackageUID"

    return-object v0

    .line 594
    :pswitch_25
    const-string/jumbo v0, "updateProfileActivityTimeFromKnox"

    return-object v0

    .line 590
    :pswitch_29
    const-string/jumbo v0, "setAppSeparationDefaultPolicy"

    return-object v0

    .line 586
    :pswitch_2d
    const-string/jumbo v0, "getSeparationConfigfromCache"

    return-object v0

    .line 582
    :pswitch_31
    const-string v0, "CMFAUnLock"

    return-object v0

    .line 578
    :pswitch_34
    const-string v0, "CMFALock"

    return-object v0

    .line 574
    :pswitch_37
    const-string/jumbo v0, "setSecureFolderPolicy"

    return-object v0

    .line 570
    :pswitch_3b
    const-string/jumbo v0, "getSecureFolderPolicy"

    return-object v0

    .line 566
    :pswitch_3f
    const-string/jumbo v0, "isShareClipboardDataToContainerAllowed"

    return-object v0

    .line 562
    :pswitch_43
    const-string/jumbo v0, "logDpmsKA"

    return-object v0

    .line 558
    :pswitch_47
    const-string/jumbo v0, "isMoveFilesToOwnerAllowed"

    return-object v0

    .line 554
    :pswitch_4b
    const-string/jumbo v0, "isMoveFilesToContainerAllowed"

    return-object v0

    .line 550
    :pswitch_4f
    const-string/jumbo v0, "isShareClipboardDataToOwnerAllowed"

    return-object v0

    .line 546
    :pswitch_53
    const-string/jumbo v0, "setRCPDataPolicy"

    return-object v0

    .line 542
    :pswitch_57
    const-string/jumbo v0, "getRCPDataPolicyForUser"

    return-object v0

    .line 538
    :pswitch_5b
    const-string/jumbo v0, "getRCPDataPolicy"

    return-object v0

    .line 534
    :pswitch_5f
    const-string v0, "appliedPasswordPolicy"

    return-object v0

    .line 530
    :pswitch_62
    const-string/jumbo v0, "getPersonaUserHasBeenShutdownBefore"

    return-object v0

    .line 526
    :pswitch_66
    const-string/jumbo v0, "getDualDARProfile"

    return-object v0

    .line 522
    :pswitch_6a
    const-string/jumbo v0, "setDualDARProfile"

    return-object v0

    .line 518
    :pswitch_6e
    const-string/jumbo v0, "isPasswordSufficientAfterKnoxProfileUnification"

    return-object v0

    .line 514
    :pswitch_72
    const-string/jumbo v0, "isKnoxProfileActivePasswordSufficientForParent"

    return-object v0

    .line 510
    :pswitch_76
    const-string/jumbo v0, "getFocusedUser"

    return-object v0

    .line 506
    :pswitch_7a
    const-string/jumbo v0, "getMoveToKnoxMenuList"

    return-object v0

    .line 502
    :pswitch_7e
    const-string/jumbo v0, "sendRequestKeyStatus"

    return-object v0

    .line 498
    :pswitch_82
    const-string v0, "bindCoreServiceAsUser"

    return-object v0

    .line 494
    :pswitch_85
    const-string/jumbo v0, "hideMultiWindows"

    return-object v0

    .line 490
    :pswitch_89
    const-string/jumbo v0, "sendProxyMessage"

    return-object v0

    .line 486
    :pswitch_8d
    const-string/jumbo v0, "refreshLockTimer"

    return-object v0

    .line 482
    :pswitch_91
    const-string/jumbo v0, "setPackageSettingInstalled"

    return-object v0

    .line 478
    :pswitch_95
    const-string/jumbo v0, "getKnoxIcon"

    return-object v0

    .line 474
    :pswitch_99
    const-string/jumbo v0, "getCustomResource"

    return-object v0

    .line 470
    :pswitch_9d
    const-string v0, "clearAttributes"

    return-object v0

    .line 466
    :pswitch_a0
    const-string v0, "getAttributes"

    return-object v0

    .line 462
    :pswitch_a3
    const-string/jumbo v0, "setAttributes"

    return-object v0

    .line 458
    :pswitch_a7
    const-string/jumbo v0, "getFocusedLauncherId"

    return-object v0

    .line 454
    :pswitch_ab
    const-string v0, "addAppPackageNameToAllowList"

    return-object v0

    .line 450
    :pswitch_ae
    const-string v0, "getAdminComponentName"

    return-object v0

    .line 446
    :pswitch_b1
    const-string/jumbo v0, "updatePersonaCache"

    return-object v0

    .line 442
    :pswitch_b5
    const-string/jumbo v0, "getPersonaCacheValue"

    return-object v0

    .line 438
    :pswitch_b9
    const-string/jumbo v0, "getFotaVersion"

    return-object v0

    .line 434
    :pswitch_bd
    const-string v0, "broadcastIntentThroughPersona"

    return-object v0

    .line 430
    :pswitch_c0
    const-string/jumbo v0, "startActivityThroughPersona"

    return-object v0

    .line 426
    :pswitch_c4
    const-string/jumbo v0, "isExternalStorageEnabled"

    return-object v0

    .line 422
    :pswitch_c8
    const-string/jumbo v0, "getContainerOrder"

    return-object v0

    .line 418
    :pswitch_cc
    const-string/jumbo v0, "isKnoxWindowExist"

    return-object v0

    .line 414
    :pswitch_d0
    const-string/jumbo v0, "getUpdatedListWithAppSeparation"

    return-object v0

    .line 410
    :pswitch_d4
    const-string/jumbo v0, "isAppSeparationPresent"

    return-object v0

    .line 406
    :pswitch_d8
    const-string/jumbo v0, "getSeparatedAppsList"

    return-object v0

    .line 402
    :pswitch_dc
    const-string/jumbo v0, "isInSeparatedAppsOnly"

    return-object v0

    .line 398
    :pswitch_e0
    const-string/jumbo v0, "isPossibleAddAppsToContainer"

    return-object v0

    .line 394
    :pswitch_e4
    const-string/jumbo v0, "setPersonalModeName"

    return-object v0

    .line 390
    :pswitch_e8
    const-string/jumbo v0, "getPersonalModeName"

    return-object v0

    .line 386
    :pswitch_ec
    const-string/jumbo v0, "setProfileName"

    return-object v0

    .line 382
    :pswitch_f0
    const-string/jumbo v0, "getProfileName"

    return-object v0

    .line 378
    :pswitch_f4
    const-string/jumbo v0, "getECName"

    return-object v0

    .line 374
    :pswitch_f8
    const-string/jumbo v0, "getWorkspaceName"

    return-object v0

    .line 370
    :pswitch_fc
    const-string/jumbo v0, "getContainerName"

    return-object v0

    .line 366
    :pswitch_100
    const-string/jumbo v0, "getSecureFolderName"

    return-object v0

    .line 362
    :pswitch_104
    const-string/jumbo v0, "getSecureFolderId"

    return-object v0

    .line 358
    :pswitch_108
    const-string/jumbo v0, "isFotaUpgradeVersionChanged"

    return-object v0

    .line 354
    :pswitch_10c
    const-string/jumbo v0, "setFocusedLauncherId"

    return-object v0

    .line 350
    :pswitch_110
    const-string/jumbo v0, "registerSystemPersonaObserver"

    return-object v0

    .line 346
    :pswitch_114
    const-string/jumbo v0, "getProfiles"

    return-object v0

    .line 342
    :pswitch_118
    const-string/jumbo v0, "isFOTAUpgrade"

    return-object v0

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_118
        :pswitch_114
        :pswitch_110
        :pswitch_10c
        :pswitch_108
        :pswitch_104
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_e0
        :pswitch_dc
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_34
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

    .line 333
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2788
    const/16 v0, 0x47

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 637
    invoke-static {p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.android.knox.ISemPersonaManager"

    .line 642
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 643
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    :cond_15
    packed-switch v9, :pswitch_data_5b6

    .line 653
    packed-switch v9, :pswitch_data_5bc

    .line 1395
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 649
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    return v13

    .line 1388
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;

    move-result-object v0

    .line 1389
    .local v0, "_result":Lcom/samsung/android/knox/IBasicCommand;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1391
    goto/16 :goto_5b4

    .line 1377
    .end local v0    # "_result":Lcom/samsung/android/knox/IBasicCommand;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1379
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->hasLicensePermission(ILjava/lang/String;)Z

    move-result v2

    .line 1382
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1384
    goto/16 :goto_5b4

    .line 1367
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_47
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1368
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1369
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendKnoxForesightBroadcast(Landroid/content/Intent;)Z

    move-result v1

    .line 1370
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1372
    goto/16 :goto_5b4

    .line 1357
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Z
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1358
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isContainerService(I)Z

    move-result v1

    .line 1360
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1362
    goto/16 :goto_5b4

    .line 1348
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1349
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->postPwdChangeNotificationForDeviceOwner(I)V

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    goto/16 :goto_5b4

    .line 1341
    .end local v0    # "_arg0":I
    :pswitch_80
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startTermsActivity()V

    .line 1342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    goto/16 :goto_5b4

    .line 1333
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1334
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1335
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startCountrySelectionActivity(Z)V

    .line 1336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    goto/16 :goto_5b4

    .line 1323
    .end local v0    # "_arg0":Z
    :pswitch_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1324
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isContainerCorePackageUID(I)Z

    move-result v1

    .line 1326
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1328
    goto/16 :goto_5b4

    .line 1312
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1314
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1315
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updateProfileActivityTimeFromKnox(IJ)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    goto/16 :goto_5b4

    .line 1303
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1304
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAppSeparationDefaultPolicy(I)V

    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    goto/16 :goto_5b4

    .line 1295
    .end local v0    # "_arg0":I
    :pswitch_cc
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    .line 1296
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1298
    goto/16 :goto_5b4

    .line 1287
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1288
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->CMFAUnLock(I)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    goto/16 :goto_5b4

    .line 1278
    .end local v0    # "_arg0":I
    :pswitch_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1279
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->CMFALock(I)V

    .line 1281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    goto/16 :goto_5b4

    .line 1264
    .end local v0    # "_arg0":I
    :pswitch_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1268
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1269
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1270
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v3

    .line 1271
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1273
    goto/16 :goto_5b4

    .line 1252
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1255
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1257
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1259
    goto/16 :goto_5b4

    .line 1242
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1243
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v1

    .line 1245
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1247
    goto/16 :goto_5b4

    .line 1233
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_13b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1234
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->logDpmsKA(Landroid/os/Bundle;)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    goto/16 :goto_5b4

    .line 1223
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_14e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1224
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    .line 1226
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1228
    goto/16 :goto_5b4

    .line 1213
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1214
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    .line 1216
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1218
    goto/16 :goto_5b4

    .line 1203
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1204
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v1

    .line 1206
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1208
    goto/16 :goto_5b4

    .line 1189
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1196
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1198
    goto/16 :goto_5b4

    .line 1175
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1177
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1180
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1182
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1184
    goto/16 :goto_5b4

    .line 1163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1170
    goto/16 :goto_5b4

    .line 1153
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1154
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->appliedPasswordPolicy(I)Z

    move-result v1

    .line 1156
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1158
    goto/16 :goto_5b4

    .line 1143
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1144
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result v1

    .line 1146
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1148
    goto/16 :goto_5b4

    .line 1135
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1fa
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object v0

    .line 1136
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1138
    goto/16 :goto_5b4

    .line 1126
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_206
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1127
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setDualDARProfile(Landroid/os/Bundle;)I

    move-result v1

    .line 1129
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    goto/16 :goto_5b4

    .line 1116
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":I
    :pswitch_21d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1117
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result v1

    .line 1119
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1121
    goto/16 :goto_5b4

    .line 1106
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1107
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result v1

    .line 1109
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1111
    goto/16 :goto_5b4

    .line 1098
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_243
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedUser()I

    move-result v0

    .line 1099
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    goto/16 :goto_5b4

    .line 1089
    .end local v0    # "_result":I
    :pswitch_24f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1090
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1091
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object v1

    .line 1092
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1094
    goto/16 :goto_5b4

    .line 1080
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1081
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendRequestKeyStatus(I)V

    .line 1083
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    goto/16 :goto_5b4

    .line 1058
    .end local v0    # "_arg0":I
    :pswitch_271
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/ComponentName;

    .line 1060
    .local v14, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v15

    .line 1062
    .local v15, "_arg1":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 1064
    .local v16, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 1066
    .local v17, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v18

    .line 1068
    .local v18, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1070
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1071
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0

    .line 1073
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1075
    goto/16 :goto_5b4

    .line 1049
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":Landroid/content/ComponentName;
    .end local v15    # "_arg1":Landroid/app/IApplicationThread;
    .end local v16    # "_arg2":Landroid/os/IBinder;
    .end local v17    # "_arg3":Landroid/content/Intent;
    .end local v18    # "_arg4":Landroid/app/IServiceConnection;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_2bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1050
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1051
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->hideMultiWindows(I)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    goto/16 :goto_5b4

    .line 1035
    .end local v0    # "_arg0":I
    :pswitch_2cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1040
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1042
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1044
    goto/16 :goto_5b4

    .line 1026
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_2eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1027
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->refreshLockTimer(I)V

    .line 1029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    goto/16 :goto_5b4

    .line 1012
    .end local v0    # "_arg0":I
    :pswitch_2fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1016
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1017
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v3

    .line 1019
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1021
    goto/16 :goto_5b4

    .line 998
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1003
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v3

    .line 1005
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1007
    goto/16 :goto_5b4

    .line 986
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[B
    :pswitch_330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 988
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 989
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 991
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 993
    goto/16 :goto_5b4

    .line 974
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 976
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 977
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->clearAttributes(II)Z

    move-result v2

    .line 979
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 981
    goto/16 :goto_5b4

    .line 964
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_35e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 965
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAttributes(I)I

    move-result v1

    .line 967
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    goto/16 :goto_5b4

    .line 952
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 954
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 955
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAttributes(II)Z

    move-result v2

    .line 957
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 959
    goto/16 :goto_5b4

    .line 944
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_388
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedLauncherId()I

    move-result v0

    .line 945
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    goto/16 :goto_5b4

    .line 934
    .end local v0    # "_result":I
    :pswitch_394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 936
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 937
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->addAppPackageNameToAllowList(ILjava/util/List;)V

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    goto/16 :goto_5b4

    .line 924
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 925
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 927
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 929
    goto/16 :goto_5b4

    .line 912
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_3ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 917
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 919
    goto/16 :goto_5b4

    .line 902
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 903
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    goto/16 :goto_5b4

    .line 894
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3e4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFotaVersion()I

    move-result v0

    .line 895
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    goto/16 :goto_5b4

    .line 883
    .end local v0    # "_result":I
    :pswitch_3f0
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 885
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 886
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z

    move-result v2

    .line 888
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 890
    goto/16 :goto_5b4

    .line 873
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_40b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 874
    .restart local v0    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result v1

    .line 876
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 878
    goto/16 :goto_5b4

    .line 863
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Z
    :pswitch_422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 864
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isExternalStorageEnabled(I)Z

    move-result v1

    .line 866
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 868
    goto/16 :goto_5b4

    .line 853
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerOrder(I)I

    move-result v1

    .line 856
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    goto/16 :goto_5b4

    .line 839
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 841
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 843
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxWindowExist(III)Z

    move-result v3

    .line 846
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 848
    goto/16 :goto_5b4

    .line 829
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_463
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 830
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 832
    .local v1, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 834
    goto/16 :goto_5b4

    .line 821
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_478
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isAppSeparationPresent()Z

    move-result v0

    .line 822
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 824
    goto/16 :goto_5b4

    .line 814
    .end local v0    # "_result":Z
    :pswitch_484
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSeparatedAppsList()Ljava/util/List;

    move-result-object v0

    .line 815
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 817
    goto/16 :goto_5b4

    .line 805
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isInSeparatedAppsOnly(Ljava/lang/String;)Z

    move-result v1

    .line 808
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 810
    goto/16 :goto_5b4

    .line 793
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 795
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result v2

    .line 798
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 800
    goto/16 :goto_5b4

    .line 781
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_4ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 783
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPersonalModeName(ILjava/lang/String;)Z

    move-result v2

    .line 786
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 788
    goto/16 :goto_5b4

    .line 771
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_4d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 772
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    goto/16 :goto_5b4

    .line 759
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 761
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setProfileName(ILjava/lang/String;)Z

    move-result v2

    .line 764
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 766
    goto/16 :goto_5b4

    .line 749
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_4fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 750
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 754
    goto/16 :goto_5b4

    .line 739
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_50e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 740
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getECName(I)Ljava/lang/String;

    move-result-object v1

    .line 742
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    goto/16 :goto_5b4

    .line 727
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_521
    sget-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 729
    .local v0, "_arg0":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 730
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    goto/16 :goto_5b4

    .line 717
    .end local v0    # "_arg0":Landroid/content/pm/UserInfo;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_53c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 718
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerName(I)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    goto :goto_5b4

    .line 709
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_54e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderName()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    goto :goto_5b4

    .line 702
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_559
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderId()I

    move-result v0

    .line 703
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    goto :goto_5b4

    .line 695
    .end local v0    # "_result":I
    :pswitch_564
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFotaUpgradeVersionChanged()Z

    move-result v0

    .line 696
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 698
    goto :goto_5b4

    .line 687
    .end local v0    # "_result":Z
    :pswitch_56f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 688
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFocusedLauncherId(I)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    goto :goto_5b4

    .line 677
    .end local v0    # "_arg0":I
    :pswitch_57d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v0

    .line 678
    .local v0, "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v1

    .line 680
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 682
    goto :goto_5b4

    .line 665
    .end local v0    # "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    .end local v1    # "_result":Z
    :pswitch_593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 667
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 668
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 670
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 672
    goto :goto_5b4

    .line 657
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_5a9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFOTAUpgrade()Z

    move-result v0

    .line 658
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 660
    nop

    .line 1398
    .end local v0    # "_result":Z
    :goto_5b4
    return v13

    nop

    :pswitch_data_5b6
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_5bc
    .packed-switch 0x1
        :pswitch_5a9
        :pswitch_593
        :pswitch_57d
        :pswitch_56f
        :pswitch_564
        :pswitch_559
        :pswitch_54e
        :pswitch_53c
        :pswitch_521
        :pswitch_50e
        :pswitch_4fb
        :pswitch_4e4
        :pswitch_4d1
        :pswitch_4ba
        :pswitch_4a3
        :pswitch_490
        :pswitch_484
        :pswitch_478
        :pswitch_463
        :pswitch_448
        :pswitch_435
        :pswitch_422
        :pswitch_40b
        :pswitch_3f0
        :pswitch_3e4
        :pswitch_3d1
        :pswitch_3ba
        :pswitch_3a7
        :pswitch_394
        :pswitch_388
        :pswitch_371
        :pswitch_35e
        :pswitch_347
        :pswitch_330
        :pswitch_315
        :pswitch_2fa
        :pswitch_2eb
        :pswitch_2cc
        :pswitch_2bd
        :pswitch_271
        :pswitch_262
        :pswitch_24f
        :pswitch_243
        :pswitch_230
        :pswitch_21d
        :pswitch_206
        :pswitch_1fa
        :pswitch_1e7
        :pswitch_1d4
        :pswitch_1bd
        :pswitch_1a2
        :pswitch_187
        :pswitch_174
        :pswitch_161
        :pswitch_14e
        :pswitch_13b
        :pswitch_128
        :pswitch_111
        :pswitch_f6
        :pswitch_e7
        :pswitch_d8
        :pswitch_cc
        :pswitch_bd
        :pswitch_aa
        :pswitch_97
        :pswitch_88
        :pswitch_80
        :pswitch_71
        :pswitch_5e
        :pswitch_47
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
