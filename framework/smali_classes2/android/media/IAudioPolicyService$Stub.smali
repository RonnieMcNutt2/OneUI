.class public abstract Landroid/media/IAudioPolicyService$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyService.java"

# interfaces
.implements Landroid/media/IAudioPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acquireSoundTriggerSession:I = 0x35

.field static final TRANSACTION_addDevicesRoleForCapturePreset:I = 0x58

.field static final TRANSACTION_addSourceDefaultEffect:I = 0x23

.field static final TRANSACTION_addStreamDefaultEffect:I = 0x24

.field static final TRANSACTION_canBeSpatialized:I = 0x5e

.field static final TRANSACTION_clearDevicesRoleForCapturePreset:I = 0x5a

.field static final TRANSACTION_clearDevicesRoleForStrategy:I = 0x55

.field static final TRANSACTION_clearPreferredMixerAttributes:I = 0x64

.field static final TRANSACTION_createAudioPatch:I = 0x2e

.field static final TRANSACTION_getAudioPolicyConfig:I = 0x66

.field static final TRANSACTION_getAudioPort:I = 0x2d

.field static final TRANSACTION_getDeviceConnectionState:I = 0x3

.field static final TRANSACTION_getDevicesForAttributes:I = 0x19

.field static final TRANSACTION_getDevicesForRoleAndCapturePreset:I = 0x5b

.field static final TRANSACTION_getDevicesForRoleAndStrategy:I = 0x56

.field static final TRANSACTION_getDirectPlaybackSupport:I = 0x5f

.field static final TRANSACTION_getDirectProfilesForAttributes:I = 0x60

.field static final TRANSACTION_getForceUse:I = 0x7

.field static final TRANSACTION_getHwOffloadFormatsSupportedForBluetoothMedia:I = 0x44

.field static final TRANSACTION_getInputForAttr:I = 0xd

.field static final TRANSACTION_getMasterMono:I = 0x40

.field static final TRANSACTION_getMaxVolumeIndexForAttributes:I = 0x16

.field static final TRANSACTION_getMinVolumeIndexForAttributes:I = 0x17

.field static final TRANSACTION_getOffloadSupport:I = 0x29

.field static final TRANSACTION_getOutput:I = 0x8

.field static final TRANSACTION_getOutputForAttr:I = 0x9

.field static final TRANSACTION_getOutputForEffect:I = 0x1a

.field static final TRANSACTION_getPhoneState:I = 0x37

.field static final TRANSACTION_getPreferredMixerAttributes:I = 0x63

.field static final TRANSACTION_getProductStrategyFromAudioAttributes:I = 0x4e

.field static final TRANSACTION_getReportedSurroundFormats:I = 0x43

.field static final TRANSACTION_getSpatializer:I = 0x5d

.field static final TRANSACTION_getStrategyForStream:I = 0x18

.field static final TRANSACTION_getStreamVolumeDB:I = 0x41

.field static final TRANSACTION_getStreamVolumeIndex:I = 0x13

.field static final TRANSACTION_getSupportedMixerAttributes:I = 0x61

.field static final TRANSACTION_getSurroundFormats:I = 0x42

.field static final TRANSACTION_getVolumeGroupFromAudioAttributes:I = 0x50

.field static final TRANSACTION_getVolumeIndexForAttributes:I = 0x15

.field static final TRANSACTION_handleDeviceConfigChange:I = 0x4

.field static final TRANSACTION_initStreamVolume:I = 0x11

.field static final TRANSACTION_isCallScreenModeSupported:I = 0x52

.field static final TRANSACTION_isDirectOutputSupported:I = 0x2a

.field static final TRANSACTION_isHapticPlaybackSupported:I = 0x4a

.field static final TRANSACTION_isHotwordStreamSupported:I = 0x4c

.field static final TRANSACTION_isSourceActive:I = 0x21

.field static final TRANSACTION_isStreamActive:I = 0x1f

.field static final TRANSACTION_isStreamActiveRemotely:I = 0x20

.field static final TRANSACTION_isUltrasoundSupported:I = 0x4b

.field static final TRANSACTION_listAudioPatches:I = 0x30

.field static final TRANSACTION_listAudioPorts:I = 0x2b

.field static final TRANSACTION_listAudioProductStrategies:I = 0x4d

.field static final TRANSACTION_listAudioVolumeGroups:I = 0x4f

.field static final TRANSACTION_listDeclaredDevicePorts:I = 0x2c

.field static final TRANSACTION_moveEffectsToIo:I = 0x1e

.field static final TRANSACTION_onNewAudioModulesAvailable:I = 0x1

.field static final TRANSACTION_queryDefaultPreProcessing:I = 0x22

.field static final TRANSACTION_registerClient:I = 0x32

.field static final TRANSACTION_registerEffect:I = 0x1b

.field static final TRANSACTION_registerPolicyMixes:I = 0x38

.field static final TRANSACTION_registerSoundTriggerCaptureStateListener:I = 0x5c

.field static final TRANSACTION_releaseAudioPatch:I = 0x2f

.field static final TRANSACTION_releaseInput:I = 0x10

.field static final TRANSACTION_releaseOutput:I = 0xc

.field static final TRANSACTION_releaseSoundTriggerSession:I = 0x36

.field static final TRANSACTION_removeDevicesRoleForCapturePreset:I = 0x59

.field static final TRANSACTION_removeDevicesRoleForStrategy:I = 0x54

.field static final TRANSACTION_removeSourceDefaultEffect:I = 0x25

.field static final TRANSACTION_removeStreamDefaultEffect:I = 0x26

.field static final TRANSACTION_removeUidDeviceAffinities:I = 0x3a

