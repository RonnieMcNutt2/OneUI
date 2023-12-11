.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final TRANSACTION_addUidPolicy:I = 0x2

.field static final TRANSACTION_factoryReset:I = 0x18

.field static final TRANSACTION_getAllFirewallRuleMobileData:I = 0x1b

.field static final TRANSACTION_getFirewallRuleMobileData:I = 0x20

.field static final TRANSACTION_getFirewallRuleWifi:I = 0x21

.field static final TRANSACTION_getMultipathPreference:I = 0x11

.field static final TRANSACTION_getNetworkPolicies:I = 0x9

.field static final TRANSACTION_getRestrictBackground:I = 0xc

.field static final TRANSACTION_getRestrictBackgroundByCaller:I = 0xd

.field static final TRANSACTION_getRestrictBackgroundStatus:I = 0xe

.field static final TRANSACTION_getSubscriptionPlan:I = 0x12

.field static final TRANSACTION_getSubscriptionPlans:I = 0x14

.field static final TRANSACTION_getSubscriptionPlansOwner:I = 0x16

.field static final TRANSACTION_getUidPolicy:I = 0x4

.field static final TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final TRANSACTION_isUidNetworkingBlocked:I = 0x19

.field static final TRANSACTION_isUidRestrictedOnMeteredNetworks:I = 0x1a

.field static final TRANSACTION_notifyStatsProviderWarningOrLimitReached:I = 0x13

.field static final TRANSACTION_registerListener:I = 0x6

.field static final TRANSACTION_removeUidPolicy:I = 0x3

.field static final TRANSACTION_setDeviceIdleMode:I = 0xf

.field static final TRANSACTION_setFirewallRuleMobileData:I = 0x1c

.field static final TRANSACTION_setFirewallRuleMobileDataMap:I = 0x1e

.field static final TRANSACTION_setFirewallRuleWifi:I = 0x1d

.field static final TRANSACTION_setFirewallRuleWifiMap:I = 0x1f

.field static final TRANSACTION_setNetworkPolicies:I = 0x8

.field static final TRANSACTION_setRestrictBackground:I = 0xb

.field static final TRANSACTION_setSubscriptionOverride:I = 0x17

.field static final TRANSACTION_setSubscriptionPlans:I = 0x15

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_setWifiMeteredOverride:I = 0x10

.field static final TRANSACTION_snoozeLimit:I = 0xa

