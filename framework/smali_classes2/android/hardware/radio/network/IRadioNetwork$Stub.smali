.class public abstract Landroid/hardware/radio/network/IRadioNetwork$Stub;
.super Landroid/os/Binder;
.source "IRadioNetwork.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelEmergencyNetworkScan:I = 0x27

.field static final TRANSACTION_exitEmergencyMode:I = 0x28

.field static final TRANSACTION_getAllowedNetworkTypesBitmap:I = 0x1

.field static final TRANSACTION_getAvailableBandModes:I = 0x2

.field static final TRANSACTION_getAvailableNetworks:I = 0x3

.field static final TRANSACTION_getBarringInfo:I = 0x4

.field static final TRANSACTION_getCdmaRoamingPreference:I = 0x5

.field static final TRANSACTION_getCellInfoList:I = 0x6

.field static final TRANSACTION_getDataRegistrationState:I = 0x7

.field static final TRANSACTION_getImsRegistrationState:I = 0x8

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getNetworkSelectionMode:I = 0x9

.field static final TRANSACTION_getOperator:I = 0xa

.field static final TRANSACTION_getSignalStrength:I = 0xb

.field static final TRANSACTION_getSystemSelectionChannels:I = 0xc

.field static final TRANSACTION_getUsageSetting:I = 0x24

.field static final TRANSACTION_getVoiceRadioTechnology:I = 0xd

.field static final TRANSACTION_getVoiceRegistrationState:I = 0xe

.field static final TRANSACTION_isN1ModeEnabled:I = 0x2b

.field static final TRANSACTION_isNrDualConnectivityEnabled:I = 0xf

.field static final TRANSACTION_isNullCipherAndIntegrityEnabled:I = 0x2a

.field static final TRANSACTION_responseAcknowledgement:I = 0x10

.field static final TRANSACTION_setAllowedNetworkTypesBitmap:I = 0x11

.field static final TRANSACTION_setBandMode:I = 0x12

.field static final TRANSACTION_setBarringPassword:I = 0x13

.field static final TRANSACTION_setCdmaRoamingPreference:I = 0x14

.field static final TRANSACTION_setCellInfoListRate:I = 0x15

.field static final TRANSACTION_setEmergencyMode:I = 0x25

.field static final TRANSACTION_setIndicationFilter:I = 0x16

.field static final TRANSACTION_setLinkCapacityReportingCriteria:I = 0x17

.field static final TRANSACTION_setLocationUpdates:I = 0x18

.field static final TRANSACTION_setN1ModeEnabled:I = 0x2c

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x19

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x1a

.field static final TRANSACTION_setNrDualConnectivityState:I = 0x1b

.field static final TRANSACTION_setNullCipherAndIntegrityEnabled:I = 0x29

.field static final TRANSACTION_setResponseFunctions:I = 0x1c

.field static final TRANSACTION_setSignalStrengthReportingCriteria:I = 0x1d

.field static final TRANSACTION_setSuppServiceNotifications:I = 0x1e

.field static final TRANSACTION_setSystemSelectionChannels:I = 0x1f

.field static final TRANSACTION_setUsageSetting:I = 0x23

.field static final TRANSACTION_startNetworkScan:I = 0x20

.field static final TRANSACTION_stopNetworkScan:I = 0x21

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0x22

