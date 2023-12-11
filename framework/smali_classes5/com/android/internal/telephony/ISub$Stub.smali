.class public abstract Lcom/android/internal/telephony/ISub$Stub;
.super Landroid/os/Binder;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISub"

.field static final TRANSACTION_addSubInfo:I = 0xb

.field static final TRANSACTION_addSubscriptionsIntoGroup:I = 0x17

.field static final TRANSACTION_canDisablePhysicalSubscription:I = 0x2a

.field static final TRANSACTION_createSubscriptionGroup:I = 0x12

.field static final TRANSACTION_getAccessibleSubscriptionInfoList:I = 0x9

.field static final TRANSACTION_getActiveDataSubscriptionId:I = 0x29

.field static final TRANSACTION_getActiveSubIdList:I = 0x23

.field static final TRANSACTION_getActiveSubInfoCount:I = 0x6

.field static final TRANSACTION_getActiveSubInfoCountMax:I = 0x7

.field static final TRANSACTION_getActiveSubscriptionInfo:I = 0x2

.field static final TRANSACTION_getActiveSubscriptionInfoForIccId:I = 0x3

.field static final TRANSACTION_getActiveSubscriptionInfoForSimSlotIndex:I = 0x4

.field static final TRANSACTION_getActiveSubscriptionInfoList:I = 0x5

.field static final TRANSACTION_getAllSubInfoList:I = 0x1

.field static final TRANSACTION_getAvailableSubscriptionInfoList:I = 0x8

.field static final TRANSACTION_getDefaultDataSubId:I = 0x1d

.field static final TRANSACTION_getDefaultSmsSubId:I = 0x21

.field static final TRANSACTION_getDefaultSubId:I = 0x1b

.field static final TRANSACTION_getDefaultVoiceSubId:I = 0x1f

.field static final TRANSACTION_getEnabledSubscriptionId:I = 0x27

.field static final TRANSACTION_getOpportunisticSubscriptions:I = 0x15

.field static final TRANSACTION_getPhoneId:I = 0x1c

.field static final TRANSACTION_getPhoneNumber:I = 0x2e

.field static final TRANSACTION_getPhoneNumberFromFirstAvailableSource:I = 0x2f

.field static final TRANSACTION_getPreferredDataSubscriptionId:I = 0x14

.field static final TRANSACTION_getSlotIndex:I = 0x19

.field static final TRANSACTION_getSubId:I = 0x1a

.field static final TRANSACTION_getSubscriptionInfoListAssociatedWithUser:I = 0x35

.field static final TRANSACTION_getSubscriptionProperty:I = 0x25

.field static final TRANSACTION_getSubscriptionUserHandle:I = 0x33

.field static final TRANSACTION_getSubscriptionsInGroup:I = 0x18

.field static final TRANSACTION_isActiveSubId:I = 0x28

.field static final TRANSACTION_isSubscriptionAssociatedWithUser:I = 0x34

.field static final TRANSACTION_isSubscriptionEnabled:I = 0x26

.field static final TRANSACTION_removeSubInfo:I = 0xc

.field static final TRANSACTION_removeSubscriptionsFromGroup:I = 0x16

.field static final TRANSACTION_requestEmbeddedSubscriptionInfoListRefresh:I = 0xa

.field static final TRANSACTION_restoreAllSimSpecificSettingsFromBackup:I = 0x36

.field static final TRANSACTION_setDataRoaming:I = 0x10

.field static final TRANSACTION_setDefaultDataSubId:I = 0x1e

.field static final TRANSACTION_setDefaultSmsSubId:I = 0x22

.field static final TRANSACTION_setDefaultVoiceSubId:I = 0x20

.field static final TRANSACTION_setDeviceToDeviceStatusSharing:I = 0x2c

.field static final TRANSACTION_setDeviceToDeviceStatusSharingContacts:I = 0x2d

.field static final TRANSACTION_setDisplayNameUsingSrc:I = 0xe

.field static final TRANSACTION_setDisplayNumber:I = 0xf

.field static final TRANSACTION_setIconTint:I = 0xd

.field static final TRANSACTION_setOpportunistic:I = 0x11