.field static final TRANSACTION_removeUserIdDeviceAffinities:I = 0x3c

.field static final TRANSACTION_setA11yServicesUids:I = 0x48

.field static final TRANSACTION_setActiveAssistantServicesUids:I = 0x47

.field static final TRANSACTION_setAllowedCapturePolicy:I = 0x28

.field static final TRANSACTION_setAssistantServicesUids:I = 0x46

.field static final TRANSACTION_setAudioPolicyConfig:I = 0x65

.field static final TRANSACTION_setAudioPortCallbacksEnabled:I = 0x33

.field static final TRANSACTION_setAudioPortConfig:I = 0x31

.field static final TRANSACTION_setAudioVolumeGroupCallbacksEnabled:I = 0x34

.field static final TRANSACTION_setCurrentImeUid:I = 0x49

.field static final TRANSACTION_setDeviceConnectionState:I = 0x2

.field static final TRANSACTION_setDevicesRoleForCapturePreset:I = 0x57

.field static final TRANSACTION_setDevicesRoleForStrategy:I = 0x53

.field static final TRANSACTION_setEffectEnabled:I = 0x1d

.field static final TRANSACTION_setForceUse:I = 0x6

.field static final TRANSACTION_setMasterMono:I = 0x3f

.field static final TRANSACTION_setPhoneState:I = 0x5

.field static final TRANSACTION_setPreferredMixerAttributes:I = 0x62

.field static final TRANSACTION_setRttEnabled:I = 0x51

.field static final TRANSACTION_setStreamVolumeIndex:I = 0x12

.field static final TRANSACTION_setSupportedSystemUsages:I = 0x27

.field static final TRANSACTION_setSurroundFormatEnabled:I = 0x45

.field static final TRANSACTION_setUidDeviceAffinities:I = 0x39

.field static final TRANSACTION_setUserIdDeviceAffinities:I = 0x3b

.field static final TRANSACTION_setVolumeIndexForAttributes:I = 0x14

.field static final TRANSACTION_startAudioSource:I = 0x3d

.field static final TRANSACTION_startInput:I = 0xe

.field static final TRANSACTION_startOutput:I = 0xa

.field static final TRANSACTION_stopAudioSource:I = 0x3e

.field static final TRANSACTION_stopInput:I = 0xf

.field static final TRANSACTION_stopOutput:I = 0xb