.field static final TRANSACTION_unregisterListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 151
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 159
    if-nez p0, :cond_4

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_4
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 163
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_14

    .line 164
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkPolicyManager;

    return-object v1

    .line 166
    :cond_14
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 175
    packed-switch p0, :pswitch_data_68

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 307
    :pswitch_5
    const-string v0, "getFirewallRuleWifi"

    return-object v0

    .line 303
    :pswitch_8
    const-string v0, "getFirewallRuleMobileData"

    return-object v0

    .line 299
    :pswitch_b
    const-string v0, "setFirewallRuleWifiMap"

    return-object v0

    .line 295
    :pswitch_e
    const-string v0, "setFirewallRuleMobileDataMap"

    return-object v0

    .line 291
    :pswitch_11
    const-string v0, "setFirewallRuleWifi"

    return-object v0

    .line 287
    :pswitch_14
    const-string v0, "setFirewallRuleMobileData"

    return-object v0

    .line 283
    :pswitch_17
    const-string v0, "getAllFirewallRuleMobileData"

    return-object v0

    .line 279
    :pswitch_1a
    const-string v0, "isUidRestrictedOnMeteredNetworks"

    return-object v0

    .line 275
    :pswitch_1d
    const-string v0, "isUidNetworkingBlocked"

    return-object v0

    .line 271
    :pswitch_20
    const-string v0, "factoryReset"

    return-object v0

    .line 267
    :pswitch_23
    const-string v0, "setSubscriptionOverride"

    return-object v0

    .line 263
    :pswitch_26
    const-string v0, "getSubscriptionPlansOwner"

    return-object v0

    .line 259
    :pswitch_29
    const-string v0, "setSubscriptionPlans"

    return-object v0

    .line 255
    :pswitch_2c
    const-string v0, "getSubscriptionPlans"

    return-object v0

    .line 251
    :pswitch_2f
    const-string v0, "notifyStatsProviderWarningOrLimitReached"

    return-object v0

    .line 247
    :pswitch_32
    const-string v0, "getSubscriptionPlan"

    return-object v0

    .line 243
    :pswitch_35
    const-string v0, "getMultipathPreference"

    return-object v0

    .line 239
    :pswitch_38
    const-string v0, "setWifiMeteredOverride"

    return-object v0

    .line 235
    :pswitch_3b
    const-string v0, "setDeviceIdleMode"

    return-object v0

    .line 231
    :pswitch_3e
    const-string v0, "getRestrictBackgroundStatus"

    return-object v0

    .line 227
    :pswitch_41
    const-string v0, "getRestrictBackgroundByCaller"

    return-object v0

    .line 223
    :pswitch_44
    const-string v0, "getRestrictBackground"

    return-object v0

    .line 219
    :pswitch_47
    const-string v0, "setRestrictBackground"

    return-object v0

    .line 215
    :pswitch_4a
    const-string v0, "snoozeLimit"

    return-object v0

    .line 211
    :pswitch_4d
    const-string v0, "getNetworkPolicies"

    return-object v0

    .line 207
    :pswitch_50
    const-string v0, "setNetworkPolicies"

    return-object v0

    .line 203
    :pswitch_53
    const-string v0, "unregisterListener"

    return-object v0

    .line 199
    :pswitch_56
    const-string v0, "registerListener"

    return-object v0

    .line 195
    :pswitch_59
    const-string v0, "getUidsWithPolicy"

    return-object v0

    .line 191
    :pswitch_5c
    const-string v0, "getUidPolicy"

    return-object v0

    .line 187
    :pswitch_5f
    const-string v0, "removeUidPolicy"

    return-object v0

    .line 183
    :pswitch_62
    const-string v0, "addUidPolicy"

    return-object v0

    .line 179
    :pswitch_65
    const-string v0, "setUidPolicy"

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
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

    .line 170
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1293
    const/16 v0, 0x20

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 318
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 322
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.net.INetworkPolicyManager"

    .line 323
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 324
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    :cond_15
    packed-switch v9, :pswitch_data_2ae

    .line 334
    packed-switch v9, :pswitch_data_2b4

    .line 672
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 330
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    return v13

    .line 663
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 664
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleWifi(I)Z

    move-result v1

    .line 666
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 668
    goto/16 :goto_2ac

    .line 653
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 654
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleMobileData(I)Z

    move-result v1

    .line 656
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 658
    goto/16 :goto_2ac

    .line 643
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 644
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 645
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {v8, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifiMap(Ljava/util/Map;)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    goto/16 :goto_2ac

    .line 633
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    :pswitch_61
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 634
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 635
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {v8, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_2ac

    .line 622
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 624
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 625
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifi(IZ)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    goto/16 :goto_2ac

    .line 611
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 613
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 614
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileData(IZ)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    goto/16 :goto_2ac

    .line 603
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_9e
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getAllFirewallRuleMobileData()[I

    move-result-object v0

    .line 604
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 606
    goto/16 :goto_2ac

    .line 594
    .end local v0    # "_result":[I
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 595
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v1

    .line 597
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 599
    goto/16 :goto_2ac

    .line 582
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 584
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 585
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->isUidNetworkingBlocked(IZ)Z

    move-result v2

    .line 587
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 589
    goto/16 :goto_2ac

    .line 573
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_2ac

    .line 554
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 556
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 558
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 560
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 562
    .local v17, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 564
    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 565
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    goto/16 :goto_2ac

    .line 544
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":[I
    .end local v18    # "_arg4":J
    .end local v20    # "_arg5":Ljava/lang/String;
    :pswitch_112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 545
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    goto/16 :goto_2ac

    .line 529
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 531
    .local v6, "_arg0":I
    sget-object v0, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 533
    .local v7, "_arg1":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 535
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 536
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    goto/16 :goto_2ac

    .line 517
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":[Landroid/telephony/SubscriptionPlan;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_14c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    .line 522
    .local v2, "_result":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 524
    goto/16 :goto_2ac

    .line 510
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/telephony/SubscriptionPlan;
    :pswitch_163
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->notifyStatsProviderWarningOrLimitReached()V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    goto/16 :goto_2ac

    .line 501
    :pswitch_16b
    sget-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 502
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 504
    .local v1, "_result":Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 506
    goto/16 :goto_2ac

    .line 491
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v1    # "_result":Landroid/telephony/SubscriptionPlan;
    :pswitch_182
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 492
    .local v0, "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v1

    .line 494
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    goto/16 :goto_2ac

    .line 480
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":I
    :pswitch_199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 483
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_2ac

    .line 471
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 472
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto/16 :goto_2ac

    .line 461
    .end local v0    # "_arg0":Z
    :pswitch_1bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundStatus(I)I

    move-result v1

    .line 464
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    goto/16 :goto_2ac

    .line 453
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1ce
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v0

    .line 454
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    goto/16 :goto_2ac

    .line 446
    .end local v0    # "_result":I
    :pswitch_1da
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v0

    .line 447
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto/16 :goto_2ac

    .line 438
    .end local v0    # "_result":Z
    :pswitch_1e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 439
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_2ac

    .line 429
    .end local v0    # "_arg0":Z
    :pswitch_1f5
    sget-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 430
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    goto/16 :goto_2ac

    .line 419
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    :pswitch_208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 422
    .local v1, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 424
    goto/16 :goto_2ac

    .line 410
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Landroid/net/NetworkPolicy;
    :pswitch_21b
    sget-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 411
    .local v0, "_arg0":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_2ac

    .line 401
    .end local v0    # "_arg0":[Landroid/net/NetworkPolicy;
    :pswitch_22e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 402
    .local v0, "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto :goto_2ac

    .line 392
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 393
    .restart local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    goto :goto_2ac

    .line 382
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 383
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 385
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 387
    goto :goto_2ac

    .line 372
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v1

    .line 375
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    goto :goto_2ac

    .line 361
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    goto :goto_2ac

    .line 350
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto :goto_2ac

    .line 339
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_29a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 342
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    nop

    .line 675
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_2ac
    return v13

    nop

    :pswitch_data_2ae
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2b4
    .packed-switch 0x1
        :pswitch_29a
        :pswitch_288
        :pswitch_276
        :pswitch_264
        :pswitch_252
        :pswitch_240
        :pswitch_22e
        :pswitch_21b
        :pswitch_208
        :pswitch_1f5
        :pswitch_1e6
        :pswitch_1da
        :pswitch_1ce
        :pswitch_1bb
        :pswitch_1ac
        :pswitch_199
        :pswitch_182
        :pswitch_16b
        :pswitch_163
        :pswitch_14c
        :pswitch_125
        :pswitch_112
        :pswitch_e3
        :pswitch_d4
        :pswitch_bd
        :pswitch_aa
        :pswitch_9e
        :pswitch_8b
        :pswitch_78
        :pswitch_61
        :pswitch_4a
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