.field static final TRANSACTION_setPhoneNumber:I = 0x30

.field static final TRANSACTION_setPreferredDataSubscriptionId:I = 0x13

.field static final TRANSACTION_setSubscriptionProperty:I = 0x24

.field static final TRANSACTION_setSubscriptionUserHandle:I = 0x32

.field static final TRANSACTION_setUiccApplicationsEnabled:I = 0x2b

.field static final TRANSACTION_setUsageSetting:I = 0x31


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 439
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 440
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 448
    if-nez p0, :cond_4

    .line 449
    const/4 v0, 0x0

    return-object v0

    .line 451
    :cond_4
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 452
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_14

    .line 453
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISub;

    return-object v1

    .line 455
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ISub$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 464
    packed-switch p0, :pswitch_data_d0

    .line 684
    const/4 v0, 0x0

    return-object v0

    .line 680
    :pswitch_5
    const-string/jumbo v0, "restoreAllSimSpecificSettingsFromBackup"

    return-object v0

    .line 676
    :pswitch_9
    const-string/jumbo v0, "getSubscriptionInfoListAssociatedWithUser"

    return-object v0

    .line 672
    :pswitch_d
    const-string/jumbo v0, "isSubscriptionAssociatedWithUser"

    return-object v0

    .line 668
    :pswitch_11
    const-string/jumbo v0, "getSubscriptionUserHandle"

    return-object v0

    .line 664
    :pswitch_15
    const-string/jumbo v0, "setSubscriptionUserHandle"

    return-object v0

    .line 660
    :pswitch_19
    const-string/jumbo v0, "setUsageSetting"

    return-object v0

    .line 656
    :pswitch_1d
    const-string/jumbo v0, "setPhoneNumber"

    return-object v0

    .line 652
    :pswitch_21
    const-string/jumbo v0, "getPhoneNumberFromFirstAvailableSource"

    return-object v0

    .line 648
    :pswitch_25
    const-string/jumbo v0, "getPhoneNumber"

    return-object v0

    .line 644
    :pswitch_29
    const-string/jumbo v0, "setDeviceToDeviceStatusSharingContacts"

    return-object v0

    .line 640
    :pswitch_2d
    const-string/jumbo v0, "setDeviceToDeviceStatusSharing"

    return-object v0

    .line 636
    :pswitch_31
    const-string/jumbo v0, "setUiccApplicationsEnabled"

    return-object v0

    .line 632
    :pswitch_35
    const-string v0, "canDisablePhysicalSubscription"

    return-object v0

    .line 628
    :pswitch_38
    const-string v0, "getActiveDataSubscriptionId"

    return-object v0

    .line 624
    :pswitch_3b
    const-string/jumbo v0, "isActiveSubId"

    return-object v0

    .line 620
    :pswitch_3f
    const-string/jumbo v0, "getEnabledSubscriptionId"

    return-object v0

    .line 616
    :pswitch_43
    const-string/jumbo v0, "isSubscriptionEnabled"

    return-object v0

    .line 612
    :pswitch_47
    const-string/jumbo v0, "getSubscriptionProperty"

    return-object v0

    .line 608
    :pswitch_4b
    const-string/jumbo v0, "setSubscriptionProperty"

    return-object v0

    .line 604
    :pswitch_4f
    const-string v0, "getActiveSubIdList"

    return-object v0

    .line 600
    :pswitch_52
    const-string/jumbo v0, "setDefaultSmsSubId"

    return-object v0

    .line 596
    :pswitch_56
    const-string/jumbo v0, "getDefaultSmsSubId"

    return-object v0

    .line 592
    :pswitch_5a
    const-string/jumbo v0, "setDefaultVoiceSubId"

    return-object v0

    .line 588
    :pswitch_5e
    const-string/jumbo v0, "getDefaultVoiceSubId"

    return-object v0

    .line 584
    :pswitch_62
    const-string/jumbo v0, "setDefaultDataSubId"

    return-object v0

    .line 580
    :pswitch_66
    const-string/jumbo v0, "getDefaultDataSubId"

    return-object v0

    .line 576
    :pswitch_6a
    const-string/jumbo v0, "getPhoneId"

    return-object v0

    .line 572
    :pswitch_6e
    const-string/jumbo v0, "getDefaultSubId"

    return-object v0

    .line 568
    :pswitch_72
    const-string/jumbo v0, "getSubId"

    return-object v0

    .line 564
    :pswitch_76
    const-string/jumbo v0, "getSlotIndex"

    return-object v0

    .line 560
    :pswitch_7a
    const-string/jumbo v0, "getSubscriptionsInGroup"

    return-object v0

    .line 556
    :pswitch_7e
    const-string v0, "addSubscriptionsIntoGroup"

    return-object v0

    .line 552
    :pswitch_81
    const-string/jumbo v0, "removeSubscriptionsFromGroup"

    return-object v0

    .line 548
    :pswitch_85
    const-string/jumbo v0, "getOpportunisticSubscriptions"

    return-object v0

    .line 544
    :pswitch_89
    const-string/jumbo v0, "getPreferredDataSubscriptionId"

    return-object v0

    .line 540
    :pswitch_8d
    const-string/jumbo v0, "setPreferredDataSubscriptionId"

    return-object v0

    .line 536
    :pswitch_91
    const-string v0, "createSubscriptionGroup"

    return-object v0

    .line 532
    :pswitch_94
    const-string/jumbo v0, "setOpportunistic"

    return-object v0

    .line 528
    :pswitch_98
    const-string/jumbo v0, "setDataRoaming"

    return-object v0

    .line 524
    :pswitch_9c
    const-string/jumbo v0, "setDisplayNumber"

    return-object v0

    .line 520
    :pswitch_a0
    const-string/jumbo v0, "setDisplayNameUsingSrc"

    return-object v0

    .line 516
    :pswitch_a4
    const-string/jumbo v0, "setIconTint"

    return-object v0

    .line 512
    :pswitch_a8
    const-string/jumbo v0, "removeSubInfo"

    return-object v0

    .line 508
    :pswitch_ac
    const-string v0, "addSubInfo"

    return-object v0

    .line 504
    :pswitch_af
    const-string/jumbo v0, "requestEmbeddedSubscriptionInfoListRefresh"

    return-object v0

    .line 500
    :pswitch_b3
    const-string v0, "getAccessibleSubscriptionInfoList"

    return-object v0

    .line 496
    :pswitch_b6
    const-string/jumbo v0, "getAvailableSubscriptionInfoList"

    return-object v0

    .line 492
    :pswitch_ba
    const-string v0, "getActiveSubInfoCountMax"

    return-object v0

    .line 488
    :pswitch_bd
    const-string v0, "getActiveSubInfoCount"

    return-object v0

    .line 484
    :pswitch_c0
    const-string v0, "getActiveSubscriptionInfoList"

    return-object v0

    .line 480
    :pswitch_c3
    const-string v0, "getActiveSubscriptionInfoForSimSlotIndex"

    return-object v0

    .line 476
    :pswitch_c6
    const-string v0, "getActiveSubscriptionInfoForIccId"

    return-object v0

    .line 472
    :pswitch_c9
    const-string v0, "getActiveSubscriptionInfo"

    return-object v0

    .line 468
    :pswitch_cc
    const-string v0, "getAllSubInfoList"

    return-object v0

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b6
        :pswitch_b3
        :pswitch_af
        :pswitch_ac
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
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
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
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

    .line 459
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2598
    const/16 v0, 0x35

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 691
    invoke-static {p1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 695
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.telephony.ISub"

    .line 696
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 697
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    :cond_15
    packed-switch v7, :pswitch_data_4b8

    .line 707
    packed-switch v7, :pswitch_data_4be

    .line 1323
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 703
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    return v11

    .line 1315
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1316
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1317
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->restoreAllSimSpecificSettingsFromBackup([B)V

    .line 1318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    goto/16 :goto_4b6

    .line 1305
    .end local v0    # "_arg0":[B
    :pswitch_33
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 1306
    .local v0, "_arg0":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1307
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 1308
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1310
    goto/16 :goto_4b6

    .line 1293
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1295
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1296
    .local v1, "_arg1":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z

    move-result v2

    .line 1298
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1300
    goto/16 :goto_4b6

    .line 1283
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/UserHandle;
    .end local v2    # "_result":Z
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1284
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1285
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1286
    .local v1, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1288
    goto/16 :goto_4b6

    .line 1271
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/UserHandle;
    :pswitch_78
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 1273
    .local v0, "_arg0":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1274
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionUserHandle(Landroid/os/UserHandle;I)I

    move-result v2

    .line 1276
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    goto/16 :goto_4b6

    .line 1257
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1259
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1261
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1262
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1263
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setUsageSetting(IILjava/lang/String;)I

    move-result v3

    .line 1264
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    goto/16 :goto_4b6

    .line 1240
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1242
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1244
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1246
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1248
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1249
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISub$Stub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    goto/16 :goto_4b6

    .line 1226
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1228
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1230
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1233
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1235
    goto/16 :goto_4b6

    .line 1210
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1212
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1214
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1216
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1217
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1219
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1221
    goto/16 :goto_4b6

    .line 1198
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_10f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1201
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v2

    .line 1203
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    goto/16 :goto_4b6

    .line 1186
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1188
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1189
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharing(II)I

    move-result v2

    .line 1191
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    goto/16 :goto_4b6

    .line 1175
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_13d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1177
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1178
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1179
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setUiccApplicationsEnabled(ZI)V

    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    goto/16 :goto_4b6

    .line 1167
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_150
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->canDisablePhysicalSubscription()Z

    move-result v0

    .line 1168
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1170
    goto/16 :goto_4b6

    .line 1160
    .end local v0    # "_result":Z
    :pswitch_15c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveDataSubscriptionId()I

    move-result v0

    .line 1161
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    goto/16 :goto_4b6

    .line 1147
    .end local v0    # "_result":I
    :pswitch_168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1149
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1151
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1152
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1154
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1156
    goto/16 :goto_4b6

    .line 1137
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1138
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getEnabledSubscriptionId(I)I

    move-result v1

    .line 1140
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    goto/16 :goto_4b6

    .line 1127
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1128
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionEnabled(I)Z

    move-result v1

    .line 1130
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1132
    goto/16 :goto_4b6

    .line 1111
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1113
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1117
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1120
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1122
    goto/16 :goto_4b6

    .line 1098
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_1c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1100
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    goto/16 :goto_4b6

    .line 1088
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1089
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList(Z)[I

    move-result-object v1

    .line 1091
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1093
    goto/16 :goto_4b6

    .line 1079
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":[I
    :pswitch_1f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(I)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    goto/16 :goto_4b6

    .line 1071
    .end local v0    # "_arg0":I
    :pswitch_201
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()I

    move-result v0

    .line 1072
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    goto/16 :goto_4b6

    .line 1063
    .end local v0    # "_result":I
    :pswitch_20d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1064
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(I)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    goto/16 :goto_4b6

    .line 1055
    .end local v0    # "_arg0":I
    :pswitch_21c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()I

    move-result v0

    .line 1056
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    goto/16 :goto_4b6

    .line 1047
    .end local v0    # "_result":I
    :pswitch_228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1048
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(I)V

    .line 1050
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    goto/16 :goto_4b6

    .line 1039
    .end local v0    # "_arg0":I
    :pswitch_237
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()I

    move-result v0

    .line 1040
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    goto/16 :goto_4b6

    .line 1030
    .end local v0    # "_result":I
    :pswitch_243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1031
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(I)I

    move-result v1

    .line 1033
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    goto/16 :goto_4b6

    .line 1022
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_256
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()I

    move-result v0

    .line 1023
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    goto/16 :goto_4b6

    .line 1013
    .end local v0    # "_result":I
    :pswitch_262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1014
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)I

    move-result v1

    .line 1016
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    goto/16 :goto_4b6

    .line 1003
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1004
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSlotIndex(I)I

    move-result v1

    .line 1006
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    goto/16 :goto_4b6

    .line 989
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_288
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 991
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 993
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 994
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 996
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 998
    goto/16 :goto_4b6

    .line 976
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_2a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 978
    .local v0, "_arg0":[I
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 980
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 981
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    goto/16 :goto_4b6

    .line 963
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 965
    .restart local v0    # "_arg0":[I
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 967
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 968
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    goto/16 :goto_4b6

    .line 951
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 956
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 958
    goto/16 :goto_4b6

    .line 943
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_2f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getPreferredDataSubscriptionId()I

    move-result v0

    .line 944
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    goto/16 :goto_4b6

    .line 931
    .end local v0    # "_result":I
    :pswitch_300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 933
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 935
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    move-result-object v2

    .line 936
    .local v2, "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    goto/16 :goto_4b6

    .line 919
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    :pswitch_31b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 921
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 924
    .local v2, "_result":Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 926
    goto/16 :goto_4b6

    .line 905
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelUuid;
    :pswitch_332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 907
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 909
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v3

    .line 912
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    goto/16 :goto_4b6

    .line 893
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_34d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 895
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 896
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(II)I

    move-result v2

    .line 898
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    goto/16 :goto_4b6

    .line 881
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 884
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v2

    .line 886
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    goto/16 :goto_4b6

    .line 867
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_37b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 869
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 871
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 872
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v3

    .line 874
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    goto/16 :goto_4b6

    .line 855
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 857
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 858
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setIconTint(II)I

    move-result v2

    .line 860
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    goto/16 :goto_4b6

    .line 843
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_3ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 846
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->removeSubInfo(Ljava/lang/String;I)Z

    move-result v2

    .line 848
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 850
    goto/16 :goto_4b6

    .line 827
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 829
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 834
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 836
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    goto/16 :goto_4b6

    .line 819
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_3e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 820
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->requestEmbeddedSubscriptionInfoListRefresh(I)V

    .line 822
    goto/16 :goto_4b6

    .line 809
    .end local v0    # "_arg0":I
    :pswitch_3ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 812
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 814
    goto/16 :goto_4b6

    .line 797
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 799
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 802
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 804
    goto/16 :goto_4b6

    .line 789
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_419
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCountMax()I

    move-result v0

    .line 790
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    goto/16 :goto_4b6

    .line 778
    .end local v0    # "_result":I
    :pswitch_425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 781
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 783
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    goto/16 :goto_4b6

    .line 766
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_43c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 769
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 771
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 773
    goto :goto_4b6

    .line 752
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 754
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 756
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 759
    .local v3, "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 761
    goto :goto_4b6

    .line 738
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_46c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 742
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 743
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 745
    .restart local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 747
    goto :goto_4b6

    .line 724
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 726
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 728
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 731
    .restart local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 733
    goto :goto_4b6

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_4a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 717
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 719
    nop

    .line 1326
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_4b6
    return v11

    nop

    :pswitch_data_4b8
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_4be
    .packed-switch 0x1
        :pswitch_4a0
        :pswitch_486
        :pswitch_46c
        :pswitch_452
        :pswitch_43c
        :pswitch_425
        :pswitch_419
        :pswitch_402
        :pswitch_3ef
        :pswitch_3e3
        :pswitch_3c4
        :pswitch_3ad
        :pswitch_396
        :pswitch_37b
        :pswitch_364
        :pswitch_34d
        :pswitch_332
        :pswitch_31b
        :pswitch_300
        :pswitch_2f4
        :pswitch_2dd
        :pswitch_2c2
        :pswitch_2a7
        :pswitch_288
        :pswitch_275
        :pswitch_262
        :pswitch_256
        :pswitch_243
        :pswitch_237
        :pswitch_228
        :pswitch_21c
        :pswitch_20d
        :pswitch_201
        :pswitch_1f2
        :pswitch_1df
        :pswitch_1c8
        :pswitch_1a9
        :pswitch_196
        :pswitch_183
        :pswitch_168
        :pswitch_15c
        :pswitch_150
        :pswitch_13d
        :pswitch_126
        :pswitch_10f
        :pswitch_f0
        :pswitch_d5
        :pswitch_ae
        :pswitch_93
        :pswitch_78
        :pswitch_65
        :pswitch_4a
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method