.field static final TRANSACTION_unregisterEffect:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 511
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 512
    sget-object v0, Landroid/media/IAudioPolicyService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 520
    if-nez p0, :cond_4

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_4
    sget-object v0, Landroid/media/IAudioPolicyService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 524
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioPolicyService;

    if-eqz v1, :cond_14

    .line 525
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioPolicyService;

    return-object v1

    .line 527
    :cond_14
    new-instance v1, Landroid/media/IAudioPolicyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 531
    return-object p0
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

    .line 535
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    sget-object v13, Landroid/media/IAudioPolicyService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 536
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_15

    const v0, 0xffffff

    if-gt v10, v0, :cond_15

    .line 537
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    :cond_15
    packed-switch v10, :pswitch_data_972

    .line 547
    packed-switch v10, :pswitch_data_978

    .line 1697
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 543
    :pswitch_20
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    return v14

    .line 1688
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1690
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getAudioPolicyConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1691
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1693
    goto/16 :goto_970

    .line 1679
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1680
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1681
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setAudioPolicyConfig(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    goto/16 :goto_970

    .line 1666
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_46
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 1668
    .local v0, "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1670
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1671
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1672
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->clearPreferredMixerAttributes(Landroid/media/AudioAttributesInternal;II)V

    .line 1673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    goto/16 :goto_970

    .line 1654
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_61
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 1656
    .restart local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1657
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1658
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getPreferredMixerAttributes(Landroid/media/AudioAttributesInternal;I)Landroid/media/AudioMixerAttributesInternal;

    move-result-object v2

    .line 1659
    .local v2, "_result":Landroid/media/AudioMixerAttributesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1661
    goto/16 :goto_970

    .line 1639
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/media/AudioMixerAttributesInternal;
    :pswitch_7c
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 1641
    .restart local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1643
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1645
    .local v2, "_arg2":I
    sget-object v3, Landroid/media/AudioMixerAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioMixerAttributesInternal;

    .line 1646
    .local v3, "_arg3":Landroid/media/AudioMixerAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1647
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->setPreferredMixerAttributes(Landroid/media/AudioAttributesInternal;IILandroid/media/AudioMixerAttributesInternal;)V

    .line 1648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    goto/16 :goto_970

    .line 1629
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/media/AudioMixerAttributesInternal;
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1630
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1631
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getSupportedMixerAttributes(I)[Landroid/media/AudioMixerAttributesInternal;

    move-result-object v1

    .line 1632
    .local v1, "_result":[Landroid/media/AudioMixerAttributesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1634
    goto/16 :goto_970

    .line 1619
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/media/AudioMixerAttributesInternal;
    :pswitch_b2
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 1620
    .local v0, "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1621
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getDirectProfilesForAttributes(Landroid/media/AudioAttributesInternal;)[Landroid/media/audio/common/AudioProfile;

    move-result-object v1

    .line 1622
    .local v1, "_result":[Landroid/media/audio/common/AudioProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1624
    goto/16 :goto_970

    .line 1607
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_result":[Landroid/media/audio/common/AudioProfile;
    :pswitch_c9
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 1609
    .restart local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    sget-object v1, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioConfig;

    .line 1610
    .local v1, "_arg1":Landroid/media/audio/common/AudioConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1611
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getDirectPlaybackSupport(Landroid/media/AudioAttributesInternal;Landroid/media/audio/common/AudioConfig;)I

    move-result v2

    .line 1612
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    goto/16 :goto_970

    .line 1593
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":Landroid/media/audio/common/AudioConfig;
    .end local v2    # "_result":I
    :pswitch_e8
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 1595
    .restart local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    sget-object v1, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioConfig;

    .line 1597
    .restart local v1    # "_arg1":Landroid/media/audio/common/AudioConfig;
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDevice;

    .line 1598
    .local v2, "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1599
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->canBeSpatialized(Landroid/media/AudioAttributesInternal;Landroid/media/audio/common/AudioConfig;[Landroid/media/audio/common/AudioDevice;)Z

    move-result v3

    .line 1600
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1602
    goto/16 :goto_970

    .line 1583
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":Landroid/media/audio/common/AudioConfig;
    .end local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    .end local v3    # "_result":Z
    :pswitch_10f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INativeSpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INativeSpatializerCallback;

    move-result-object v0

    .line 1584
    .local v0, "_arg0":Landroid/media/INativeSpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1585
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/GetSpatializerResponse;

    move-result-object v1

    .line 1586
    .local v1, "_result":Landroid/media/GetSpatializerResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1588
    goto/16 :goto_970

    .line 1573
    .end local v0    # "_arg0":Landroid/media/INativeSpatializerCallback;
    .end local v1    # "_result":Landroid/media/GetSpatializerResponse;
    :pswitch_126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICaptureStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICaptureStateListener;

    move-result-object v0

    .line 1574
    .local v0, "_arg0":Landroid/media/ICaptureStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1575
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->registerSoundTriggerCaptureStateListener(Landroid/media/ICaptureStateListener;)Z

    move-result v1

    .line 1576
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1578
    goto/16 :goto_970

    .line 1561
    .end local v0    # "_arg0":Landroid/media/ICaptureStateListener;
    .end local v1    # "_result":Z
    :pswitch_13d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1563
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1564
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1565
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForRoleAndCapturePreset(II)[Landroid/media/audio/common/AudioDevice;

    move-result-object v2

    .line 1566
    .local v2, "_result":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1568
    goto/16 :goto_970

    .line 1550
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Landroid/media/audio/common/AudioDevice;
    :pswitch_154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1552
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1553
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1554
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->clearDevicesRoleForCapturePreset(II)V

    .line 1555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    goto/16 :goto_970

    .line 1537
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1539
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1541
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDevice;

    .line 1542
    .local v2, "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->removeDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    goto/16 :goto_970

    .line 1524
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1526
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1528
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDevice;

    .line 1529
    .restart local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1530
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->addDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    goto/16 :goto_970

    .line 1511
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_19d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1513
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1515
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDevice;

    .line 1516
    .restart local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1517
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    goto/16 :goto_970

    .line 1499
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_1b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1501
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1502
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1503
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForRoleAndStrategy(II)[Landroid/media/audio/common/AudioDevice;

    move-result-object v2

    .line 1504
    .local v2, "_result":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1506
    goto/16 :goto_970

    .line 1488
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Landroid/media/audio/common/AudioDevice;
    :pswitch_1cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1490
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1491
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1492
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->clearDevicesRoleForStrategy(II)V

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    goto/16 :goto_970

    .line 1475
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1477
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1479
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDevice;

    .line 1480
    .local v2, "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1481
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->removeDevicesRoleForStrategy(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    goto/16 :goto_970

    .line 1462
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_1fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1464
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1466
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDevice;

    .line 1467
    .restart local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setDevicesRoleForStrategy(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    goto/16 :goto_970

    .line 1454
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_218
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->isCallScreenModeSupported()Z

    move-result v0

    .line 1455
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1457
    goto/16 :goto_970

    .line 1446
    .end local v0    # "_result":Z
    :pswitch_224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1447
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1448
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setRttEnabled(Z)V

    .line 1449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    goto/16 :goto_970

    .line 1434
    .end local v0    # "_arg0":Z
    :pswitch_233
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 1436
    .local v0, "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1437
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1438
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getVolumeGroupFromAudioAttributes(Landroid/media/AudioAttributesInternal;Z)I

    move-result v2

    .line 1439
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    goto/16 :goto_970

    .line 1426
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_24e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->listAudioVolumeGroups()[Landroid/media/AudioVolumeGroup;

    move-result-object v0

    .line 1427
    .local v0, "_result":[Landroid/media/AudioVolumeGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1429
    goto/16 :goto_970

    .line 1415
    .end local v0    # "_result":[Landroid/media/AudioVolumeGroup;
    :pswitch_25a
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 1417
    .local v0, "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1418
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1419
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getProductStrategyFromAudioAttributes(Landroid/media/AudioAttributesInternal;Z)I

    move-result v2

    .line 1420
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    goto/16 :goto_970

    .line 1407
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_275
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->listAudioProductStrategies()[Landroid/media/AudioProductStrategy;

    move-result-object v0

    .line 1408
    .local v0, "_result":[Landroid/media/AudioProductStrategy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1410
    goto/16 :goto_970

    .line 1398
    .end local v0    # "_result":[Landroid/media/AudioProductStrategy;
    :pswitch_281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1399
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->isHotwordStreamSupported(Z)Z

    move-result v1

    .line 1401
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1403
    goto/16 :goto_970

    .line 1390
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_294
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->isUltrasoundSupported()Z

    move-result v0

    .line 1391
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1393
    goto/16 :goto_970

    .line 1383
    .end local v0    # "_result":Z
    :pswitch_2a0
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->isHapticPlaybackSupported()Z

    move-result v0

    .line 1384
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1386
    goto/16 :goto_970

    .line 1375
    .end local v0    # "_result":Z
    :pswitch_2ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1376
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1377
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setCurrentImeUid(I)V

    .line 1378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    goto/16 :goto_970

    .line 1366
    .end local v0    # "_arg0":I
    :pswitch_2bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1367
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setA11yServicesUids([I)V

    .line 1369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    goto/16 :goto_970

    .line 1357
    .end local v0    # "_arg0":[I
    :pswitch_2ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1358
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setActiveAssistantServicesUids([I)V

    .line 1360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    goto/16 :goto_970

    .line 1348
    .end local v0    # "_arg0":[I
    :pswitch_2d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1349
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setAssistantServicesUids([I)V

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    goto/16 :goto_970

    .line 1337
    .end local v0    # "_arg0":[I
    :pswitch_2e8
    sget-object v0, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioFormatDescription;

    .line 1339
    .local v0, "_arg0":Landroid/media/audio/common/AudioFormatDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1340
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1341
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->setSurroundFormatEnabled(Landroid/media/audio/common/AudioFormatDescription;Z)V

    .line 1342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    goto/16 :goto_970

    .line 1327
    .end local v0    # "_arg0":Landroid/media/audio/common/AudioFormatDescription;
    .end local v1    # "_arg1":Z
    :pswitch_2ff
    sget-object v0, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioDeviceDescription;

    .line 1328
    .local v0, "_arg0":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1329
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getHwOffloadFormatsSupportedForBluetoothMedia(Landroid/media/audio/common/AudioDeviceDescription;)[Landroid/media/audio/common/AudioFormatDescription;

    move-result-object v1

    .line 1330
    .local v1, "_result":[Landroid/media/audio/common/AudioFormatDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1332
    goto/16 :goto_970

    .line 1309
    .end local v0    # "_arg0":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v1    # "_result":[Landroid/media/audio/common/AudioFormatDescription;
    :pswitch_316
    sget-object v0, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/Int;

    .line 1311
    .local v0, "_arg0":Landroid/media/audio/common/Int;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1312
    .local v1, "_arg1_length":I
    if-gez v1, :cond_326

    .line 1313
    const/4 v2, 0x0

    .local v2, "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    goto :goto_328

    .line 1315
    .end local v2    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :cond_326
    new-array v2, v1, [Landroid/media/audio/common/AudioFormatDescription;

    .line 1317
    .restart local v2    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :goto_328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    invoke-virtual {v9, v0, v2}, Landroid/media/IAudioPolicyService$Stub;->getReportedSurroundFormats(Landroid/media/audio/common/Int;[Landroid/media/audio/common/AudioFormatDescription;)V

    .line 1319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1321
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1322
    goto/16 :goto_970

    .line 1283
    .end local v0    # "_arg0":Landroid/media/audio/common/Int;
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :pswitch_339
    sget-object v0, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/Int;

    .line 1285
    .restart local v0    # "_arg0":Landroid/media/audio/common/Int;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1286
    .restart local v1    # "_arg1_length":I
    if-gez v1, :cond_349

    .line 1287
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    goto :goto_34b

    .line 1289
    .end local v2    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :cond_349
    new-array v2, v1, [Landroid/media/audio/common/AudioFormatDescription;

    .line 1292
    .restart local v2    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :goto_34b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1293
    .local v3, "_arg2_length":I
    if-gez v3, :cond_353

    .line 1294
    const/4 v4, 0x0

    .local v4, "_arg2":[Z
    goto :goto_355

    .line 1296
    .end local v4    # "_arg2":[Z
    :cond_353
    new-array v4, v3, [Z

    .line 1298
    .restart local v4    # "_arg2":[Z
    :goto_355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1299
    invoke-virtual {v9, v0, v2, v4}, Landroid/media/IAudioPolicyService$Stub;->getSurroundFormats(Landroid/media/audio/common/Int;[Landroid/media/audio/common/AudioFormatDescription;[Z)V

    .line 1300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1302
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1303
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 1304
    goto/16 :goto_970

    .line 1269
    .end local v0    # "_arg0":Landroid/media/audio/common/Int;
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    .end local v3    # "_arg2_length":I
    .end local v4    # "_arg2":[Z
    :pswitch_369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1271
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1273
    .local v1, "_arg1":I
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDeviceDescription;

    .line 1274
    .local v2, "_arg2":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getStreamVolumeDB(IILandroid/media/audio/common/AudioDeviceDescription;)F

    move-result v3

    .line 1276
    .local v3, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1278
    goto/16 :goto_970

    .line 1261
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v3    # "_result":F
    :pswitch_388
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->getMasterMono()Z

    move-result v0

    .line 1262
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1264
    goto/16 :goto_970

    .line 1253
    .end local v0    # "_result":Z
    :pswitch_394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1254
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setMasterMono(Z)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    goto/16 :goto_970

    .line 1244
    .end local v0    # "_arg0":Z
    :pswitch_3a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1245
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->stopAudioSource(I)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    goto/16 :goto_970

    .line 1232
    .end local v0    # "_arg0":I
    :pswitch_3b2
    sget-object v0, Landroid/media/AudioPortConfigFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPortConfigFw;

    .line 1234
    .local v0, "_arg0":Landroid/media/AudioPortConfigFw;
    sget-object v1, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributesInternal;

    .line 1235
    .local v1, "_arg1":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1236
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->startAudioSource(Landroid/media/AudioPortConfigFw;Landroid/media/AudioAttributesInternal;)I

    move-result v2

    .line 1237
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    goto/16 :goto_970

    .line 1223
    .end local v0    # "_arg0":Landroid/media/AudioPortConfigFw;
    .end local v1    # "_arg1":Landroid/media/AudioAttributesInternal;
    .end local v2    # "_result":I
    :pswitch_3d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1224
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->removeUserIdDeviceAffinities(I)V

    .line 1226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    goto/16 :goto_970

    .line 1212
    .end local v0    # "_arg0":I
    :pswitch_3e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1214
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/audio/common/AudioDevice;

    .line 1215
    .local v1, "_arg1":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->setUserIdDeviceAffinities(I[Landroid/media/audio/common/AudioDevice;)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    goto/16 :goto_970

    .line 1203
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/media/audio/common/AudioDevice;
    :pswitch_3f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1204
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->removeUidDeviceAffinities(I)V

    .line 1206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    goto/16 :goto_970

    .line 1192
    .end local v0    # "_arg0":I
    :pswitch_406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1194
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/audio/common/AudioDevice;

    .line 1195
    .restart local v1    # "_arg1":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->setUidDeviceAffinities(I[Landroid/media/audio/common/AudioDevice;)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    goto/16 :goto_970

    .line 1181
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/media/audio/common/AudioDevice;
    :pswitch_41d
    sget-object v0, Landroid/media/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioMix;

    .line 1183
    .local v0, "_arg0":[Landroid/media/AudioMix;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1184
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->registerPolicyMixes([Landroid/media/AudioMix;Z)V

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    goto/16 :goto_970

    .line 1173
    .end local v0    # "_arg0":[Landroid/media/AudioMix;
    .end local v1    # "_arg1":Z
    :pswitch_434
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->getPhoneState()I

    move-result v0

    .line 1174
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    goto/16 :goto_970

    .line 1165
    .end local v0    # "_result":I
    :pswitch_440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1166
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->releaseSoundTriggerSession(I)V

    .line 1168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    goto/16 :goto_970

    .line 1157
    .end local v0    # "_arg0":I
    :pswitch_44f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->acquireSoundTriggerSession()Landroid/media/SoundTriggerSession;

    move-result-object v0

    .line 1158
    .local v0, "_result":Landroid/media/SoundTriggerSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1160
    goto/16 :goto_970

    .line 1149
    .end local v0    # "_result":Landroid/media/SoundTriggerSession;
    :pswitch_45b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1150
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setAudioVolumeGroupCallbacksEnabled(Z)V

    .line 1152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    goto/16 :goto_970

    .line 1140
    .end local v0    # "_arg0":Z
    :pswitch_46a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1141
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setAudioPortCallbacksEnabled(Z)V

    .line 1143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    goto/16 :goto_970

    .line 1131
    .end local v0    # "_arg0":Z
    :pswitch_479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioPolicyServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyServiceClient;

    move-result-object v0

    .line 1132
    .local v0, "_arg0":Landroid/media/IAudioPolicyServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->registerClient(Landroid/media/IAudioPolicyServiceClient;)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    goto/16 :goto_970

    .line 1122
    .end local v0    # "_arg0":Landroid/media/IAudioPolicyServiceClient;
    :pswitch_48c
    sget-object v0, Landroid/media/AudioPortConfigFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPortConfigFw;

    .line 1123
    .local v0, "_arg0":Landroid/media/AudioPortConfigFw;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setAudioPortConfig(Landroid/media/AudioPortConfigFw;)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    goto/16 :goto_970

    .line 1103
    .end local v0    # "_arg0":Landroid/media/AudioPortConfigFw;
    :pswitch_49f
    sget-object v0, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/Int;

    .line 1105
    .local v0, "_arg0":Landroid/media/audio/common/Int;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1106
    .local v1, "_arg1_length":I
    if-gez v1, :cond_4af

    .line 1107
    const/4 v2, 0x0

    .local v2, "_arg1":[Landroid/media/AudioPatchFw;
    goto :goto_4b1

    .line 1109
    .end local v2    # "_arg1":[Landroid/media/AudioPatchFw;
    :cond_4af
    new-array v2, v1, [Landroid/media/AudioPatchFw;

    .line 1111
    .restart local v2    # "_arg1":[Landroid/media/AudioPatchFw;
    :goto_4b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1112
    invoke-virtual {v9, v0, v2}, Landroid/media/IAudioPolicyService$Stub;->listAudioPatches(Landroid/media/audio/common/Int;[Landroid/media/AudioPatchFw;)I

    move-result v3

    .line 1113
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1116
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1117
    goto/16 :goto_970

    .line 1094
    .end local v0    # "_arg0":Landroid/media/audio/common/Int;
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[Landroid/media/AudioPatchFw;
    .end local v3    # "_result":I
    :pswitch_4c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1095
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->releaseAudioPatch(I)V

    .line 1097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    goto/16 :goto_970

    .line 1082
    .end local v0    # "_arg0":I
    :pswitch_4d5
    sget-object v0, Landroid/media/AudioPatchFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPatchFw;

    .line 1084
    .local v0, "_arg0":Landroid/media/AudioPatchFw;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1085
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1086
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->createAudioPatch(Landroid/media/AudioPatchFw;I)I

    move-result v2

    .line 1087
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    goto/16 :goto_970

    .line 1072
    .end local v0    # "_arg0":Landroid/media/AudioPatchFw;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_4f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1073
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getAudioPort(I)Landroid/media/AudioPortFw;

    move-result-object v1

    .line 1075
    .local v1, "_result":Landroid/media/AudioPortFw;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1077
    goto/16 :goto_970

    .line 1062
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/media/AudioPortFw;
    :pswitch_503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1063
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->listDeclaredDevicePorts(I)[Landroid/media/AudioPortFw;

    move-result-object v1

    .line 1065
    .local v1, "_result":[Landroid/media/AudioPortFw;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1067
    goto/16 :goto_970

    .line 1039
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/media/AudioPortFw;
    :pswitch_516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1041
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1043
    .local v1, "_arg1":I
    sget-object v2, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/Int;

    .line 1045
    .local v2, "_arg2":Landroid/media/audio/common/Int;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1046
    .local v3, "_arg3_length":I
    if-gez v3, :cond_52e

    .line 1047
    const/4 v4, 0x0

    .local v4, "_arg3":[Landroid/media/AudioPortFw;
    goto :goto_530

    .line 1049
    .end local v4    # "_arg3":[Landroid/media/AudioPortFw;
    :cond_52e
    new-array v4, v3, [Landroid/media/AudioPortFw;

    .line 1051
    .restart local v4    # "_arg3":[Landroid/media/AudioPortFw;
    :goto_530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {v9, v0, v1, v2, v4}, Landroid/media/IAudioPolicyService$Stub;->listAudioPorts(IILandroid/media/audio/common/Int;[Landroid/media/AudioPortFw;)I

    move-result v5

    .line 1053
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1056
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1057
    goto/16 :goto_970

    .line 1027
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audio/common/Int;
    .end local v3    # "_arg3_length":I
    .end local v4    # "_arg3":[Landroid/media/AudioPortFw;
    .end local v5    # "_result":I
    :pswitch_545
    sget-object v0, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioConfigBase;

    .line 1029
    .local v0, "_arg0":Landroid/media/audio/common/AudioConfigBase;
    sget-object v1, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributesInternal;

    .line 1030
    .local v1, "_arg1":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->isDirectOutputSupported(Landroid/media/audio/common/AudioConfigBase;Landroid/media/AudioAttributesInternal;)Z

    move-result v2

    .line 1032
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1034
    goto/16 :goto_970

    .line 1017
    .end local v0    # "_arg0":Landroid/media/audio/common/AudioConfigBase;
    .end local v1    # "_arg1":Landroid/media/AudioAttributesInternal;
    .end local v2    # "_result":Z
    :pswitch_564
    sget-object v0, Landroid/media/audio/common/AudioOffloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioOffloadInfo;

    .line 1018
    .local v0, "_arg0":Landroid/media/audio/common/AudioOffloadInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getOffloadSupport(Landroid/media/audio/common/AudioOffloadInfo;)I

    move-result v1

    .line 1020
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    goto/16 :goto_970

    .line 1006
    .end local v0    # "_arg0":Landroid/media/audio/common/AudioOffloadInfo;
    .end local v1    # "_result":I
    :pswitch_57b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1008
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1009
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->setAllowedCapturePolicy(II)V

    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    goto/16 :goto_970

    .line 997
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_58e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 998
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->setSupportedSystemUsages([I)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    goto/16 :goto_970

    .line 988
    .end local v0    # "_arg0":[I
    :pswitch_59d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 989
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->removeStreamDefaultEffect(I)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    goto/16 :goto_970

    .line 979
    .end local v0    # "_arg0":I
    :pswitch_5ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 980
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->removeSourceDefaultEffect(I)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    goto/16 :goto_970

    .line 961
    .end local v0    # "_arg0":I
    :pswitch_5bb
    sget-object v0, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/audio/common/AudioUuid;

    .line 963
    .local v6, "_arg0":Landroid/media/audio/common/AudioUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 965
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/media/audio/common/AudioUuid;

    .line 967
    .local v8, "_arg2":Landroid/media/audio/common/AudioUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 969
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 970
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioPolicyService$Stub;->addStreamDefaultEffect(Landroid/media/audio/common/AudioUuid;Ljava/lang/String;Landroid/media/audio/common/AudioUuid;II)I

    move-result v0

    .line 972
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    goto/16 :goto_970

    .line 943
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Landroid/media/audio/common/AudioUuid;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/media/audio/common/AudioUuid;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_5f0
    sget-object v0, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/audio/common/AudioUuid;

    .line 945
    .restart local v6    # "_arg0":Landroid/media/audio/common/AudioUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 947
    .restart local v7    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/media/audio/common/AudioUuid;

    .line 949
    .restart local v8    # "_arg2":Landroid/media/audio/common/AudioUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 951
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 952
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioPolicyService$Stub;->addSourceDefaultEffect(Landroid/media/audio/common/AudioUuid;Ljava/lang/String;Landroid/media/audio/common/AudioUuid;II)I

    move-result v0

    .line 954
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    goto/16 :goto_970

    .line 930
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Landroid/media/audio/common/AudioUuid;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/media/audio/common/AudioUuid;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 932
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/Int;

    .line 933
    .local v1, "_arg1":Landroid/media/audio/common/Int;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->queryDefaultPreProcessing(ILandroid/media/audio/common/Int;)[Landroid/media/EffectDescriptor;

    move-result-object v2

    .line 935
    .local v2, "_result":[Landroid/media/EffectDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 937
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 938
    goto/16 :goto_970

    .line 920
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audio/common/Int;
    .end local v2    # "_result":[Landroid/media/EffectDescriptor;
    :pswitch_643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 921
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->isSourceActive(I)Z

    move-result v1

    .line 923
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 925
    goto/16 :goto_970

    .line 908
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 910
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 911
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->isStreamActiveRemotely(II)Z

    move-result v2

    .line 913
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    goto/16 :goto_970

    .line 896
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_66d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 898
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 899
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->isStreamActive(II)Z

    move-result v2

    .line 901
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 903
    goto/16 :goto_970

    .line 885
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 887
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 888
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->moveEffectsToIo([II)V

    .line 890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    goto/16 :goto_970

    .line 874
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    :pswitch_697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 876
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 877
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->setEffectEnabled(IZ)V

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto/16 :goto_970

    .line 865
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_6aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 866
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->unregisterEffect(I)V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_970

    .line 848
    .end local v0    # "_arg0":I
    :pswitch_6b9
    sget-object v0, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/EffectDescriptor;

    .line 850
    .local v6, "_arg0":Landroid/media/EffectDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 852
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 854
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 856
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 857
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioPolicyService$Stub;->registerEffect(Landroid/media/EffectDescriptor;IIII)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_970

    .line 838
    .end local v6    # "_arg0":Landroid/media/EffectDescriptor;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_6e5
    sget-object v0, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/EffectDescriptor;

    .line 839
    .local v0, "_arg0":Landroid/media/EffectDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getOutputForEffect(Landroid/media/EffectDescriptor;)I

    move-result v1

    .line 841
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    goto/16 :goto_970

    .line 826
    .end local v0    # "_arg0":Landroid/media/EffectDescriptor;
    .end local v1    # "_result":I
    :pswitch_6fc
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 828
    .local v0, "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 829
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributesInternal;Z)[Landroid/media/audio/common/AudioDevice;

    move-result-object v2

    .line 831
    .local v2, "_result":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 833
    goto/16 :goto_970

    .line 816
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[Landroid/media/audio/common/AudioDevice;
    :pswitch_717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 817
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getStrategyForStream(I)I

    move-result v1

    .line 819
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    goto/16 :goto_970

    .line 806
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_72a
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 807
    .local v0, "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributesInternal;)I

    move-result v1

    .line 809
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    goto/16 :goto_970

    .line 796
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_result":I
    :pswitch_741
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 797
    .restart local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributesInternal;)I

    move-result v1

    .line 799
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    goto/16 :goto_970

    .line 784
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_result":I
    :pswitch_758
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 786
    .restart local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    sget-object v1, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDeviceDescription;

    .line 787
    .local v1, "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getVolumeIndexForAttributes(Landroid/media/AudioAttributesInternal;Landroid/media/audio/common/AudioDeviceDescription;)I

    move-result v2

    .line 789
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    goto/16 :goto_970

    .line 771
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v2    # "_result":I
    :pswitch_777
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributesInternal;

    .line 773
    .restart local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    sget-object v1, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDeviceDescription;

    .line 775
    .restart local v1    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 776
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setVolumeIndexForAttributes(Landroid/media/AudioAttributesInternal;Landroid/media/audio/common/AudioDeviceDescription;I)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto/16 :goto_970

    .line 759
    .end local v0    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v1    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v2    # "_arg2":I
    :pswitch_796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 761
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDeviceDescription;

    .line 762
    .restart local v1    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->getStreamVolumeIndex(ILandroid/media/audio/common/AudioDeviceDescription;)I

    move-result v2

    .line 764
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    goto/16 :goto_970

    .line 746
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v2    # "_result":I
    :pswitch_7b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 748
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDeviceDescription;

    .line 750
    .restart local v1    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 751
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setStreamVolumeIndex(ILandroid/media/audio/common/AudioDeviceDescription;I)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    goto/16 :goto_970

    .line 733
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v2    # "_arg2":I
    :pswitch_7cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 735
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 738
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->initStreamVolume(III)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_970

    .line 724
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_7e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 725
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->releaseInput(I)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    goto/16 :goto_970

    .line 715
    .end local v0    # "_arg0":I
    :pswitch_7f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 716
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->stopInput(I)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_970

    .line 706
    .end local v0    # "_arg0":I
    :pswitch_801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 707
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->startInput(I)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    goto/16 :goto_970

    .line 682
    .end local v0    # "_arg0":I
    :pswitch_810
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/media/AudioAttributesInternal;

    .line 684
    .local v15, "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 686
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 688
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 690
    .local v18, "_arg3":I
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/AttributionSourceState;

    .line 692
    .local v19, "_arg4":Landroid/content/AttributionSourceState;
    sget-object v0, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/media/audio/common/AudioConfigBase;

    .line 694
    .local v20, "_arg5":Landroid/media/audio/common/AudioConfigBase;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 696
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 697
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioPolicyService$Stub;->getInputForAttr(Landroid/media/AudioAttributesInternal;IIILandroid/content/AttributionSourceState;Landroid/media/audio/common/AudioConfigBase;II)Landroid/media/GetInputForAttrResponse;

    move-result-object v0

    .line 699
    .local v0, "_result":Landroid/media/GetInputForAttrResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 701
    goto/16 :goto_970

    .line 673
    .end local v0    # "_result":Landroid/media/GetInputForAttrResponse;
    .end local v15    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/content/AttributionSourceState;
    .end local v20    # "_arg5":Landroid/media/audio/common/AudioConfigBase;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    :pswitch_861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 674
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->releaseOutput(I)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_970

    .line 664
    .end local v0    # "_arg0":I
    :pswitch_870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 665
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->stopOutput(I)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_970

    .line 655
    .end local v0    # "_arg0":I
    :pswitch_87f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 656
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->startOutput(I)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_970

    .line 635
    .end local v0    # "_arg0":I
    :pswitch_88e
    sget-object v0, Landroid/media/AudioAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/media/AudioAttributesInternal;

    .line 637
    .local v7, "_arg0":Landroid/media/AudioAttributesInternal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 639
    .local v8, "_arg1":I
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/AttributionSourceState;

    .line 641
    .local v15, "_arg2":Landroid/content/AttributionSourceState;
    sget-object v0, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/audio/common/AudioConfig;

    .line 643
    .local v16, "_arg3":Landroid/media/audio/common/AudioConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 645
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 646
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioPolicyService$Stub;->getOutputForAttr(Landroid/media/AudioAttributesInternal;ILandroid/content/AttributionSourceState;Landroid/media/audio/common/AudioConfig;II)Landroid/media/GetOutputForAttrResponse;

    move-result-object v0

    .line 648
    .local v0, "_result":Landroid/media/GetOutputForAttrResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 650
    goto/16 :goto_970

    .line 625
    .end local v0    # "_result":Landroid/media/GetOutputForAttrResponse;
    .end local v7    # "_arg0":Landroid/media/AudioAttributesInternal;
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v16    # "_arg3":Landroid/media/audio/common/AudioConfig;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_8d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getOutput(I)I

    move-result v1

    .line 628
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    goto/16 :goto_970

    .line 615
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 616
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getForceUse(I)I

    move-result v1

    .line 618
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    goto/16 :goto_970

    .line 604
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 607
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->setForceUse(II)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    goto :goto_970

    .line 593
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 595
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyService$Stub;->setPhoneState(II)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    goto :goto_970

    .line 580
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_91a
    sget-object v0, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioDevice;

    .line 582
    .local v0, "_arg0":Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioFormatDescription;

    .line 585
    .local v2, "_arg2":Landroid/media/audio/common/AudioFormatDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->handleDeviceConfigChange(Landroid/media/audio/common/AudioDevice;Ljava/lang/String;Landroid/media/audio/common/AudioFormatDescription;)V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto :goto_970

    .line 570
    .end local v0    # "_arg0":Landroid/media/audio/common/AudioDevice;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/audio/common/AudioFormatDescription;
    :pswitch_938
    sget-object v0, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audio/common/AudioDevice;

    .line 571
    .restart local v0    # "_arg0":Landroid/media/audio/common/AudioDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {v9, v0}, Landroid/media/IAudioPolicyService$Stub;->getDeviceConnectionState(Landroid/media/audio/common/AudioDevice;)I

    move-result v1

    .line 573
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    goto :goto_970

    .line 557
    .end local v0    # "_arg0":Landroid/media/audio/common/AudioDevice;
    .end local v1    # "_result":I
    :pswitch_94e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 559
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/audio/common/AudioPort;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioPort;

    .line 561
    .local v1, "_arg1":Landroid/media/audio/common/AudioPort;
    sget-object v2, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioFormatDescription;

    .line 562
    .restart local v2    # "_arg2":Landroid/media/audio/common/AudioFormatDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setDeviceConnectionState(ILandroid/media/audio/common/AudioPort;Landroid/media/audio/common/AudioFormatDescription;)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    goto :goto_970

    .line 551
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audio/common/AudioPort;
    .end local v2    # "_arg2":Landroid/media/audio/common/AudioFormatDescription;
    :pswitch_96c
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyService$Stub;->onNewAudioModulesAvailable()V

    .line 552
    nop

    .line 1700
    :goto_970
    return v14

    nop

    :pswitch_data_972
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_978
    .packed-switch 0x1
        :pswitch_96c
        :pswitch_94e
        :pswitch_938
        :pswitch_91a
        :pswitch_908
        :pswitch_8f6
        :pswitch_8e3
        :pswitch_8d0
        :pswitch_88e
        :pswitch_87f
        :pswitch_870
        :pswitch_861
        :pswitch_810
        :pswitch_801
        :pswitch_7f2
        :pswitch_7e3
        :pswitch_7cc
        :pswitch_7b1
        :pswitch_796
        :pswitch_777
        :pswitch_758
        :pswitch_741
        :pswitch_72a
        :pswitch_717
        :pswitch_6fc
        :pswitch_6e5
        :pswitch_6b9
        :pswitch_6aa
        :pswitch_697
        :pswitch_684
        :pswitch_66d
        :pswitch_656
        :pswitch_643
        :pswitch_625
        :pswitch_5f0
        :pswitch_5bb
        :pswitch_5ac
        :pswitch_59d
        :pswitch_58e
        :pswitch_57b
        :pswitch_564
        :pswitch_545
        :pswitch_516
        :pswitch_503
        :pswitch_4f0
        :pswitch_4d5
        :pswitch_4c6
        :pswitch_49f
        :pswitch_48c
        :pswitch_479
        :pswitch_46a
        :pswitch_45b
        :pswitch_44f
        :pswitch_440
        :pswitch_434
        :pswitch_41d
        :pswitch_406
        :pswitch_3f7
        :pswitch_3e0
        :pswitch_3d1
        :pswitch_3b2
        :pswitch_3a3
        :pswitch_394
        :pswitch_388
        :pswitch_369
        :pswitch_339
        :pswitch_316
        :pswitch_2ff
        :pswitch_2e8
        :pswitch_2d9
        :pswitch_2ca
        :pswitch_2bb
        :pswitch_2ac
        :pswitch_2a0
        :pswitch_294
        :pswitch_281
        :pswitch_275
        :pswitch_25a
        :pswitch_24e
        :pswitch_233
        :pswitch_224
        :pswitch_218
        :pswitch_1fd
        :pswitch_1e2
        :pswitch_1cf
        :pswitch_1b8
        :pswitch_19d
        :pswitch_182
        :pswitch_167
        :pswitch_154
        :pswitch_13d
        :pswitch_126
        :pswitch_10f
        :pswitch_e8
        :pswitch_c9
        :pswitch_b2
        :pswitch_9f
        :pswitch_7c
        :pswitch_61
        :pswitch_46
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