.field static final TRANSACTION_triggerEmergencyNetworkScan:I = 0x26


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 170
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->markVintfStability()V

    .line 171
    sget-object v0, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetwork;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 179
    if-nez p0, :cond_4

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_4
    sget-object v0, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 183
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetwork;

    if-eqz v1, :cond_14

    .line 184
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/network/IRadioNetwork;

    return-object v1

    .line 186
    :cond_14
    new-instance v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 190
    return-object p0
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

    .line 194
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 195
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 196
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    :cond_15
    sparse-switch v9, :sswitch_data_2dc

    .line 218
    packed-switch v9, :pswitch_data_2ea

    .line 633
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 202
    :sswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return v13

    .line 207
    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v13

    .line 213
    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v13

    .line 624
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 627
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setN1ModeEnabled(IZ)V

    .line 629
    goto/16 :goto_2db

    .line 616
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 617
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isN1ModeEnabled(I)V

    .line 619
    goto/16 :goto_2db

    .line 608
    .end local v0    # "_arg0":I
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isNullCipherAndIntegrityEnabled(I)V

    .line 611
    goto/16 :goto_2db

    .line 598
    .end local v0    # "_arg0":I
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 600
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 601
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNullCipherAndIntegrityEnabled(IZ)V

    .line 603
    goto/16 :goto_2db

    .line 590
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 591
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->exitEmergencyMode(I)V

    .line 593
    goto/16 :goto_2db

    .line 580
    .end local v0    # "_arg0":I
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 582
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 583
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->cancelEmergencyNetworkScan(IZ)V

    .line 585
    goto/16 :goto_2db

    .line 570
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 572
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;

    .line 573
    .local v1, "_arg1":Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->triggerEmergencyNetworkScan(ILandroid/hardware/radio/network/EmergencyNetworkScanTrigger;)V

    .line 575
    goto/16 :goto_2db

    .line 560
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;
    :pswitch_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 562
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 563
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setEmergencyMode(II)V

    .line 565
    goto/16 :goto_2db

    .line 552
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 553
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getUsageSetting(I)V

    .line 555
    goto/16 :goto_2db

    .line 542
    .end local v0    # "_arg0":I
    :pswitch_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 544
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setUsageSetting(II)V

    .line 547
    goto/16 :goto_2db

    .line 532
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 534
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 537
    goto/16 :goto_2db

    .line 524
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 525
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->stopNetworkScan(I)V

    .line 527
    goto/16 :goto_2db

    .line 514
    .end local v0    # "_arg0":I
    :pswitch_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/NetworkScanRequest;

    .line 517
    .local v1, "_arg1":Landroid/hardware/radio/network/NetworkScanRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->startNetworkScan(ILandroid/hardware/radio/network/NetworkScanRequest;)V

    .line 519
    goto/16 :goto_2db

    .line 502
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/network/NetworkScanRequest;
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 504
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 506
    .local v1, "_arg1":Z
    sget-object v2, Landroid/hardware/radio/network/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 507
    .local v2, "_arg2":[Landroid/hardware/radio/network/RadioAccessSpecifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSystemSelectionChannels(IZ[Landroid/hardware/radio/network/RadioAccessSpecifier;)V

    .line 509
    goto/16 :goto_2db

    .line 492
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":[Landroid/hardware/radio/network/RadioAccessSpecifier;
    :pswitch_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 494
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 495
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSuppServiceNotifications(IZ)V

    .line 497
    goto/16 :goto_2db

    .line 482
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 484
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/network/SignalThresholdInfo;

    .line 485
    .local v1, "_arg1":[Landroid/hardware/radio/network/SignalThresholdInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSignalStrengthReportingCriteria(I[Landroid/hardware/radio/network/SignalThresholdInfo;)V

    .line 487
    goto/16 :goto_2db

    .line 472
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/hardware/radio/network/SignalThresholdInfo;
    :pswitch_13a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkResponse;

    move-result-object v0

    .line 474
    .local v0, "_arg0":Landroid/hardware/radio/network/IRadioNetworkResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkIndication;

    move-result-object v1

    .line 475
    .local v1, "_arg1":Landroid/hardware/radio/network/IRadioNetworkIndication;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V

    .line 477
    goto/16 :goto_2db

    .line 462
    .end local v0    # "_arg0":Landroid/hardware/radio/network/IRadioNetworkResponse;
    .end local v1    # "_arg1":Landroid/hardware/radio/network/IRadioNetworkIndication;
    :pswitch_152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 464
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 465
    .local v1, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNrDualConnectivityState(IB)V

    .line 467
    goto/16 :goto_2db

    .line 450
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":B
    :pswitch_162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 452
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 455
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;I)V

    .line 457
    goto/16 :goto_2db

    .line 442
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 443
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 445
    goto/16 :goto_2db

    .line 432
    .end local v0    # "_arg0":I
    :pswitch_182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 434
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 435
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setLocationUpdates(IZ)V

    .line 437
    goto/16 :goto_2db

    .line 412
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 414
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 416
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 418
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 420
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 422
    .local v18, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v19

    .line 424
    .local v19, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 425
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setLinkCapacityReportingCriteria(IIII[I[II)V

    .line 427
    goto/16 :goto_2db

    .line 402
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":[I
    .end local v19    # "_arg5":[I
    .end local v20    # "_arg6":I
    :pswitch_1c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 405
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setIndicationFilter(II)V

    .line 407
    goto/16 :goto_2db

    .line 392
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 394
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setCellInfoListRate(II)V

    .line 397
    goto/16 :goto_2db

    .line 382
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 384
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setCdmaRoamingPreference(II)V

    .line 387
    goto/16 :goto_2db

    .line 368
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 370
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    goto/16 :goto_2db

    .line 358
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_20c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 360
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setBandMode(II)V

    .line 363
    goto/16 :goto_2db

    .line 348
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_21c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 350
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setAllowedNetworkTypesBitmap(II)V

    .line 353
    goto/16 :goto_2db

    .line 342
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_22c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->responseAcknowledgement()V

    .line 343
    goto/16 :goto_2db

    .line 335
    :pswitch_231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isNrDualConnectivityEnabled(I)V

    .line 338
    goto/16 :goto_2db

    .line 327
    .end local v0    # "_arg0":I
    :pswitch_23d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 328
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getVoiceRegistrationState(I)V

    .line 330
    goto/16 :goto_2db

    .line 319
    .end local v0    # "_arg0":I
    :pswitch_249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getVoiceRadioTechnology(I)V

    .line 322
    goto/16 :goto_2db

    .line 311
    .end local v0    # "_arg0":I
    :pswitch_255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getSystemSelectionChannels(I)V

    .line 314
    goto/16 :goto_2db

    .line 303
    .end local v0    # "_arg0":I
    :pswitch_261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getSignalStrength(I)V

    .line 306
    goto/16 :goto_2db

    .line 295
    .end local v0    # "_arg0":I
    :pswitch_26d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getOperator(I)V

    .line 298
    goto :goto_2db

    .line 287
    .end local v0    # "_arg0":I
    :pswitch_278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getNetworkSelectionMode(I)V

    .line 290
    goto :goto_2db

    .line 279
    .end local v0    # "_arg0":I
    :pswitch_283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getImsRegistrationState(I)V

    .line 282
    goto :goto_2db

    .line 271
    .end local v0    # "_arg0":I
    :pswitch_28e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getDataRegistrationState(I)V

    .line 274
    goto :goto_2db

    .line 263
    .end local v0    # "_arg0":I
    :pswitch_299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getCellInfoList(I)V

    .line 266
    goto :goto_2db

    .line 255
    .end local v0    # "_arg0":I
    :pswitch_2a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getCdmaRoamingPreference(I)V

    .line 258
    goto :goto_2db

    .line 247
    .end local v0    # "_arg0":I
    :pswitch_2af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getBarringInfo(I)V

    .line 250
    goto :goto_2db

    .line 239
    .end local v0    # "_arg0":I
    :pswitch_2ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAvailableNetworks(I)V

    .line 242
    goto :goto_2db

    .line 231
    .end local v0    # "_arg0":I
    :pswitch_2c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAvailableBandModes(I)V

    .line 234
    goto :goto_2db

    .line 223
    .end local v0    # "_arg0":I
    :pswitch_2d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAllowedNetworkTypesBitmap(I)V

    .line 226
    nop

    .line 636
    .end local v0    # "_arg0":I
    :goto_2db
    return v13

    :sswitch_data_2dc
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_2ea
    .packed-switch 0x1
        :pswitch_2d0
        :pswitch_2c5
        :pswitch_2ba
        :pswitch_2af
        :pswitch_2a4
        :pswitch_299
        :pswitch_28e
        :pswitch_283
        :pswitch_278
        :pswitch_26d
        :pswitch_261
        :pswitch_255
        :pswitch_249
        :pswitch_23d
        :pswitch_231
        :pswitch_22c
        :pswitch_21c
        :pswitch_20c
        :pswitch_1f4
        :pswitch_1e4
        :pswitch_1d4
        :pswitch_1c4
        :pswitch_192
        :pswitch_182
        :pswitch_176
        :pswitch_162
        :pswitch_152
        :pswitch_13a
        :pswitch_126
        :pswitch_116
        :pswitch_fe
        :pswitch_ea
        :pswitch_de
        :pswitch_ce
        :pswitch_be
        :pswitch_b2
        :pswitch_a2
        :pswitch_8e
        :pswitch_7e
        :pswitch_72
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_3a
    .end packed-switch
.end method
