.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

.field static final PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

.field static final PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

.field static final PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

.field static final PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

.field static final PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

.field static final PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final TRANSACTION_abandonAudioFocus:I = 0x47

.field static final TRANSACTION_abandonAudioFocusForTest:I = 0xb0

.field static final TRANSACTION_addAssistantServicesUids:I = 0xde

.field static final TRANSACTION_addMixForPolicy:I = 0x6c

.field static final TRANSACTION_addOnDevicesForAttributesChangedListener:I = 0x8d

.field static final TRANSACTION_addPackage:I = 0xfe

.field static final TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xc6

.field static final TRANSACTION_adjustStreamVolume:I = 0xa

.field static final TRANSACTION_adjustStreamVolumeForUid:I = 0x9e

.field static final TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xb

.field static final TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0x9f

.field static final TRANSACTION_adjustVolumeGroupVolume:I = 0x1f

.field static final TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0xa8

.field static final TRANSACTION_canBeSpatialized:I = 0xbe

.field static final TRANSACTION_cancelMuteAwaitConnection:I = 0xd7

.field static final TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0x9a

.field static final TRANSACTION_clearPreferredMixerAttributes:I = 0xe6

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x5e

.field static final TRANSACTION_dismissVolumePanel:I = 0x110

.field static final TRANSACTION_dispatchFocusChange:I = 0x78

.field static final TRANSACTION_forceComputeCsdOnAllDevices:I = 0x65

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x12

.field static final TRANSACTION_forceUseFrameworkMel:I = 0x64

.field static final TRANSACTION_forceVolumeControlStream:I = 0x4d

.field static final TRANSACTION_getA2dpDeviceVolume:I = 0x114

.field static final TRANSACTION_getActiveAssistantServiceUids:I = 0xe2

.field static final TRANSACTION_getActivePlaybackConfigurations:I = 0x76

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x73

.field static final TRANSACTION_getActualHeadTrackingMode:I = 0xcb

.field static final TRANSACTION_getAdditionalOutputDeviceDelay:I = 0xad

.field static final TRANSACTION_getAllowedCapturePolicy:I = 0x90

.field static final TRANSACTION_getAppDevice:I = 0xf2

.field static final TRANSACTION_getAppVolume:I = 0xf4

.field static final TRANSACTION_getAssistantServicesUids:I = 0xe1

.field static final TRANSACTION_getAudioProductStrategies:I = 0x23

.field static final TRANSACTION_getAudioServiceConfig:I = 0xed

.field static final TRANSACTION_getAudioVolumeGroups:I = 0x18

.field static final TRANSACTION_getAvailableCommunicationDeviceIds:I = 0xa3

.field static final TRANSACTION_getCommunicationDevice:I = 0xa5

.field static final TRANSACTION_getCsd:I = 0x62

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x49

.field static final TRANSACTION_getCurrentAudioFocusPackageName:I = 0x111

.field static final TRANSACTION_getDefaultVolumeInfo:I = 0xd4

.field static final TRANSACTION_getDesiredHeadTrackingMode:I = 0xc9

.field static final TRANSACTION_getDeviceMaskForStream:I = 0xa2

.field static final TRANSACTION_getDeviceVolume:I = 0xf

.field static final TRANSACTION_getDeviceVolumeBehavior:I = 0x97

.field static final TRANSACTION_getDevicesForAttributes:I = 0x8b

.field static final TRANSACTION_getDevicesForAttributesUnprotected:I = 0x8c

.field static final TRANSACTION_getEncodedSurroundMode:I = 0x3d

.field static final TRANSACTION_getExcludedRingtoneTitles:I = 0x11b

.field static final TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0xb1

.field static final TRANSACTION_getFineVolume:I = 0x103

.field static final TRANSACTION_getFloatVolumeTable:I = 0x115

.field static final TRANSACTION_getFocusRampTimeMs:I = 0x77

.field static final TRANSACTION_getFocusStack:I = 0xdc

.field static final TRANSACTION_getHalVersion:I = 0xe4

.field static final TRANSACTION_getIndependentStreamTypes:I = 0x51

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0x20

.field static final TRANSACTION_getLastAudibleVolumeForVolumeGroup:I = 0x1d

.field static final TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0xae

.field static final TRANSACTION_getMediaVolumeSteps:I = 0x10d

.field static final TRANSACTION_getMode:I = 0x32

.field static final TRANSACTION_getModeInternal:I = 0x11e

.field static final TRANSACTION_getMuteInterval:I = 0x108

.field static final TRANSACTION_getMutingExpectedDevice:I = 0xd8

.field static final TRANSACTION_getNonDefaultDevicesForStrategy:I = 0x8a

.field static final TRANSACTION_getOutputRs2UpperBound:I = 0x60

.field static final TRANSACTION_getPinAppInfo:I = 0xfb

.field static final TRANSACTION_getPinDevice:I = 0xfc

.field static final TRANSACTION_getPreferredDevicesForCapturePreset:I = 0x9b

.field static final TRANSACTION_getPreferredDevicesForStrategy:I = 0x87

.field static final TRANSACTION_getPrevRingerMode:I = 0x10a

.field static final TRANSACTION_getRadioOutputPath:I = 0x10f

.field static final TRANSACTION_getRemainingMuteIntervalMs:I = 0x109

.field static final TRANSACTION_getReportedSurroundFormats:I = 0x39

.field static final TRANSACTION_getRingerModeExternal:I = 0x2b

.field static final TRANSACTION_getRingerModeInternal:I = 0x2c

.field static final TRANSACTION_getRingtonePlayer:I = 0x4f

.field static final TRANSACTION_getSelectedAppList:I = 0xfd

.field static final TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xc5

.field static final TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0xb4

.field static final TRANSACTION_getSpatializerOutput:I = 0xd0

.field static final TRANSACTION_getSpatializerParameter:I = 0xcf

.field static final TRANSACTION_getStreamMaxVolume:I = 0x17

.field static final TRANSACTION_getStreamMinVolume:I = 0x16

.field static final TRANSACTION_getStreamTypeAlias:I = 0x52

.field static final TRANSACTION_getStreamVolume:I = 0x15

.field static final TRANSACTION_getStreamVolumeForDevice:I = 0xfa

.field static final TRANSACTION_getSupportedHeadTrackingModes:I = 0xca

.field static final TRANSACTION_getSupportedSystemUsages:I = 0x22

.field static final TRANSACTION_getSurroundFormats:I = 0x38

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x50

.field static final TRANSACTION_getUidForDevice:I = 0xf0

.field static final TRANSACTION_getVibrateSetting:I = 0x2f

.field static final TRANSACTION_getVolumeController:I = 0x5a

.field static final TRANSACTION_getVolumeGroupMaxVolumeIndex:I = 0x1b

.field static final TRANSACTION_getVolumeGroupMinVolumeIndex:I = 0x1c

.field static final TRANSACTION_getVolumeGroupVolumeIndex:I = 0x1a

.field static final TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x7a

.field static final TRANSACTION_handleVolumeKey:I = 0x10

.field static final TRANSACTION_hasHapticChannels:I = 0x83

.field static final TRANSACTION_hasHeadTracker:I = 0xb8

.field static final TRANSACTION_hasRegisteredDynamicPolicy:I = 0x70

.field static final TRANSACTION_isAlreadyInDB:I = 0x100

.field static final TRANSACTION_isAppMute:I = 0xf6

.field static final TRANSACTION_isAudioServerRunning:I = 0x7e

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x45

.field static final TRANSACTION_isBluetoothScoOn:I = 0x43

.field static final TRANSACTION_isBluetoothVariableLatencyEnabled:I = 0xeb

.field static final TRANSACTION_isCallScreeningModeSupported:I = 0x84

.field static final TRANSACTION_isCameraSoundForced:I = 0x58

.field static final TRANSACTION_isCsdEnabled:I = 0x66

.field static final TRANSACTION_isForceSpeakerOn:I = 0x105

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x68

.field static final TRANSACTION_isHeadTrackerAvailable:I = 0xbb

.field static final TRANSACTION_isHeadTrackerEnabled:I = 0xba

.field static final TRANSACTION_isHomeSoundEffectEnabled:I = 0xaa

.field static final TRANSACTION_isHotwordStreamSupported:I = 0x26

.field static final TRANSACTION_isInAllowedList:I = 0x101

.field static final TRANSACTION_isMasterMute:I = 0x13

.field static final TRANSACTION_isMicrophoneMuted:I = 0x24

.field static final TRANSACTION_isMultiSoundOn:I = 0xf8

.field static final TRANSACTION_isMusicActive:I = 0xa1

.field static final TRANSACTION_isPstnCallAudioInterceptable:I = 0xd5

.field static final TRANSACTION_isSafeMediaVolumeStateActive:I = 0x11a

.field static final TRANSACTION_isSpatializerAvailable:I = 0xb6

.field static final TRANSACTION_isSpatializerAvailableForDevice:I = 0xb7

.field static final TRANSACTION_isSpatializerEnabled:I = 0xb5

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x3f

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x5d

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x5c

.field static final TRANSACTION_isStreamMute:I = 0x11

.field static final TRANSACTION_isSurroundFormatEnabled:I = 0x3b

.field static final TRANSACTION_isUltrasoundSupported:I = 0x25

.field static final TRANSACTION_isUsingAudio:I = 0x112

.field static final TRANSACTION_isValidRingerMode:I = 0x2d

.field static final TRANSACTION_isVolumeControlUsingVolumeGroups:I = 0x53

.field static final TRANSACTION_isVolumeFixed:I = 0xd3

.field static final TRANSACTION_isVolumeGroupMuted:I = 0x1e

.field static final TRANSACTION_loadSoundEffects:I = 0x35

.field static final TRANSACTION_lowerVolumeToRs1:I = 0x5f

.field static final TRANSACTION_muteAwaitConnection:I = 0xd6

.field static final TRANSACTION_nativeEvent:I = 0x11d

.field static final TRANSACTION_notifySafetyVolumeDialogVisible:I = 0x11c

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x5b

.field static final TRANSACTION_playSoundEffect:I = 0x33

.field static final TRANSACTION_playSoundEffectVolume:I = 0x34

.field static final TRANSACTION_playerAttributes:I = 0x2

.field static final TRANSACTION_playerEvent:I = 0x3

.field static final TRANSACTION_playerHasOpPlayAudio:I = 0x79

.field static final TRANSACTION_playerSessionId:I = 0x8

.field static final TRANSACTION_portEvent:I = 0x9

.field static final TRANSACTION_recenterHeadTracker:I = 0xcd

.field static final TRANSACTION_recordRingtoneChanger:I = 0x117

.field static final TRANSACTION_recorderEvent:I = 0x6

.field static final TRANSACTION_registerAudioPolicy:I = 0x69

.field static final TRANSACTION_registerAudioServerStateDispatcher:I = 0x7c

.field static final TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0x9c

.field static final TRANSACTION_registerCommunicationDeviceDispatcher:I = 0xa6

.field static final TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xdb

.field static final TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0xe3

.field static final TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xc3

.field static final TRANSACTION_registerModeDispatcher:I = 0xb2

.field static final TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xd9

.field static final TRANSACTION_registerPlaybackCallback:I = 0x74

.field static final TRANSACTION_registerPlaybackCallbackWithPackage:I = 0x118

.field static final TRANSACTION_registerPreferredMixerAttributesDispatcher:I = 0xe7

.field static final TRANSACTION_registerRecordingCallback:I = 0x71

.field static final TRANSACTION_registerSpatializerCallback:I = 0xbf

.field static final TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0xbc

.field static final TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xc1

.field static final TRANSACTION_registerSpatializerOutputCallback:I = 0xd1

.field static final TRANSACTION_registerStrategyNonDefaultDevicesDispatcher:I = 0x93

.field static final TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0x91

.field static final TRANSACTION_registerStreamAliasingDispatcher:I = 0x54

.field static final TRANSACTION_releasePlayer:I = 0x4

.field static final TRANSACTION_releaseRecorder:I = 0x7

.field static final TRANSACTION_reloadAudioSettings:I = 0x37

.field static final TRANSACTION_removeAssistantServicesUids:I = 0xdf

.field static final TRANSACTION_removeDeviceAsNonDefaultForStrategy:I = 0x89

.field static final TRANSACTION_removeMixForPolicy:I = 0x6d

.field static final TRANSACTION_removeOnDevicesForAttributesChangedListener:I = 0x8e

.field static final TRANSACTION_removePackageForName:I = 0xff

.field static final TRANSACTION_removePreferredDevicesForStrategy:I = 0x86

.field static final TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xc7

.field static final TRANSACTION_removeUidDeviceAffinity:I = 0x80

.field static final TRANSACTION_removeUserIdDeviceAffinity:I = 0x82

.field static final TRANSACTION_requestAudioFocus:I = 0x46

.field static final TRANSACTION_requestAudioFocusForTest:I = 0xaf

.field static final TRANSACTION_secGetActiveStreamType:I = 0xef

.field static final TRANSACTION_sendFocusLoss:I = 0xdd

.field static final TRANSACTION_setA2dpDeviceVolume:I = 0x113

.field static final TRANSACTION_setA2dpSuspended:I = 0x41

.field static final TRANSACTION_setActiveAssistantServiceUids:I = 0xe0

.field static final TRANSACTION_setAdditionalOutputDeviceDelay:I = 0xac

.field static final TRANSACTION_setAllowedCapturePolicy:I = 0x8f

.field static final TRANSACTION_setAppDevice:I = 0xf1

.field static final TRANSACTION_setAppMute:I = 0xf5

.field static final TRANSACTION_setAppVolume:I = 0xf3

.field static final TRANSACTION_setAudioServiceConfig:I = 0xec

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x44

.field static final TRANSACTION_setBluetoothScoOn:I = 0x40

.field static final TRANSACTION_setBluetoothVariableLatencyEnabled:I = 0xea

.field static final TRANSACTION_setBtOffloadEnable:I = 0x119

.field static final TRANSACTION_setCommunicationDevice:I = 0xa4

.field static final TRANSACTION_setCsd:I = 0x63

.field static final TRANSACTION_setDesiredHeadTrackingMode:I = 0xc8

.field static final TRANSACTION_setDeviceAsNonDefaultForStrategy:I = 0x88

.field static final TRANSACTION_setDeviceToForceByUser:I = 0x106

.field static final TRANSACTION_setDeviceVolume:I = 0xe

.field static final TRANSACTION_setDeviceVolumeBehavior:I = 0x96

.field static final TRANSACTION_setEncodedSurroundMode:I = 0x3c

.field static final TRANSACTION_setFineVolume:I = 0x102

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x6e

.field static final TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x7b

.field static final TRANSACTION_setForceSpeakerOn:I = 0x104

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x67

.field static final TRANSACTION_setHeadTrackerEnabled:I = 0xb9

.field static final TRANSACTION_setHomeSoundEffectEnabled:I = 0xab

.field static final TRANSACTION_setLeAudioSuspended:I = 0x42

.field static final TRANSACTION_setMasterMute:I = 0x14

.field static final TRANSACTION_setMediaVolumeSteps:I = 0x10c

.field static final TRANSACTION_setMicrophoneMute:I = 0x27

.field static final TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x28

.field static final TRANSACTION_setMode:I = 0x31

.field static final TRANSACTION_setMultiAudioFocusEnabled:I = 0x98

.field static final TRANSACTION_setMultiSoundOn:I = 0xf7

.field static final TRANSACTION_setMuteInterval:I = 0x107

.field static final TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0xa9

.field static final TRANSACTION_setNotifAliasRingForTest:I = 0x55

.field static final TRANSACTION_setOutputRs2UpperBound:I = 0x61

.field static final TRANSACTION_setPreferredDevicesForCapturePreset:I = 0x99

.field static final TRANSACTION_setPreferredDevicesForStrategy:I = 0x85

.field static final TRANSACTION_setPreferredMixerAttributes:I = 0xe5

.field static final TRANSACTION_setRadioOutputPath:I = 0x10e

.field static final TRANSACTION_setRemoteMic:I = 0x116

.field static final TRANSACTION_setRingerModeExternal:I = 0x29

.field static final TRANSACTION_setRingerModeInternal:I = 0x2a

.field static final TRANSACTION_setRingtonePlayer:I = 0x4e

.field static final TRANSACTION_setRttEnabled:I = 0x95

.field static final TRANSACTION_setSoundSettingEventBroadcastIntent:I = 0x10b

.field static final TRANSACTION_setSpatializerEnabled:I = 0xbd

.field static final TRANSACTION_setSpatializerGlobalTransform:I = 0xcc

.field static final TRANSACTION_setSpatializerParameter:I = 0xce

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x3e

.field static final TRANSACTION_setStreamVolume:I = 0xc

.field static final TRANSACTION_setStreamVolumeForDeviceWithAttribution:I = 0xf9

.field static final TRANSACTION_setStreamVolumeForUid:I = 0xa0

.field static final TRANSACTION_setStreamVolumeWithAttribution:I = 0xd

.field static final TRANSACTION_setSupportedSystemUsages:I = 0x21

.field static final TRANSACTION_setSurroundFormatEnabled:I = 0x3a

.field static final TRANSACTION_setTestDeviceConnectionState:I = 0xda

.field static final TRANSACTION_setUidDeviceAffinity:I = 0x7f

.field static final TRANSACTION_setUserIdDeviceAffinity:I = 0x81

.field static final TRANSACTION_setVibrateSetting:I = 0x2e

.field static final TRANSACTION_setVolumeController:I = 0x59

.field static final TRANSACTION_setVolumeGroupVolumeIndex:I = 0x19

.field static final TRANSACTION_setVolumePolicy:I = 0x6f

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x56

.field static final TRANSACTION_shouldShowRingtoneVolume:I = 0xee

.field static final TRANSACTION_shouldVibrate:I = 0x30

.field static final TRANSACTION_startBluetoothSco:I = 0x4a

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x4b

.field static final TRANSACTION_startWatchingRoutes:I = 0x57

.field static final TRANSACTION_stopBluetoothSco:I = 0x4c

.field static final TRANSACTION_supportsBluetoothVariableLatency:I = 0xe9

.field static final TRANSACTION_trackPlayer:I = 0x1

.field static final TRANSACTION_trackRecorder:I = 0x5

.field static final TRANSACTION_unloadSoundEffects:I = 0x36

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x48

.field static final TRANSACTION_unregisterAudioPolicy:I = 0x6b

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x6a

.field static final TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x7d

.field static final TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0x9d

.field static final TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0xa7

.field static final TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xc4

.field static final TRANSACTION_unregisterModeDispatcher:I = 0xb3

.field static final TRANSACTION_unregisterPlaybackCallback:I = 0x75

.field static final TRANSACTION_unregisterPreferredMixerAttributesDispatcher:I = 0xe8

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x72

.field static final TRANSACTION_unregisterSpatializerCallback:I = 0xc0

.field static final TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xc2

.field static final TRANSACTION_unregisterSpatializerOutputCallback:I = 0xd2

.field static final TRANSACTION_unregisterStrategyNonDefaultDevicesDispatcher:I = 0x94

.field static final TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0x92


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 9771
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    .line 9777
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    .line 9817
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    .line 9823
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    .line 9829
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    .line 9835
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    .line 10124
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    .line 10130
    const-string v2, "android.permission.QUERY_AUDIO_STATE"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1095
    nop

    .line 1096
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1095
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/IAudioService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1097
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 1085
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1086
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1087
    if-eqz p1, :cond_d

    .line 1090
    iput-object p1, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1091
    return-void

    .line 1088
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1104
    if-nez p0, :cond_4

    .line 1105
    const/4 v0, 0x0

    return-object v0

    .line 1107
    :cond_4
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_14

    .line 1109
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    .line 1111
    :cond_14
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1120
    packed-switch p0, :pswitch_data_360

    .line 2268
    const/4 v0, 0x0

    return-object v0

    .line 2264
    :pswitch_5
    const-string v0, "getModeInternal"

    return-object v0

    .line 2260
    :pswitch_8
    const-string v0, "nativeEvent"

    return-object v0

    .line 2256
    :pswitch_b
    const-string v0, "notifySafetyVolumeDialogVisible"

    return-object v0

    .line 2252
    :pswitch_e
    const-string v0, "getExcludedRingtoneTitles"

    return-object v0

    .line 2248
    :pswitch_11
    const-string v0, "isSafeMediaVolumeStateActive"

    return-object v0

    .line 2244
    :pswitch_14
    const-string v0, "setBtOffloadEnable"

    return-object v0

    .line 2240
    :pswitch_17
    const-string v0, "registerPlaybackCallbackWithPackage"

    return-object v0

    .line 2236
    :pswitch_1a
    const-string v0, "recordRingtoneChanger"

    return-object v0

    .line 2232
    :pswitch_1d
    const-string v0, "setRemoteMic"

    return-object v0

    .line 2228
    :pswitch_20
    const-string v0, "getFloatVolumeTable"

    return-object v0

    .line 2224
    :pswitch_23
    const-string v0, "getA2dpDeviceVolume"

    return-object v0

    .line 2220
    :pswitch_26
    const-string v0, "setA2dpDeviceVolume"

    return-object v0

    .line 2216
    :pswitch_29
    const-string v0, "isUsingAudio"

    return-object v0

    .line 2212
    :pswitch_2c
    const-string v0, "getCurrentAudioFocusPackageName"

    return-object v0

    .line 2208
    :pswitch_2f
    const-string v0, "dismissVolumePanel"

    return-object v0

    .line 2204
    :pswitch_32
    const-string v0, "getRadioOutputPath"

    return-object v0

    .line 2200
    :pswitch_35
    const-string v0, "setRadioOutputPath"

    return-object v0

    .line 2196
    :pswitch_38
    const-string v0, "getMediaVolumeSteps"

    return-object v0

    .line 2192
    :pswitch_3b
    const-string v0, "setMediaVolumeSteps"

    return-object v0

    .line 2188
    :pswitch_3e
    const-string v0, "setSoundSettingEventBroadcastIntent"

    return-object v0

    .line 2184
    :pswitch_41
    const-string v0, "getPrevRingerMode"

    return-object v0

    .line 2180
    :pswitch_44
    const-string v0, "getRemainingMuteIntervalMs"

    return-object v0

    .line 2176
    :pswitch_47
    const-string v0, "getMuteInterval"

    return-object v0

    .line 2172
    :pswitch_4a
    const-string v0, "setMuteInterval"

    return-object v0

    .line 2168
    :pswitch_4d
    const-string v0, "setDeviceToForceByUser"

    return-object v0

    .line 2164
    :pswitch_50
    const-string v0, "isForceSpeakerOn"

    return-object v0

    .line 2160
    :pswitch_53
    const-string v0, "setForceSpeakerOn"

    return-object v0

    .line 2156
    :pswitch_56
    const-string v0, "getFineVolume"

    return-object v0

    .line 2152
    :pswitch_59
    const-string v0, "setFineVolume"

    return-object v0

    .line 2148
    :pswitch_5c
    const-string v0, "isInAllowedList"

    return-object v0

    .line 2144
    :pswitch_5f
    const-string v0, "isAlreadyInDB"

    return-object v0

    .line 2140
    :pswitch_62
    const-string v0, "removePackageForName"

    return-object v0

    .line 2136
    :pswitch_65
    const-string v0, "addPackage"

    return-object v0

    .line 2132
    :pswitch_68
    const-string v0, "getSelectedAppList"

    return-object v0

    .line 2128
    :pswitch_6b
    const-string v0, "getPinDevice"

    return-object v0

    .line 2124
    :pswitch_6e
    const-string v0, "getPinAppInfo"

    return-object v0

    .line 2120
    :pswitch_71
    const-string v0, "getStreamVolumeForDevice"

    return-object v0

    .line 2116
    :pswitch_74
    const-string v0, "setStreamVolumeForDeviceWithAttribution"

    return-object v0

    .line 2112
    :pswitch_77
    const-string v0, "isMultiSoundOn"

    return-object v0

    .line 2108
    :pswitch_7a
    const-string v0, "setMultiSoundOn"

    return-object v0

    .line 2104
    :pswitch_7d
    const-string v0, "isAppMute"

    return-object v0

    .line 2100
    :pswitch_80
    const-string v0, "setAppMute"

    return-object v0

    .line 2096
    :pswitch_83
    const-string v0, "getAppVolume"

    return-object v0

    .line 2092
    :pswitch_86
    const-string v0, "setAppVolume"

    return-object v0

    .line 2088
    :pswitch_89
    const-string v0, "getAppDevice"

    return-object v0

    .line 2084
    :pswitch_8c
    const-string v0, "setAppDevice"

    return-object v0

    .line 2080
    :pswitch_8f
    const-string v0, "getUidForDevice"

    return-object v0

    .line 2076
    :pswitch_92
    const-string v0, "secGetActiveStreamType"

    return-object v0

    .line 2072
    :pswitch_95
    const-string v0, "shouldShowRingtoneVolume"

    return-object v0

    .line 2068
    :pswitch_98
    const-string v0, "getAudioServiceConfig"

    return-object v0

    .line 2064
    :pswitch_9b
    const-string v0, "setAudioServiceConfig"

    return-object v0

    .line 2060
    :pswitch_9e
    const-string v0, "isBluetoothVariableLatencyEnabled"

    return-object v0

    .line 2056
    :pswitch_a1
    const-string v0, "setBluetoothVariableLatencyEnabled"

    return-object v0

    .line 2052
    :pswitch_a4
    const-string v0, "supportsBluetoothVariableLatency"

    return-object v0

    .line 2048
    :pswitch_a7
    const-string v0, "unregisterPreferredMixerAttributesDispatcher"

    return-object v0

    .line 2044
    :pswitch_aa
    const-string v0, "registerPreferredMixerAttributesDispatcher"

    return-object v0

    .line 2040
    :pswitch_ad
    const-string v0, "clearPreferredMixerAttributes"

    return-object v0

    .line 2036
    :pswitch_b0
    const-string v0, "setPreferredMixerAttributes"

    return-object v0

    .line 2032
    :pswitch_b3
    const-string v0, "getHalVersion"

    return-object v0

    .line 2028
    :pswitch_b6
    const-string v0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object v0

    .line 2024
    :pswitch_b9
    const-string v0, "getActiveAssistantServiceUids"

    return-object v0

    .line 2020
    :pswitch_bc
    const-string v0, "getAssistantServicesUids"

    return-object v0

    .line 2016
    :pswitch_bf
    const-string v0, "setActiveAssistantServiceUids"

    return-object v0

    .line 2012
    :pswitch_c2
    const-string v0, "removeAssistantServicesUids"

    return-object v0

    .line 2008
    :pswitch_c5
    const-string v0, "addAssistantServicesUids"

    return-object v0

    .line 2004
    :pswitch_c8
    const-string v0, "sendFocusLoss"

    return-object v0

    .line 2000
    :pswitch_cb
    const-string v0, "getFocusStack"

    return-object v0

    .line 1996
    :pswitch_ce
    const-string v0, "registerDeviceVolumeBehaviorDispatcher"

    return-object v0

    .line 1992
    :pswitch_d1
    const-string v0, "setTestDeviceConnectionState"

    return-object v0

    .line 1988
    :pswitch_d4
    const-string v0, "registerMuteAwaitConnectionDispatcher"

    return-object v0

    .line 1984
    :pswitch_d7
    const-string v0, "getMutingExpectedDevice"

    return-object v0

    .line 1980
    :pswitch_da
    const-string v0, "cancelMuteAwaitConnection"

    return-object v0

    .line 1976
    :pswitch_dd
    const-string v0, "muteAwaitConnection"

    return-object v0

    .line 1972
    :pswitch_e0
    const-string v0, "isPstnCallAudioInterceptable"

    return-object v0

    .line 1968
    :pswitch_e3
    const-string v0, "getDefaultVolumeInfo"

    return-object v0

    .line 1964
    :pswitch_e6
    const-string v0, "isVolumeFixed"

    return-object v0

    .line 1960
    :pswitch_e9
    const-string v0, "unregisterSpatializerOutputCallback"

    return-object v0

    .line 1956
    :pswitch_ec
    const-string v0, "registerSpatializerOutputCallback"

    return-object v0

    .line 1952
    :pswitch_ef
    const-string v0, "getSpatializerOutput"

    return-object v0

    .line 1948
    :pswitch_f2
    const-string v0, "getSpatializerParameter"

    return-object v0

    .line 1944
    :pswitch_f5
    const-string v0, "setSpatializerParameter"

    return-object v0

    .line 1940
    :pswitch_f8
    const-string v0, "recenterHeadTracker"

    return-object v0

    .line 1936
    :pswitch_fb
    const-string v0, "setSpatializerGlobalTransform"

    return-object v0

    .line 1932
    :pswitch_fe
    const-string v0, "getActualHeadTrackingMode"

    return-object v0

    .line 1928
    :pswitch_101
    const-string v0, "getSupportedHeadTrackingModes"

    return-object v0

    .line 1924
    :pswitch_104
    const-string v0, "getDesiredHeadTrackingMode"

    return-object v0

    .line 1920
    :pswitch_107
    const-string v0, "setDesiredHeadTrackingMode"

    return-object v0

    .line 1916
    :pswitch_10a
    const-string v0, "removeSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1912
    :pswitch_10d
    const-string v0, "addSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1908
    :pswitch_110
    const-string v0, "getSpatializerCompatibleAudioDevices"

    return-object v0

    .line 1904
    :pswitch_113
    const-string v0, "unregisterHeadToSoundstagePoseCallback"

    return-object v0

    .line 1900
    :pswitch_116
    const-string v0, "registerHeadToSoundstagePoseCallback"

    return-object v0

    .line 1896
    :pswitch_119
    const-string v0, "unregisterSpatializerHeadTrackingCallback"

    return-object v0

    .line 1892
    :pswitch_11c
    const-string v0, "registerSpatializerHeadTrackingCallback"

    return-object v0

    .line 1888
    :pswitch_11f
    const-string v0, "unregisterSpatializerCallback"

    return-object v0

    .line 1884
    :pswitch_122
    const-string v0, "registerSpatializerCallback"

    return-object v0

    .line 1880
    :pswitch_125
    const-string v0, "canBeSpatialized"

    return-object v0

    .line 1876
    :pswitch_128
    const-string v0, "setSpatializerEnabled"

    return-object v0

    .line 1872
    :pswitch_12b
    const-string v0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object v0

    .line 1868
    :pswitch_12e
    const-string v0, "isHeadTrackerAvailable"

    return-object v0

    .line 1864
    :pswitch_131
    const-string v0, "isHeadTrackerEnabled"

    return-object v0

    .line 1860
    :pswitch_134
    const-string v0, "setHeadTrackerEnabled"

    return-object v0

    .line 1856
    :pswitch_137
    const-string v0, "hasHeadTracker"

    return-object v0

    .line 1852
    :pswitch_13a
    const-string v0, "isSpatializerAvailableForDevice"

    return-object v0

    .line 1848
    :pswitch_13d
    const-string v0, "isSpatializerAvailable"

    return-object v0

    .line 1844
    :pswitch_140
    const-string v0, "isSpatializerEnabled"

    return-object v0

    .line 1840
    :pswitch_143
    const-string v0, "getSpatializerImmersiveAudioLevel"

    return-object v0

    .line 1836
    :pswitch_146
    const-string v0, "unregisterModeDispatcher"

    return-object v0

    .line 1832
    :pswitch_149
    const-string v0, "registerModeDispatcher"

    return-object v0

    .line 1828
    :pswitch_14c
    const-string v0, "getFadeOutDurationOnFocusLossMillis"

    return-object v0

    .line 1824
    :pswitch_14f
    const-string v0, "abandonAudioFocusForTest"

    return-object v0

    .line 1820
    :pswitch_152
    const-string v0, "requestAudioFocusForTest"

    return-object v0

    .line 1816
    :pswitch_155
    const-string v0, "getMaxAdditionalOutputDeviceDelay"

    return-object v0

    .line 1812
    :pswitch_158
    const-string v0, "getAdditionalOutputDeviceDelay"

    return-object v0

    .line 1808
    :pswitch_15b
    const-string v0, "setAdditionalOutputDeviceDelay"

    return-object v0

    .line 1804
    :pswitch_15e
    const-string v0, "setHomeSoundEffectEnabled"

    return-object v0

    .line 1800
    :pswitch_161
    const-string v0, "isHomeSoundEffectEnabled"

    return-object v0

    .line 1796
    :pswitch_164
    const-string v0, "setNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1792
    :pswitch_167
    const-string v0, "areNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1788
    :pswitch_16a
    const-string v0, "unregisterCommunicationDeviceDispatcher"

    return-object v0

    .line 1784
    :pswitch_16d
    const-string v0, "registerCommunicationDeviceDispatcher"

    return-object v0

    .line 1780
    :pswitch_170
    const-string v0, "getCommunicationDevice"

    return-object v0

    .line 1776
    :pswitch_173
    const-string v0, "setCommunicationDevice"

    return-object v0

    .line 1772
    :pswitch_176
    const-string v0, "getAvailableCommunicationDeviceIds"

    return-object v0

    .line 1768
    :pswitch_179
    const-string v0, "getDeviceMaskForStream"

    return-object v0

    .line 1764
    :pswitch_17c
    const-string v0, "isMusicActive"

    return-object v0

    .line 1760
    :pswitch_17f
    const-string v0, "setStreamVolumeForUid"

    return-object v0

    .line 1756
    :pswitch_182
    const-string v0, "adjustSuggestedStreamVolumeForUid"

    return-object v0

    .line 1752
    :pswitch_185
    const-string v0, "adjustStreamVolumeForUid"

    return-object v0

    .line 1748
    :pswitch_188
    const-string v0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1744
    :pswitch_18b
    const-string v0, "registerCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1740
    :pswitch_18e
    const-string v0, "getPreferredDevicesForCapturePreset"

    return-object v0

    .line 1736
    :pswitch_191
    const-string v0, "clearPreferredDevicesForCapturePreset"

    return-object v0

    .line 1732
    :pswitch_194
    const-string v0, "setPreferredDevicesForCapturePreset"

    return-object v0

    .line 1728
    :pswitch_197
    const-string v0, "setMultiAudioFocusEnabled"

    return-object v0

    .line 1724
    :pswitch_19a
    const-string v0, "getDeviceVolumeBehavior"

    return-object v0

    .line 1720
    :pswitch_19d
    const-string v0, "setDeviceVolumeBehavior"

    return-object v0

    .line 1716
    :pswitch_1a0
    const-string v0, "setRttEnabled"

    return-object v0

    .line 1712
    :pswitch_1a3
    const-string v0, "unregisterStrategyNonDefaultDevicesDispatcher"

    return-object v0

    .line 1708
    :pswitch_1a6
    const-string v0, "registerStrategyNonDefaultDevicesDispatcher"

    return-object v0

    .line 1704
    :pswitch_1a9
    const-string v0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1700
    :pswitch_1ac
    const-string v0, "registerStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1696
    :pswitch_1af
    const-string v0, "getAllowedCapturePolicy"

    return-object v0

    .line 1692
    :pswitch_1b2
    const-string v0, "setAllowedCapturePolicy"

    return-object v0

    .line 1688
    :pswitch_1b5
    const-string v0, "removeOnDevicesForAttributesChangedListener"

    return-object v0

    .line 1684
    :pswitch_1b8
    const-string v0, "addOnDevicesForAttributesChangedListener"

    return-object v0

    .line 1680
    :pswitch_1bb
    const-string v0, "getDevicesForAttributesUnprotected"

    return-object v0

    .line 1676
    :pswitch_1be
    const-string v0, "getDevicesForAttributes"

    return-object v0

    .line 1672
    :pswitch_1c1
    const-string v0, "getNonDefaultDevicesForStrategy"

    return-object v0

    .line 1668
    :pswitch_1c4
    const-string v0, "removeDeviceAsNonDefaultForStrategy"

    return-object v0

    .line 1664
    :pswitch_1c7
    const-string v0, "setDeviceAsNonDefaultForStrategy"

    return-object v0

    .line 1660
    :pswitch_1ca
    const-string v0, "getPreferredDevicesForStrategy"

    return-object v0

    .line 1656
    :pswitch_1cd
    const-string v0, "removePreferredDevicesForStrategy"

    return-object v0

    .line 1652
    :pswitch_1d0
    const-string v0, "setPreferredDevicesForStrategy"

    return-object v0

    .line 1648
    :pswitch_1d3
    const-string v0, "isCallScreeningModeSupported"

    return-object v0

    .line 1644
    :pswitch_1d6
    const-string v0, "hasHapticChannels"

    return-object v0

    .line 1640
    :pswitch_1d9
    const-string v0, "removeUserIdDeviceAffinity"

    return-object v0

    .line 1636
    :pswitch_1dc
    const-string v0, "setUserIdDeviceAffinity"

    return-object v0

    .line 1632
    :pswitch_1df
    const-string v0, "removeUidDeviceAffinity"

    return-object v0

    .line 1628
    :pswitch_1e2
    const-string v0, "setUidDeviceAffinity"

    return-object v0

    .line 1624
    :pswitch_1e5
    const-string v0, "isAudioServerRunning"

    return-object v0

    .line 1620
    :pswitch_1e8
    const-string v0, "unregisterAudioServerStateDispatcher"

    return-object v0

    .line 1616
    :pswitch_1eb
    const-string v0, "registerAudioServerStateDispatcher"

    return-object v0

    .line 1612
    :pswitch_1ee
    const-string v0, "setFocusRequestResultFromExtPolicy"

    return-object v0

    .line 1608
    :pswitch_1f1
    const-string v0, "handleBluetoothActiveDeviceChanged"

    return-object v0

    .line 1604
    :pswitch_1f4
    const-string v0, "playerHasOpPlayAudio"

    return-object v0

    .line 1600
    :pswitch_1f7
    const-string v0, "dispatchFocusChange"

    return-object v0

    .line 1596
    :pswitch_1fa
    const-string v0, "getFocusRampTimeMs"

    return-object v0

    .line 1592
    :pswitch_1fd
    const-string v0, "getActivePlaybackConfigurations"

    return-object v0

    .line 1588
    :pswitch_200
    const-string v0, "unregisterPlaybackCallback"

    return-object v0

    .line 1584
    :pswitch_203
    const-string v0, "registerPlaybackCallback"

    return-object v0

    .line 1580
    :pswitch_206
    const-string v0, "getActiveRecordingConfigurations"

    return-object v0

    .line 1576
    :pswitch_209
    const-string v0, "unregisterRecordingCallback"

    return-object v0

    .line 1572
    :pswitch_20c
    const-string v0, "registerRecordingCallback"

    return-object v0

    .line 1568
    :pswitch_20f
    const-string v0, "hasRegisteredDynamicPolicy"

    return-object v0

    .line 1564
    :pswitch_212
    const-string v0, "setVolumePolicy"

    return-object v0

    .line 1560
    :pswitch_215
    const-string v0, "setFocusPropertiesForPolicy"

    return-object v0

    .line 1556
    :pswitch_218
    const-string v0, "removeMixForPolicy"

    return-object v0

    .line 1552
    :pswitch_21b
    const-string v0, "addMixForPolicy"

    return-object v0

    .line 1548
    :pswitch_21e
    const-string v0, "unregisterAudioPolicy"

    return-object v0

    .line 1544
    :pswitch_221
    const-string v0, "unregisterAudioPolicyAsync"

    return-object v0

    .line 1540
    :pswitch_224
    const-string v0, "registerAudioPolicy"

    return-object v0

    .line 1536
    :pswitch_227
    const-string v0, "isHdmiSystemAudioSupported"

    return-object v0

    .line 1532
    :pswitch_22a
    const-string v0, "setHdmiSystemAudioSupported"

    return-object v0

    .line 1528
    :pswitch_22d
    const-string v0, "isCsdEnabled"

    return-object v0

    .line 1524
    :pswitch_230
    const-string v0, "forceComputeCsdOnAllDevices"

    return-object v0

    .line 1520
    :pswitch_233
    const-string v0, "forceUseFrameworkMel"

    return-object v0

    .line 1516
    :pswitch_236
    const-string v0, "setCsd"

    return-object v0

    .line 1512
    :pswitch_239
    const-string v0, "getCsd"

    return-object v0

    .line 1508
    :pswitch_23c
    const-string v0, "setOutputRs2UpperBound"

    return-object v0

    .line 1504
    :pswitch_23f
    const-string v0, "getOutputRs2UpperBound"

    return-object v0

    .line 1500
    :pswitch_242
    const-string v0, "lowerVolumeToRs1"

    return-object v0

    .line 1496
    :pswitch_245
    const-string v0, "disableSafeMediaVolume"

    return-object v0

    .line 1492
    :pswitch_248
    const-string v0, "isStreamAffectedByMute"

    return-object v0

    .line 1488
    :pswitch_24b
    const-string v0, "isStreamAffectedByRingerMode"

    return-object v0

    .line 1484
    :pswitch_24e
    const-string v0, "notifyVolumeControllerVisible"

    return-object v0

    .line 1480
    :pswitch_251
    const-string v0, "getVolumeController"

    return-object v0

    .line 1476
    :pswitch_254
    const-string v0, "setVolumeController"

    return-object v0

    .line 1472
    :pswitch_257
    const-string v0, "isCameraSoundForced"

    return-object v0

    .line 1468
    :pswitch_25a
    const-string v0, "startWatchingRoutes"

    return-object v0

    .line 1464
    :pswitch_25d
    const-string v0, "setWiredDeviceConnectionState"

    return-object v0

    .line 1460
    :pswitch_260
    const-string v0, "setNotifAliasRingForTest"

    return-object v0

    .line 1456
    :pswitch_263
    const-string v0, "registerStreamAliasingDispatcher"

    return-object v0

    .line 1452
    :pswitch_266
    const-string v0, "isVolumeControlUsingVolumeGroups"

    return-object v0

    .line 1448
    :pswitch_269
    const-string v0, "getStreamTypeAlias"

    return-object v0

    .line 1444
    :pswitch_26c
    const-string v0, "getIndependentStreamTypes"

    return-object v0

    .line 1440
    :pswitch_26f
    const-string v0, "getUiSoundsStreamType"

    return-object v0

    .line 1436
    :pswitch_272
    const-string v0, "getRingtonePlayer"

    return-object v0

    .line 1432
    :pswitch_275
    const-string v0, "setRingtonePlayer"

    return-object v0

    .line 1428
    :pswitch_278
    const-string v0, "forceVolumeControlStream"

    return-object v0

    .line 1424
    :pswitch_27b
    const-string v0, "stopBluetoothSco"

    return-object v0

    .line 1420
    :pswitch_27e
    const-string v0, "startBluetoothScoVirtualCall"

    return-object v0

    .line 1416
    :pswitch_281
    const-string v0, "startBluetoothSco"

    return-object v0

    .line 1412
    :pswitch_284
    const-string v0, "getCurrentAudioFocus"

    return-object v0

    .line 1408
    :pswitch_287
    const-string v0, "unregisterAudioFocusClient"

    return-object v0

    .line 1404
    :pswitch_28a
    const-string v0, "abandonAudioFocus"

    return-object v0

    .line 1400
    :pswitch_28d
    const-string v0, "requestAudioFocus"

    return-object v0

    .line 1396
    :pswitch_290
    const-string v0, "isBluetoothA2dpOn"

    return-object v0

    .line 1392
    :pswitch_293
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    .line 1388
    :pswitch_296
    const-string v0, "isBluetoothScoOn"

    return-object v0

    .line 1384
    :pswitch_299
    const-string v0, "setLeAudioSuspended"

    return-object v0

    .line 1380
    :pswitch_29c
    const-string v0, "setA2dpSuspended"

    return-object v0

    .line 1376
    :pswitch_29f
    const-string v0, "setBluetoothScoOn"

    return-object v0

    .line 1372
    :pswitch_2a2
    const-string v0, "isSpeakerphoneOn"

    return-object v0

    .line 1368
    :pswitch_2a5
    const-string v0, "setSpeakerphoneOn"

    return-object v0

    .line 1364
    :pswitch_2a8
    const-string v0, "getEncodedSurroundMode"

    return-object v0

    .line 1360
    :pswitch_2ab
    const-string v0, "setEncodedSurroundMode"

    return-object v0

    .line 1356
    :pswitch_2ae
    const-string v0, "isSurroundFormatEnabled"

    return-object v0

    .line 1352
    :pswitch_2b1
    const-string v0, "setSurroundFormatEnabled"

    return-object v0

    .line 1348
    :pswitch_2b4
    const-string v0, "getReportedSurroundFormats"

    return-object v0

    .line 1344
    :pswitch_2b7
    const-string v0, "getSurroundFormats"

    return-object v0

    .line 1340
    :pswitch_2ba
    const-string v0, "reloadAudioSettings"

    return-object v0

    .line 1336
    :pswitch_2bd
    const-string v0, "unloadSoundEffects"

    return-object v0

    .line 1332
    :pswitch_2c0
    const-string v0, "loadSoundEffects"

    return-object v0

    .line 1328
    :pswitch_2c3
    const-string v0, "playSoundEffectVolume"

    return-object v0

    .line 1324
    :pswitch_2c6
    const-string v0, "playSoundEffect"

    return-object v0

    .line 1320
    :pswitch_2c9
    const-string v0, "getMode"

    return-object v0

    .line 1316
    :pswitch_2cc
    const-string v0, "setMode"

    return-object v0

    .line 1312
    :pswitch_2cf
    const-string v0, "shouldVibrate"

    return-object v0

    .line 1308
    :pswitch_2d2
    const-string v0, "getVibrateSetting"

    return-object v0

    .line 1304
    :pswitch_2d5
    const-string v0, "setVibrateSetting"

    return-object v0

    .line 1300
    :pswitch_2d8
    const-string v0, "isValidRingerMode"

    return-object v0

    .line 1296
    :pswitch_2db
    const-string v0, "getRingerModeInternal"

    return-object v0

    .line 1292
    :pswitch_2de
    const-string v0, "getRingerModeExternal"

    return-object v0

    .line 1288
    :pswitch_2e1
    const-string v0, "setRingerModeInternal"

    return-object v0

    .line 1284
    :pswitch_2e4
    const-string v0, "setRingerModeExternal"

    return-object v0

    .line 1280
    :pswitch_2e7
    const-string v0, "setMicrophoneMuteFromSwitch"

    return-object v0

    .line 1276
    :pswitch_2ea
    const-string v0, "setMicrophoneMute"

    return-object v0

    .line 1272
    :pswitch_2ed
    const-string v0, "isHotwordStreamSupported"

    return-object v0

    .line 1268
    :pswitch_2f0
    const-string v0, "isUltrasoundSupported"

    return-object v0

    .line 1264
    :pswitch_2f3
    const-string v0, "isMicrophoneMuted"

    return-object v0

    .line 1260
    :pswitch_2f6
    const-string v0, "getAudioProductStrategies"

    return-object v0

    .line 1256
    :pswitch_2f9
    const-string v0, "getSupportedSystemUsages"

    return-object v0

    .line 1252
    :pswitch_2fc
    const-string v0, "setSupportedSystemUsages"

    return-object v0

    .line 1248
    :pswitch_2ff
    const-string v0, "getLastAudibleStreamVolume"

    return-object v0

    .line 1244
    :pswitch_302
    const-string v0, "adjustVolumeGroupVolume"

    return-object v0

    .line 1240
    :pswitch_305
    const-string v0, "isVolumeGroupMuted"

    return-object v0

    .line 1236
    :pswitch_308
    const-string v0, "getLastAudibleVolumeForVolumeGroup"

    return-object v0

    .line 1232
    :pswitch_30b
    const-string v0, "getVolumeGroupMinVolumeIndex"

    return-object v0

    .line 1228
    :pswitch_30e
    const-string v0, "getVolumeGroupMaxVolumeIndex"

    return-object v0

    .line 1224
    :pswitch_311
    const-string v0, "getVolumeGroupVolumeIndex"

    return-object v0

    .line 1220
    :pswitch_314
    const-string v0, "setVolumeGroupVolumeIndex"

    return-object v0

    .line 1216
    :pswitch_317
    const-string v0, "getAudioVolumeGroups"

    return-object v0

    .line 1212
    :pswitch_31a
    const-string v0, "getStreamMaxVolume"

    return-object v0

    .line 1208
    :pswitch_31d
    const-string v0, "getStreamMinVolume"

    return-object v0

    .line 1204
    :pswitch_320
    const-string v0, "getStreamVolume"

    return-object v0

    .line 1200
    :pswitch_323
    const-string v0, "setMasterMute"

    return-object v0

    .line 1196
    :pswitch_326
    const-string v0, "isMasterMute"

    return-object v0

    .line 1192
    :pswitch_329
    const-string v0, "forceRemoteSubmixFullVolume"

    return-object v0

    .line 1188
    :pswitch_32c
    const-string v0, "isStreamMute"

    return-object v0

    .line 1184
    :pswitch_32f
    const-string v0, "handleVolumeKey"

    return-object v0

    .line 1180
    :pswitch_332
    const-string v0, "getDeviceVolume"

    return-object v0

    .line 1176
    :pswitch_335
    const-string v0, "setDeviceVolume"

    return-object v0

    .line 1172
    :pswitch_338
    const-string v0, "setStreamVolumeWithAttribution"

    return-object v0

    .line 1168
    :pswitch_33b
    const-string v0, "setStreamVolume"

    return-object v0

    .line 1164
    :pswitch_33e
    const-string v0, "adjustStreamVolumeWithAttribution"

    return-object v0

    .line 1160
    :pswitch_341
    const-string v0, "adjustStreamVolume"

    return-object v0

    .line 1156
    :pswitch_344
    const-string v0, "portEvent"

    return-object v0

    .line 1152
    :pswitch_347
    const-string v0, "playerSessionId"

    return-object v0

    .line 1148
    :pswitch_34a
    const-string v0, "releaseRecorder"

    return-object v0

    .line 1144
    :pswitch_34d
    const-string v0, "recorderEvent"

    return-object v0

    .line 1140
    :pswitch_350
    const-string v0, "trackRecorder"

    return-object v0

    .line 1136
    :pswitch_353
    const-string v0, "releasePlayer"

    return-object v0

    .line 1132
    :pswitch_356
    const-string v0, "playerEvent"

    return-object v0

    .line 1128
    :pswitch_359
    const-string v0, "playerAttributes"

    return-object v0

    .line 1124
    :pswitch_35c
    const-string v0, "trackPlayer"

    return-object v0

    nop

    :pswitch_data_360
    .packed-switch 0x1
        :pswitch_35c
        :pswitch_359
        :pswitch_356
        :pswitch_353
        :pswitch_350
        :pswitch_34d
        :pswitch_34a
        :pswitch_347
        :pswitch_344
        :pswitch_341
        :pswitch_33e
        :pswitch_33b
        :pswitch_338
        :pswitch_335
        :pswitch_332
        :pswitch_32f
        :pswitch_32c
        :pswitch_329
        :pswitch_326
        :pswitch_323
        :pswitch_320
        :pswitch_31d
        :pswitch_31a
        :pswitch_317
        :pswitch_314
        :pswitch_311
        :pswitch_30e
        :pswitch_30b
        :pswitch_308
        :pswitch_305
        :pswitch_302
        :pswitch_2ff
        :pswitch_2fc
        :pswitch_2f9
        :pswitch_2f6
        :pswitch_2f3
        :pswitch_2f0
        :pswitch_2ed
        :pswitch_2ea
        :pswitch_2e7
        :pswitch_2e4
        :pswitch_2e1
        :pswitch_2de
        :pswitch_2db
        :pswitch_2d8
        :pswitch_2d5
        :pswitch_2d2
        :pswitch_2cf
        :pswitch_2cc
        :pswitch_2c9
        :pswitch_2c6
        :pswitch_2c3
        :pswitch_2c0
        :pswitch_2bd
        :pswitch_2ba
        :pswitch_2b7
        :pswitch_2b4
        :pswitch_2b1
        :pswitch_2ae
        :pswitch_2ab
        :pswitch_2a8
        :pswitch_2a5
        :pswitch_2a2
        :pswitch_29f
        :pswitch_29c
        :pswitch_299
        :pswitch_296
        :pswitch_293
        :pswitch_290
        :pswitch_28d
        :pswitch_28a
        :pswitch_287
        :pswitch_284
        :pswitch_281
        :pswitch_27e
        :pswitch_27b
        :pswitch_278
        :pswitch_275
        :pswitch_272
        :pswitch_26f
        :pswitch_26c
        :pswitch_269
        :pswitch_266
        :pswitch_263
        :pswitch_260
        :pswitch_25d
        :pswitch_25a
        :pswitch_257
        :pswitch_254
        :pswitch_251
        :pswitch_24e
        :pswitch_24b
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1df
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17f
        :pswitch_17c
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
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

.method private onTransact$adjustStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10159
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10161
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 10163
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10165
    .local v12, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 10167
    .local v13, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10169
    .local v14, "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserHandle;

    .line 10171
    .local v16, "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 10172
    .local v17, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10173
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move v5, v13

    move v6, v14

    move-object/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 10174
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$adjustSuggestedStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10180
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10182
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10184
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 10186
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10188
    .local v12, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 10190
    .local v13, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10192
    .local v14, "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserHandle;

    .line 10194
    .local v16, "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 10195
    .local v17, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10196
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move v5, v13

    move v6, v14

    move-object/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 10197
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$registerAudioPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10036
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 10038
    .local v0, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v10

    .line 10040
    .local v10, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 10042
    .local v11, "_arg2":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 10044
    .local v12, "_arg3":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 10046
    .local v13, "_arg4":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 10048
    .local v14, "_arg5":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v15

    .line 10049
    .local v15, "_arg6":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10050
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v10

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move-object v9, v15

    invoke-virtual/range {v2 .. v9}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;

    move-result-object v2

    .line 10051
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10052
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10053
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$registerDeviceVolumeDispatcherForAbsoluteVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10446
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 10448
    .local v9, "_arg0":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v10

    .line 10450
    .local v10, "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10452
    .local v11, "_arg2":Ljava/lang/String;
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/media/AudioDeviceAttributes;

    .line 10454
    .local v12, "_arg3":Landroid/media/AudioDeviceAttributes;
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 10456
    .local v13, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 10458
    .local v14, "_arg5":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 10459
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10460
    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move v7, v14

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V

    .line 10461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10462
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$requestAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 25
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9921
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 9923
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 9925
    .local v13, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 9927
    .local v14, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v15

    .line 9929
    .local v15, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9931
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9933
    .local v17, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9935
    .local v18, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 9937
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v20

    .line 9939
    .local v20, "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 9940
    .local v21, "_arg9":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9941
    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 9942
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9943
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9944
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$requestAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 23
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10240
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 10242
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 10244
    .local v12, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 10246
    .local v13, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v14

    .line 10248
    .local v14, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10250
    .local v15, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10252
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 10254
    .local v17, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 10256
    .local v18, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 10257
    .local v19, "_arg8":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10258
    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    invoke-virtual/range {v2 .. v11}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    .line 10259
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10260
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10261
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setA2dpDeviceVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10563
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 10565
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10567
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10569
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10571
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10572
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10573
    move-object v1, p0

    move-object v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/media/IAudioService$Stub;->setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;IIILjava/lang/String;)V

    .line 10574
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10575
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$setFineVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 10531
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10533
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10535
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10537
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10538
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10539
    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setFineVolume(IIIILjava/lang/String;)V

    .line 10540
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10541
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$setStreamVolumeForDeviceWithAttribution$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10503
    .local v7, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10505
    .local v8, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10507
    .local v9, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10509
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10511
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 10512
    .local v12, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10513
    move-object v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->setStreamVolumeForDeviceWithAttribution(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 10514
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10515
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$setStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10205
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10207
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 10209
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10211
    .local v12, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 10213
    .local v13, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10215
    .local v14, "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserHandle;

    .line 10217
    .local v16, "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 10218
    .local v17, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10219
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move v5, v13

    move v6, v14

    move-object/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 10220
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$setVolumeGroupVolumeIndex$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9805
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9807
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9809
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 9811
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 9812
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9813
    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeGroupVolumeIndex(IIILjava/lang/String;Ljava/lang/String;)V

    .line 9814
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9815
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10420
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10421
    return-void
.end method

.method protected addSpatializerCompatibleAudioDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10328
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10329
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1115
    return-object p0
.end method

.method protected clearPreferredDevicesForCapturePreset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10144
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10145
    return-void
.end method

.method protected forceComputeCsdOnAllDevices_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10023
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10024
    return-void
.end method

.method protected forceUseFrameworkMel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10018
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10019
    return-void
.end method

.method protected getActiveAssistantServiceUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10440
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10441
    return-void
.end method

.method protected getActualHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10353
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10354
    return-void
.end method

.method protected getAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10435
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10436
    return-void
.end method

.method protected getAudioProductStrategies_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9865
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9866
    return-void
.end method

.method protected getAudioVolumeGroups_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9797
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9798
    return-void
.end method

.method protected getCsd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10008
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10009
    return-void
.end method

.method protected getDesiredHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10343
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10344
    return-void
.end method

.method protected getDeviceVolumeBehavior_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10133
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 10134
    return-void
.end method

.method protected getDeviceVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9780
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9781
    return-void
.end method

.method protected getFocusStack_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10414
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10415
    return-void
.end method

.method protected getIndependentStreamTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9959
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9960
    return-void
.end method

.method protected getLastAudibleStreamVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9850
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9851
    return-void
.end method

.method protected getLastAudibleVolumeForVolumeGroup_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9843
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9844
    return-void
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 10591
    const/16 v0, 0x11d

    return v0
.end method

.method protected getMutingExpectedDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10402
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10403
    return-void
.end method

.method protected getNonDefaultDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10110
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10111
    return-void
.end method

.method protected getOutputRs2UpperBound_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9998
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9999
    return-void
.end method

.method protected getPreferredDevicesForCapturePreset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10149
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10150
    return-void
.end method

.method protected getPreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10095
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10096
    return-void
.end method

.method protected getSpatializerCompatibleAudioDevices_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10323
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10324
    return-void
.end method

.method protected getSpatializerOutput_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10378
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10379
    return-void
.end method

.method protected getSpatializerParameter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10373
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10374
    return-void
.end method

.method protected getStreamTypeAlias_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9964
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9965
    return-void
.end method

.method protected getSupportedHeadTrackingModes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10348
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10349
    return-void
.end method

.method protected getSupportedSystemUsages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9860
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9861
    return-void
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 2275
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVolumeGroupMaxVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9832
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9833
    return-void
.end method

.method protected getVolumeGroupMinVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9838
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9839
    return-void
.end method

.method protected getVolumeGroupVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9826
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9827
    return-void
.end method

.method protected hasHeadTracker_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10278
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10279
    return-void
.end method

.method protected isBluetoothVariableLatencyEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10482
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10483
    return-void
.end method

.method protected isCsdEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10028
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10029
    return-void
.end method

.method protected isHeadTrackerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10288
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10289
    return-void
.end method

.method protected isHotwordStreamSupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9876
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9877
    return-void
.end method

.method protected isPstnCallAudioInterceptable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10395
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CALL_AUDIO_INTERCEPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10396
    return-void
.end method

.method protected isSpatializerAvailableForDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10273
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10274
    return-void
.end method

.method protected isUltrasoundSupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9871
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_ULTRASOUND"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9872
    return-void
.end method

.method protected isVolumeControlUsingVolumeGroups_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9969
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9970
    return-void
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

    .line 2279
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.media.IAudioService"

    .line 2280
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 2281
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2283
    :cond_15
    packed-switch v7, :pswitch_data_13e8

    .line 2291
    packed-switch v7, :pswitch_data_13ee

    .line 4947
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2287
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2288
    return v11

    .line 4940
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getModeInternal()I

    move-result v0

    .line 4941
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4942
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4943
    goto/16 :goto_13e6

    .line 4928
    .end local v0    # "_result":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4930
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4932
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4933
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4934
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->nativeEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4936
    goto/16 :goto_13e6

    .line 4918
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 4920
    .local v0, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4921
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4922
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->notifySafetyVolumeDialogVisible(Landroid/media/IVolumeController;Z)V

    .line 4923
    goto/16 :goto_13e6

    .line 4908
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    .end local v1    # "_arg1":Z
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4909
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4910
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getExcludedRingtoneTitles(I)Ljava/util/List;

    move-result-object v1

    .line 4911
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4912
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4913
    goto/16 :goto_13e6

    .line 4900
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSafeMediaVolumeStateActive()Z

    move-result v0

    .line 4901
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4902
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4903
    goto/16 :goto_13e6

    .line 4892
    .end local v0    # "_result":Z
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4893
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4894
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setBtOffloadEnable(I)V

    .line 4895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4896
    goto/16 :goto_13e6

    .line 4881
    .end local v0    # "_arg0":I
    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 4883
    .local v0, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4884
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4885
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->registerPlaybackCallbackWithPackage(Landroid/media/IPlaybackConfigDispatcher;Ljava/lang/String;)V

    .line 4886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4887
    goto/16 :goto_13e6

    .line 4873
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4874
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4875
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->recordRingtoneChanger(Ljava/lang/String;)V

    .line 4876
    goto/16 :goto_13e6

    .line 4864
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4865
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4866
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setRemoteMic(Z)V

    .line 4867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4868
    goto/16 :goto_13e6

    .line 4856
    .end local v0    # "_arg0":Z
    :pswitch_bb
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getFloatVolumeTable()[F

    move-result-object v0

    .line 4857
    .local v0, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4858
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 4859
    goto/16 :goto_13e6

    .line 4845
    .end local v0    # "_result":[F
    :pswitch_c7
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 4847
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4848
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4849
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 4850
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4851
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4852
    goto/16 :goto_13e6

    .line 4840
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_e2
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$setA2dpDeviceVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4831
    :pswitch_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4832
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4833
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isUsingAudio(I)Z

    move-result v1

    .line 4834
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4835
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4836
    goto/16 :goto_13e6

    .line 4823
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_fa
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4824
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4825
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4826
    goto/16 :goto_13e6

    .line 4817
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_106
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->dismissVolumePanel()V

    .line 4818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4819
    goto/16 :goto_13e6

    .line 4810
    :pswitch_10e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRadioOutputPath()I

    move-result v0

    .line 4811
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4812
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4813
    goto/16 :goto_13e6

    .line 4802
    .end local v0    # "_result":I
    :pswitch_11a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4803
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4804
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setRadioOutputPath(I)V

    .line 4805
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4806
    goto/16 :goto_13e6

    .line 4794
    .end local v0    # "_arg0":I
    :pswitch_129
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMediaVolumeSteps()[I

    move-result-object v0

    .line 4795
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4796
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4797
    goto/16 :goto_13e6

    .line 4785
    .end local v0    # "_result":[I
    :pswitch_135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4786
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4787
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setMediaVolumeSteps([I)Z

    move-result v1

    .line 4788
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4789
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4790
    goto/16 :goto_13e6

    .line 4775
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Z
    :pswitch_148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4777
    .local v0, "_arg0":I
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 4778
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4779
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V

    .line 4780
    goto/16 :goto_13e6

    .line 4767
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_15c
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getPrevRingerMode()I

    move-result v0

    .line 4768
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4769
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4770
    goto/16 :goto_13e6

    .line 4760
    .end local v0    # "_result":I
    :pswitch_168
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemainingMuteIntervalMs()I

    move-result v0

    .line 4761
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4762
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4763
    goto/16 :goto_13e6

    .line 4753
    .end local v0    # "_result":I
    :pswitch_174
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMuteInterval()I

    move-result v0

    .line 4754
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4755
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4756
    goto/16 :goto_13e6

    .line 4743
    .end local v0    # "_result":I
    :pswitch_180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4745
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4746
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4747
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setMuteInterval(ILjava/lang/String;)V

    .line 4748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4749
    goto/16 :goto_13e6

    .line 4729
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4731
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4733
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4734
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4735
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result v3

    .line 4736
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4737
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4738
    goto/16 :goto_13e6

    .line 4721
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":I
    :pswitch_1ae
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isForceSpeakerOn()Z

    move-result v0

    .line 4722
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4723
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4724
    goto/16 :goto_13e6

    .line 4713
    .end local v0    # "_result":Z
    :pswitch_1ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4714
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4715
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setForceSpeakerOn(Z)V

    .line 4716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4717
    goto/16 :goto_13e6

    .line 4701
    .end local v0    # "_arg0":Z
    :pswitch_1c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4703
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4704
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4705
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->getFineVolume(II)I

    move-result v2

    .line 4706
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4707
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4708
    goto/16 :goto_13e6

    .line 4696
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1e0
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$setFineVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4687
    :pswitch_1e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4688
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4689
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isInAllowedList(Ljava/lang/String;)Z

    move-result v1

    .line 4690
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4691
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4692
    goto/16 :goto_13e6

    .line 4677
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4678
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4679
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isAlreadyInDB(Ljava/lang/String;)Z

    move-result v1

    .line 4680
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4681
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4682
    goto/16 :goto_13e6

    .line 4668
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_20b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4669
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4670
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->removePackageForName(Ljava/lang/String;)V

    .line 4671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4672
    goto/16 :goto_13e6

    .line 4657
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_21a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4659
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4660
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4661
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->addPackage(ILjava/lang/String;)V

    .line 4662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4663
    goto/16 :goto_13e6

    .line 4649
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_22d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v0

    .line 4650
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4651
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4652
    goto/16 :goto_13e6

    .line 4642
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_239
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getPinDevice()I

    move-result v0

    .line 4643
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4644
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4645
    goto/16 :goto_13e6

    .line 4633
    .end local v0    # "_result":I
    :pswitch_245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4634
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4635
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 4636
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4637
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4638
    goto/16 :goto_13e6

    .line 4621
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4623
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4624
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4625
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolumeForDevice(II)I

    move-result v2

    .line 4626
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4627
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4628
    goto/16 :goto_13e6

    .line 4616
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_26f
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$setStreamVolumeForDeviceWithAttribution$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4609
    :pswitch_274
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMultiSoundOn()Z

    move-result v0

    .line 4610
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4611
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4612
    goto/16 :goto_13e6

    .line 4599
    .end local v0    # "_result":Z
    :pswitch_280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4601
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4602
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4603
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setMultiSoundOn(ZZ)V

    .line 4604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4605
    goto/16 :goto_13e6

    .line 4589
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4590
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4591
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isAppMute(I)Z

    move-result v1

    .line 4592
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4593
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4594
    goto/16 :goto_13e6

    .line 4576
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4578
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4580
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4581
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4582
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppMute(IZLjava/lang/String;)V

    .line 4583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4584
    goto/16 :goto_13e6

    .line 4566
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4567
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4568
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getAppVolume(I)I

    move-result v1

    .line 4569
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4570
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4571
    goto/16 :goto_13e6

    .line 4553
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4555
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4557
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4558
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4559
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppVolume(IILjava/lang/String;)V

    .line 4560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4561
    goto/16 :goto_13e6

    .line 4543
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4544
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4545
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getAppDevice(I)I

    move-result v1

    .line 4546
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4547
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4548
    goto/16 :goto_13e6

    .line 4530
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4532
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4534
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4535
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4536
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppDevice(IIZ)V

    .line 4537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4538
    goto/16 :goto_13e6

    .line 4520
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4521
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4522
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getUidForDevice(I)I

    move-result v1

    .line 4523
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4524
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4525
    goto/16 :goto_13e6

    .line 4510
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4511
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4512
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->secGetActiveStreamType(I)I

    move-result v1

    .line 4513
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4514
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4515
    goto/16 :goto_13e6

    .line 4502
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_337
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->shouldShowRingtoneVolume()Z

    move-result v0

    .line 4503
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4504
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4505
    goto/16 :goto_13e6

    .line 4493
    .end local v0    # "_result":Z
    :pswitch_343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4494
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4495
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4496
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4497
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4498
    goto/16 :goto_13e6

    .line 4484
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4485
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4486
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 4487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4488
    goto/16 :goto_13e6

    .line 4476
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_365
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothVariableLatencyEnabled()Z

    move-result v0

    .line 4477
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4478
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4479
    goto/16 :goto_13e6

    .line 4468
    .end local v0    # "_result":Z
    :pswitch_371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4469
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4470
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setBluetoothVariableLatencyEnabled(Z)V

    .line 4471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4472
    goto/16 :goto_13e6

    .line 4460
    .end local v0    # "_arg0":Z
    :pswitch_380
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->supportsBluetoothVariableLatency()Z

    move-result v0

    .line 4461
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4462
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4463
    goto/16 :goto_13e6

    .line 4453
    .end local v0    # "_result":Z
    :pswitch_38c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v0

    .line 4454
    .local v0, "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4455
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    .line 4456
    goto/16 :goto_13e6

    .line 4444
    .end local v0    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    :pswitch_39c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v0

    .line 4445
    .restart local v0    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4446
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    .line 4447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4448
    goto/16 :goto_13e6

    .line 4432
    .end local v0    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    :pswitch_3af
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 4434
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4435
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4436
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->clearPreferredMixerAttributes(Landroid/media/AudioAttributes;I)I

    move-result v2

    .line 4437
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4438
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4439
    goto/16 :goto_13e6

    .line 4418
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_3ca
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 4420
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4422
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/media/AudioMixerAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioMixerAttributes;

    .line 4423
    .local v2, "_arg2":Landroid/media/AudioMixerAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4424
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setPreferredMixerAttributes(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)I

    move-result v3

    .line 4425
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4426
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4427
    goto/16 :goto_13e6

    .line 4410
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/AudioMixerAttributes;
    .end local v3    # "_result":I
    :pswitch_3ed
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getHalVersion()Landroid/media/AudioHalVersionInfo;

    move-result-object v0

    .line 4411
    .local v0, "_result":Landroid/media/AudioHalVersionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4412
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4413
    goto/16 :goto_13e6

    .line 4406
    .end local v0    # "_result":Landroid/media/AudioHalVersionInfo;
    :pswitch_3f9
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$registerDeviceVolumeDispatcherForAbsoluteVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 4399
    :pswitch_3fe
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v0

    .line 4400
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4401
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4402
    goto/16 :goto_13e6

    .line 4392
    .end local v0    # "_result":[I
    :pswitch_40a
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v0

    .line 4393
    .restart local v0    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4394
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4395
    goto/16 :goto_13e6

    .line 4384
    .end local v0    # "_result":[I
    :pswitch_416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4385
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4386
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    .line 4387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4388
    goto/16 :goto_13e6

    .line 4375
    .end local v0    # "_arg0":[I
    :pswitch_425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4376
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4377
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    .line 4378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4379
    goto/16 :goto_13e6

    .line 4366
    .end local v0    # "_arg0":[I
    :pswitch_434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4367
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4368
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    .line 4369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4370
    goto/16 :goto_13e6

    .line 4354
    .end local v0    # "_arg0":[I
    :pswitch_443
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 4356
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 4357
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4358
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v2

    .line 4359
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4360
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4361
    goto/16 :goto_13e6

    .line 4346
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":Z
    :pswitch_462
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v0

    .line 4347
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4348
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4349
    goto/16 :goto_13e6

    .line 4336
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    :pswitch_46e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4338
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v1

    .line 4339
    .local v1, "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4340
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    .line 4341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4342
    goto/16 :goto_13e6

    .line 4325
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    :pswitch_485
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 4327
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4328
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4329
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    .line 4330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4331
    goto/16 :goto_13e6

    .line 4314
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":Z
    :pswitch_49c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v0

    .line 4316
    .local v0, "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4317
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4318
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    .line 4319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4320
    goto/16 :goto_13e6

    .line 4306
    .end local v0    # "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    .end local v1    # "_arg1":Z
    :pswitch_4b3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 4307
    .local v0, "_result":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4308
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4309
    goto/16 :goto_13e6

    .line 4299
    .end local v0    # "_result":Landroid/media/AudioDeviceAttributes;
    :pswitch_4bf
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 4300
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4301
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    .line 4302
    goto/16 :goto_13e6

    .line 4287
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_4cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4289
    .local v0, "_arg0":[I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4291
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4292
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4293
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    .line 4294
    goto/16 :goto_13e6

    .line 4279
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg2":J
    :pswitch_4e7
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v0

    .line 4280
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4281
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4282
    goto/16 :goto_13e6

    .line 4272
    .end local v0    # "_result":Z
    :pswitch_4f3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    .line 4273
    .local v0, "_result":Landroid/media/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4274
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4275
    goto/16 :goto_13e6

    .line 4265
    .end local v0    # "_result":Landroid/media/VolumeInfo;
    :pswitch_4ff
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v0

    .line 4266
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4267
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4268
    goto/16 :goto_13e6

    .line 4257
    .end local v0    # "_result":Z
    :pswitch_50b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    .line 4258
    .local v0, "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4259
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 4260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4261
    goto/16 :goto_13e6

    .line 4248
    .end local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_51e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    .line 4249
    .restart local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4250
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 4251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4252
    goto/16 :goto_13e6

    .line 4240
    .end local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_531
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v0

    .line 4241
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4242
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4243
    goto/16 :goto_13e6

    .line 4229
    .end local v0    # "_result":I
    :pswitch_53d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4231
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 4232
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4233
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    .line 4234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4235
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4236
    goto/16 :goto_13e6

    .line 4218
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4220
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 4221
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4222
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    .line 4223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4224
    goto/16 :goto_13e6

    .line 4212
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_566
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    .line 4213
    goto/16 :goto_13e6

    .line 4205
    :pswitch_56b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 4206
    .local v0, "_arg0":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4207
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    .line 4208
    goto/16 :goto_13e6

    .line 4197
    .end local v0    # "_arg0":[F
    :pswitch_577
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v0

    .line 4198
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4199
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4200
    goto/16 :goto_13e6

    .line 4190
    .end local v0    # "_result":I
    :pswitch_583
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v0

    .line 4191
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4192
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4193
    goto/16 :goto_13e6

    .line 4183
    .end local v0    # "_result":[I
    :pswitch_58f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v0

    .line 4184
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4185
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4186
    goto/16 :goto_13e6

    .line 4175
    .end local v0    # "_result":I
    :pswitch_59b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4176
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4177
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    .line 4178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4179
    goto/16 :goto_13e6

    .line 4166
    .end local v0    # "_arg0":I
    :pswitch_5aa
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 4167
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4168
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 4169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4170
    goto/16 :goto_13e6

    .line 4157
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_5bd
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 4158
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4159
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 4160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4161
    goto/16 :goto_13e6

    .line 4149
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_5d0
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0

    .line 4150
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4151
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4152
    goto/16 :goto_13e6

    .line 4141
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_5dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    .line 4142
    .local v0, "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4143
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 4144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4145
    goto/16 :goto_13e6

    .line 4132
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_5ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    .line 4133
    .restart local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4134
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 4135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4136
    goto/16 :goto_13e6

    .line 4123
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    .line 4124
    .local v0, "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4125
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 4126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4127
    goto/16 :goto_13e6

    .line 4114
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    .line 4115
    .restart local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4116
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 4117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4118
    goto/16 :goto_13e6

    .line 4105
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    .line 4106
    .local v0, "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4107
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 4108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4109
    goto/16 :goto_13e6

    .line 4096
    .end local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_63b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    .line 4097
    .restart local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4098
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 4099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4100
    goto/16 :goto_13e6

    .line 4084
    .end local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_64e
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 4086
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    .line 4087
    .local v1, "_arg1":Landroid/media/AudioFormat;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4088
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v2

    .line 4089
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4090
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4091
    goto/16 :goto_13e6

    .line 4075
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_arg1":Landroid/media/AudioFormat;
    .end local v2    # "_result":Z
    :pswitch_66d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4076
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4077
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    .line 4078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4079
    goto/16 :goto_13e6

    .line 4064
    .end local v0    # "_arg0":Z
    :pswitch_67c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v0

    .line 4066
    .local v0, "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4067
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4068
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    .line 4069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4070
    goto/16 :goto_13e6

    .line 4056
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .end local v1    # "_arg1":Z
    :pswitch_693
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v0

    .line 4057
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4058
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4059
    goto/16 :goto_13e6

    .line 4047
    .end local v0    # "_result":Z
    :pswitch_69f
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 4048
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4049
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 4050
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4051
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4052
    goto/16 :goto_13e6

    .line 4036
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_6b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4038
    .local v0, "_arg0":Z
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4039
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4040
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    .line 4041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4042
    goto/16 :goto_13e6

    .line 4026
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    :pswitch_6cd
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 4027
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4028
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 4029
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4030
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4031
    goto/16 :goto_13e6

    .line 4016
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_6e4
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 4017
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4018
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 4019
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4020
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4021
    goto/16 :goto_13e6

    .line 4008
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_6fb
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v0

    .line 4009
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4010
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4011
    goto/16 :goto_13e6

    .line 4001
    .end local v0    # "_result":Z
    :pswitch_707
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v0

    .line 4002
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4003
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4004
    goto/16 :goto_13e6

    .line 3994
    .end local v0    # "_result":Z
    :pswitch_713
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v0

    .line 3995
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3996
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3997
    goto/16 :goto_13e6

    .line 3987
    .end local v0    # "_result":I
    :pswitch_71f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 3988
    .local v0, "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3989
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 3990
    goto/16 :goto_13e6

    .line 3978
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_72f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 3979
    .restart local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3980
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 3981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3982
    goto/16 :goto_13e6

    .line 3968
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_742
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3969
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3970
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v1

    .line 3971
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3972
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3973
    goto/16 :goto_13e6

    .line 3952
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":J
    :pswitch_759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 3954
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3956
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 3958
    .local v2, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3959
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3960
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 3961
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3962
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3963
    goto/16 :goto_13e6

    .line 3947
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/AudioAttributes;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_780
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$requestAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3938
    :pswitch_785
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3939
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3940
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    .line 3941
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3942
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3943
    goto/16 :goto_13e6

    .line 3928
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":J
    :pswitch_79c
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3929
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3930
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    .line 3931
    .restart local v1    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3932
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3933
    goto/16 :goto_13e6

    .line 3916
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":J
    :pswitch_7b3
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3918
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3919
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3920
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v3

    .line 3921
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3922
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3923
    goto/16 :goto_13e6

    .line 3908
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_7ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3909
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3910
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    .line 3911
    goto/16 :goto_13e6

    .line 3900
    .end local v0    # "_arg0":Z
    :pswitch_7da
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v0

    .line 3901
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3902
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3903
    goto/16 :goto_13e6

    .line 3893
    .end local v0    # "_result":Z
    :pswitch_7e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3894
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3895
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 3896
    goto/16 :goto_13e6

    .line 3885
    .end local v0    # "_arg0":Z
    :pswitch_7f2
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0

    .line 3886
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3887
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3888
    goto/16 :goto_13e6

    .line 3878
    .end local v0    # "_result":Z
    :pswitch_7fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    .line 3879
    .local v0, "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3880
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 3881
    goto/16 :goto_13e6

    .line 3869
    .end local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_80e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    .line 3870
    .restart local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3871
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 3872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3873
    goto/16 :goto_13e6

    .line 3861
    .end local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_821
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v0

    .line 3862
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3863
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3864
    goto/16 :goto_13e6

    .line 3850
    .end local v0    # "_result":I
    :pswitch_82d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3852
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3853
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3854
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;I)Z

    move-result v2

    .line 3855
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3856
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3857
    goto/16 :goto_13e6

    .line 3842
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_844
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v0

    .line 3843
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3844
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3845
    goto/16 :goto_13e6

    .line 3833
    .end local v0    # "_result":[I
    :pswitch_850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3834
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3835
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v1

    .line 3836
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3837
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3838
    goto/16 :goto_13e6

    .line 3823
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3824
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3825
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v1

    .line 3826
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3827
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3828
    goto/16 :goto_13e6

    .line 3818
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_876
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$setStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3814
    :pswitch_87b
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$adjustSuggestedStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3810
    :pswitch_880
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$adjustStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3803
    :pswitch_885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    .line 3804
    .local v0, "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3805
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3806
    goto/16 :goto_13e6

    .line 3794
    .end local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    .line 3795
    .restart local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3796
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3798
    goto/16 :goto_13e6

    .line 3784
    .end local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_8a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3785
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3786
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v1

    .line 3787
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3788
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3789
    goto/16 :goto_13e6

    .line 3774
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_8bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3775
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3776
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v1

    .line 3777
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3778
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3779
    goto/16 :goto_13e6

    .line 3762
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3764
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3765
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3766
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v2

    .line 3767
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3768
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3769
    goto/16 :goto_13e6

    .line 3754
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "_result":I
    :pswitch_8e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3755
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3756
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    .line 3757
    goto/16 :goto_13e6

    .line 3744
    .end local v0    # "_arg0":Z
    :pswitch_8f3
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3745
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3746
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1

    .line 3747
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3748
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3749
    goto/16 :goto_13e6

    .line 3731
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":I
    :pswitch_90a
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3733
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3735
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3736
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3737
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3739
    goto/16 :goto_13e6

    .line 3723
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3724
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3725
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    .line 3726
    goto/16 :goto_13e6

    .line 3715
    .end local v0    # "_arg0":Z
    :pswitch_931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v0

    .line 3716
    .local v0, "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3717
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    .line 3718
    goto/16 :goto_13e6

    .line 3706
    .end local v0    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    :pswitch_941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v0

    .line 3707
    .restart local v0    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3708
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    .line 3709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3710
    goto/16 :goto_13e6

    .line 3698
    .end local v0    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    :pswitch_954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    .line 3699
    .local v0, "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3700
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3701
    goto/16 :goto_13e6

    .line 3689
    .end local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    .line 3690
    .restart local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3691
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3693
    goto/16 :goto_13e6

    .line 3681
    .end local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_977
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v0

    .line 3682
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3683
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3684
    goto/16 :goto_13e6

    .line 3672
    .end local v0    # "_result":I
    :pswitch_983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3673
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3674
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v1

    .line 3675
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3676
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3677
    goto/16 :goto_13e6

    .line 3664
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v0

    .line 3665
    .local v0, "_arg0":Landroid/media/IDevicesForAttributesCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3666
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V

    .line 3667
    goto/16 :goto_13e6

    .line 3653
    .end local v0    # "_arg0":Landroid/media/IDevicesForAttributesCallback;
    :pswitch_9a6
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3655
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v1

    .line 3656
    .local v1, "_arg1":Landroid/media/IDevicesForAttributesCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3657
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Landroid/media/IDevicesForAttributesCallback;)V

    .line 3658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3659
    goto/16 :goto_13e6

    .line 3643
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_arg1":Landroid/media/IDevicesForAttributesCallback;
    :pswitch_9c1
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3644
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3645
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    .line 3646
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3647
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3648
    goto/16 :goto_13e6

    .line 3633
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_9d8
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3634
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3635
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    .line 3636
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3637
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3638
    goto/16 :goto_13e6

    .line 3623
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_9ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3624
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3625
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getNonDefaultDevicesForStrategy(I)Ljava/util/List;

    move-result-object v1

    .line 3626
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3627
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3628
    goto/16 :goto_13e6

    .line 3611
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_a02
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3613
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3614
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3615
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->removeDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 3616
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3617
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3618
    goto/16 :goto_13e6

    .line 3599
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":I
    :pswitch_a1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3601
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3602
    .restart local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3603
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 3604
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3605
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3606
    goto/16 :goto_13e6

    .line 3589
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":I
    :pswitch_a38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3590
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3591
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v1

    .line 3592
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3593
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3594
    goto/16 :goto_13e6

    .line 3579
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_a4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3580
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3581
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v1

    .line 3582
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3583
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3584
    goto/16 :goto_13e6

    .line 3567
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_a5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3569
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3570
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3571
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v2

    .line 3572
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3573
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3574
    goto/16 :goto_13e6

    .line 3559
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "_result":I
    :pswitch_a77
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v0

    .line 3560
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3561
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3562
    goto/16 :goto_13e6

    .line 3550
    .end local v0    # "_result":Z
    :pswitch_a83
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3551
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3552
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v1

    .line 3553
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3554
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3555
    goto/16 :goto_13e6

    .line 3538
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_result":Z
    :pswitch_a9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3540
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3541
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3542
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 3543
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3544
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3545
    goto/16 :goto_13e6

    .line 3522
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_ab5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3524
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3526
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 3528
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 3529
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3530
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    .line 3531
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3532
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3533
    goto/16 :goto_13e6

    .line 3510
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_ad8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3512
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3513
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3514
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 3515
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3516
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3517
    goto/16 :goto_13e6

    .line 3494
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_af3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3496
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3498
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 3500
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 3501
    .restart local v3    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3502
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    .line 3503
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3504
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3505
    goto/16 :goto_13e6

    .line 3486
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_b16
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v0

    .line 3487
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3488
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3489
    goto/16 :goto_13e6

    .line 3479
    .end local v0    # "_result":Z
    :pswitch_b22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 3480
    .local v0, "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3481
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3482
    goto/16 :goto_13e6

    .line 3470
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_b32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 3471
    .restart local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3472
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3474
    goto/16 :goto_13e6

    .line 3458
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_b45
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 3460
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3462
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3463
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3464
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3465
    goto/16 :goto_13e6

    .line 3445
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_b61
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3447
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 3449
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/BluetoothProfileConnectionInfo;

    .line 3450
    .local v2, "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3451
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 3452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3453
    goto/16 :goto_13e6

    .line 3435
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    :pswitch_b84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3437
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3438
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3439
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 3440
    goto/16 :goto_13e6

    .line 3421
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_b94
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 3423
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3425
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3426
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3427
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 3428
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3429
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3430
    goto/16 :goto_13e6

    .line 3409
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_bb7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3411
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3412
    .local v1, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3413
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v2

    .line 3414
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3415
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3416
    goto/16 :goto_13e6

    .line 3401
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    .end local v2    # "_result":I
    :pswitch_bd2
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    .line 3402
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3403
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3404
    goto/16 :goto_13e6

    .line 3394
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :pswitch_bde
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 3395
    .local v0, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3396
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 3397
    goto/16 :goto_13e6

    .line 3385
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_bee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 3386
    .restart local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3387
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 3388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3389
    goto/16 :goto_13e6

    .line 3377
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_c01
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    .line 3378
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3379
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3380
    goto/16 :goto_13e6

    .line 3370
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :pswitch_c0d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 3371
    .local v0, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3372
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 3373
    goto/16 :goto_13e6

    .line 3361
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_c1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 3362
    .restart local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3363
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 3364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3365
    goto/16 :goto_13e6

    .line 3353
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_c30
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v0

    .line 3354
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3355
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3356
    goto/16 :goto_13e6

    .line 3345
    .end local v0    # "_result":Z
    :pswitch_c3c
    sget-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumePolicy;

    .line 3346
    .local v0, "_arg0":Landroid/media/VolumePolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3347
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 3348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3349
    goto/16 :goto_13e6

    .line 3333
    .end local v0    # "_arg0":Landroid/media/VolumePolicy;
    :pswitch_c4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3335
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3336
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3337
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 3338
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3339
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3340
    goto/16 :goto_13e6

    .line 3321
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_c6a
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3323
    .local v0, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3324
    .restart local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3325
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 3326
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3328
    goto/16 :goto_13e6

    .line 3309
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_c89
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3311
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3312
    .restart local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3313
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 3314
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3315
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3316
    goto/16 :goto_13e6

    .line 3300
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_ca8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3301
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3302
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3304
    goto/16 :goto_13e6

    .line 3292
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_cbb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3293
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3294
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3295
    goto/16 :goto_13e6

    .line 3287
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_ccb
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$registerAudioPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3280
    :pswitch_cd0
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v0

    .line 3281
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3282
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3283
    goto/16 :goto_13e6

    .line 3271
    .end local v0    # "_result":Z
    :pswitch_cdc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3272
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3273
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v1

    .line 3274
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3275
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3276
    goto/16 :goto_13e6

    .line 3263
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_cef
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCsdEnabled()Z

    move-result v0

    .line 3264
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3265
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3266
    goto/16 :goto_13e6

    .line 3256
    .end local v0    # "_result":Z
    :pswitch_cfb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3257
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3258
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->forceComputeCsdOnAllDevices(Z)V

    .line 3259
    goto/16 :goto_13e6

    .line 3248
    .end local v0    # "_arg0":Z
    :pswitch_d07
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3249
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3250
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->forceUseFrameworkMel(Z)V

    .line 3251
    goto/16 :goto_13e6

    .line 3240
    .end local v0    # "_arg0":Z
    :pswitch_d13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 3241
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3242
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setCsd(F)V

    .line 3243
    goto/16 :goto_13e6

    .line 3232
    .end local v0    # "_arg0":F
    :pswitch_d1f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCsd()F

    move-result v0

    .line 3233
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3234
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3235
    goto/16 :goto_13e6

    .line 3225
    .end local v0    # "_result":F
    :pswitch_d2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 3226
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3227
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setOutputRs2UpperBound(F)V

    .line 3228
    goto/16 :goto_13e6

    .line 3217
    .end local v0    # "_arg0":F
    :pswitch_d37
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getOutputRs2UpperBound()F

    move-result v0

    .line 3218
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3219
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3220
    goto/16 :goto_13e6

    .line 3209
    .end local v0    # "_result":F
    :pswitch_d43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3210
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3211
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->lowerVolumeToRs1(Ljava/lang/String;)V

    .line 3212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3213
    goto/16 :goto_13e6

    .line 3200
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3201
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3202
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 3203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3204
    goto/16 :goto_13e6

    .line 3190
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3191
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3192
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v1

    .line 3193
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3194
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3195
    goto/16 :goto_13e6

    .line 3180
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3181
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3182
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    .line 3183
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3184
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3185
    goto/16 :goto_13e6

    .line 3169
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 3171
    .local v0, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3172
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3173
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 3174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3175
    goto/16 :goto_13e6

    .line 3161
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    .end local v1    # "_arg1":Z
    :pswitch_d9e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getVolumeController()Landroid/media/IVolumeController;

    move-result-object v0

    .line 3162
    .local v0, "_result":Landroid/media/IVolumeController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3163
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3164
    goto/16 :goto_13e6

    .line 3153
    .end local v0    # "_result":Landroid/media/IVolumeController;
    :pswitch_daa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 3154
    .local v0, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3155
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 3156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3157
    goto/16 :goto_13e6

    .line 3145
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    :pswitch_dbd
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v0

    .line 3146
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3147
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3148
    goto/16 :goto_13e6

    .line 3136
    .end local v0    # "_result":Z
    :pswitch_dc9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v0

    .line 3137
    .local v0, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3138
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    .line 3139
    .local v1, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3140
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3141
    goto/16 :goto_13e6

    .line 3123
    .end local v0    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v1    # "_result":Landroid/media/AudioRoutesInfo;
    :pswitch_de0
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3125
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3127
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3128
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3129
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3131
    goto/16 :goto_13e6

    .line 3114
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_dfb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3115
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3116
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setNotifAliasRingForTest(Z)V

    .line 3117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3118
    goto/16 :goto_13e6

    .line 3103
    .end local v0    # "_arg0":Z
    :pswitch_e0a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStreamAliasingDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStreamAliasingDispatcher;

    move-result-object v0

    .line 3105
    .local v0, "_arg0":Landroid/media/IStreamAliasingDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3106
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3107
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->registerStreamAliasingDispatcher(Landroid/media/IStreamAliasingDispatcher;Z)V

    .line 3108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3109
    goto/16 :goto_13e6

    .line 3095
    .end local v0    # "_arg0":Landroid/media/IStreamAliasingDispatcher;
    .end local v1    # "_arg1":Z
    :pswitch_e21
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isVolumeControlUsingVolumeGroups()Z

    move-result v0

    .line 3096
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3097
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3098
    goto/16 :goto_13e6

    .line 3086
    .end local v0    # "_result":Z
    :pswitch_e2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3087
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3088
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getStreamTypeAlias(I)I

    move-result v1

    .line 3089
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3090
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3091
    goto/16 :goto_13e6

    .line 3078
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e40
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getIndependentStreamTypes()Ljava/util/List;

    move-result-object v0

    .line 3079
    .local v0, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3081
    goto/16 :goto_13e6

    .line 3071
    .end local v0    # "_result":Ljava/util/List;
    :pswitch_e4c
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v0

    .line 3072
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3073
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    goto/16 :goto_13e6

    .line 3064
    .end local v0    # "_result":I
    :pswitch_e58
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 3065
    .local v0, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3066
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3067
    goto/16 :goto_13e6

    .line 3056
    .end local v0    # "_result":Landroid/media/IRingtonePlayer;
    :pswitch_e64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 3057
    .local v0, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3058
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 3059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3060
    goto/16 :goto_13e6

    .line 3045
    .end local v0    # "_arg0":Landroid/media/IRingtonePlayer;
    :pswitch_e77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3047
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3048
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3049
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 3050
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3051
    goto/16 :goto_13e6

    .line 3036
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_e8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3037
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3038
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 3039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3040
    goto/16 :goto_13e6

    .line 3027
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_e99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3028
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3029
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 3030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3031
    goto/16 :goto_13e6

    .line 3016
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_ea8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3018
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3019
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3020
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 3021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3022
    goto/16 :goto_13e6

    .line 3008
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_ebb
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v0

    .line 3009
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3010
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3011
    goto/16 :goto_13e6

    .line 3000
    .end local v0    # "_result":I
    :pswitch_ec7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3001
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3002
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 3003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3004
    goto/16 :goto_13e6

    .line 2984
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_ed6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 2986
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2988
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 2990
    .local v2, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2991
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2992
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 2993
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2994
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2995
    goto/16 :goto_13e6

    .line 2979
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/AudioAttributes;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_efd
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$requestAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2972
    :pswitch_f02
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v0

    .line 2973
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2974
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2975
    goto/16 :goto_13e6

    .line 2964
    .end local v0    # "_result":Z
    :pswitch_f0e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2965
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2966
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 2967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2968
    goto/16 :goto_13e6

    .line 2956
    .end local v0    # "_arg0":Z
    :pswitch_f1d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v0

    .line 2957
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2958
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2959
    goto/16 :goto_13e6

    .line 2948
    .end local v0    # "_result":Z
    :pswitch_f29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2949
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2950
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setLeAudioSuspended(Z)V

    .line 2951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2952
    goto/16 :goto_13e6

    .line 2939
    .end local v0    # "_arg0":Z
    :pswitch_f38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2940
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2941
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setA2dpSuspended(Z)V

    .line 2942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2943
    goto/16 :goto_13e6

    .line 2930
    .end local v0    # "_arg0":Z
    :pswitch_f47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2931
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2932
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 2933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    goto/16 :goto_13e6

    .line 2922
    .end local v0    # "_arg0":Z
    :pswitch_f56
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v0

    .line 2923
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2924
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2925
    goto/16 :goto_13e6

    .line 2912
    .end local v0    # "_result":Z
    :pswitch_f62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2914
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2915
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2916
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;Z)V

    .line 2917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2918
    goto/16 :goto_13e6

    .line 2902
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_f75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2903
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2904
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v1

    .line 2905
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2906
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    goto/16 :goto_13e6

    .line 2892
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_f88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2893
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2894
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v1

    .line 2895
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2896
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2897
    goto/16 :goto_13e6

    .line 2882
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2883
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2884
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v1

    .line 2885
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2886
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2887
    goto/16 :goto_13e6

    .line 2870
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_fae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2872
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2873
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2874
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v2

    .line 2875
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2876
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2877
    goto/16 :goto_13e6

    .line 2862
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_fc5
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0

    .line 2863
    .local v0, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2864
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2865
    goto/16 :goto_13e6

    .line 2855
    .end local v0    # "_result":Ljava/util/List;
    :pswitch_fd1
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0

    .line 2856
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2857
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2858
    goto/16 :goto_13e6

    .line 2850
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_fdd
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 2851
    goto/16 :goto_13e6

    .line 2845
    :pswitch_fe2
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 2846
    goto/16 :goto_13e6

    .line 2838
    :pswitch_fe7
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v0

    .line 2839
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2840
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2841
    goto/16 :goto_13e6

    .line 2829
    .end local v0    # "_result":Z
    :pswitch_ff3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2831
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 2832
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2833
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 2834
    goto/16 :goto_13e6

    .line 2819
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2821
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2822
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2823
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    .line 2824
    goto/16 :goto_13e6

    .line 2811
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1013
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v0

    .line 2812
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2813
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2814
    goto/16 :goto_13e6

    .line 2799
    .end local v0    # "_result":I
    :pswitch_101f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2801
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2803
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2804
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2805
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    goto/16 :goto_13e6

    .line 2789
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2790
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2791
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v1

    .line 2792
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2793
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2794
    goto/16 :goto_13e6

    .line 2779
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2780
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2781
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v1

    .line 2782
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2783
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2784
    goto/16 :goto_13e6

    .line 2768
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_105c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2770
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2771
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2772
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 2773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2774
    goto/16 :goto_13e6

    .line 2758
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_106f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2759
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2760
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v1

    .line 2761
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2762
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2763
    goto/16 :goto_13e6

    .line 2750
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1082
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v0

    .line 2751
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2752
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    goto/16 :goto_13e6

    .line 2743
    .end local v0    # "_result":I
    :pswitch_108e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v0

    .line 2744
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2745
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2746
    goto/16 :goto_13e6

    .line 2733
    .end local v0    # "_result":I
    :pswitch_109a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2735
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2736
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2737
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    goto/16 :goto_13e6

    .line 2722
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_10ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2724
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2725
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2726
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 2727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2728
    goto/16 :goto_13e6

    .line 2714
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_10c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2715
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2716
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    .line 2717
    goto/16 :goto_13e6

    .line 2699
    .end local v0    # "_arg0":Z
    :pswitch_10cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2701
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2703
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2705
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2706
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2707
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    .line 2708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2709
    goto/16 :goto_13e6

    .line 2689
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_10e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2690
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2691
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isHotwordStreamSupported(Z)Z

    move-result v1

    .line 2692
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2693
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2694
    goto/16 :goto_13e6

    .line 2681
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_10fa
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v0

    .line 2682
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2683
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2684
    goto/16 :goto_13e6

    .line 2674
    .end local v0    # "_result":Z
    :pswitch_1106
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v0

    .line 2675
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2676
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2677
    goto/16 :goto_13e6

    .line 2667
    .end local v0    # "_result":Z
    :pswitch_1112
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    .line 2668
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2669
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2670
    goto/16 :goto_13e6

    .line 2660
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    :pswitch_111e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v0

    .line 2661
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2662
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2663
    goto/16 :goto_13e6

    .line 2652
    .end local v0    # "_result":[I
    :pswitch_112a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 2653
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2654
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    .line 2655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    goto/16 :goto_13e6

    .line 2642
    .end local v0    # "_arg0":[I
    :pswitch_1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2643
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2644
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 2645
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2646
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    goto/16 :goto_13e6

    .line 2627
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_114c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2629
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2631
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2633
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2634
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2635
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustVolumeGroupVolume(IIILjava/lang/String;)V

    .line 2636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2637
    goto/16 :goto_13e6

    .line 2617
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2618
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2619
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isVolumeGroupMuted(I)Z

    move-result v1

    .line 2620
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2621
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2622
    goto/16 :goto_13e6

    .line 2607
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_117a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2608
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2609
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getLastAudibleVolumeForVolumeGroup(I)I

    move-result v1

    .line 2610
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2611
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2612
    goto/16 :goto_13e6

    .line 2597
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_118d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2598
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2599
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getVolumeGroupMinVolumeIndex(I)I

    move-result v1

    .line 2600
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2601
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2602
    goto/16 :goto_13e6

    .line 2587
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2588
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2589
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getVolumeGroupMaxVolumeIndex(I)I

    move-result v1

    .line 2590
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2591
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    goto/16 :goto_13e6

    .line 2577
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2578
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2579
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getVolumeGroupVolumeIndex(I)I

    move-result v1

    .line 2580
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2581
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2582
    goto/16 :goto_13e6

    .line 2572
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11c6
    invoke-direct {v6, v8, v9}, Landroid/media/IAudioService$Stub;->onTransact$setVolumeGroupVolumeIndex$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2565
    :pswitch_11cb
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    .line 2566
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2568
    goto/16 :goto_13e6

    .line 2556
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    :pswitch_11d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2557
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2558
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v1

    .line 2559
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    goto/16 :goto_13e6

    .line 2546
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2547
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2548
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v1

    .line 2549
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2550
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2551
    goto/16 :goto_13e6

    .line 2536
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2537
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2538
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v1

    .line 2539
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2540
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2541
    goto/16 :goto_13e6

    .line 2519
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 2521
    .local v12, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2523
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2525
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2527
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2528
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2529
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    .line 2530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2531
    goto/16 :goto_13e6

    .line 2511
    .end local v12    # "_arg0":Z
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_1237
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v0

    .line 2512
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2513
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2514
    goto/16 :goto_13e6

    .line 2501
    .end local v0    # "_result":Z
    :pswitch_1243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2503
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2504
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2505
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 2506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2507
    goto/16 :goto_13e6

    .line 2491
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2492
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2493
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v1

    .line 2494
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2495
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2496
    goto/16 :goto_13e6

    .line 2477
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1269
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 2479
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2481
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2483
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2484
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2485
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2486
    goto/16 :goto_13e6

    .line 2463
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_1285
    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeInfo;

    .line 2465
    .local v0, "_arg0":Landroid/media/VolumeInfo;
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2467
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2468
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2469
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v3

    .line 2470
    .local v3, "_result":Landroid/media/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2471
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2472
    goto/16 :goto_13e6

    .line 2450
    .end local v0    # "_arg0":Landroid/media/VolumeInfo;
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/media/VolumeInfo;
    :pswitch_12a8
    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeInfo;

    .line 2452
    .restart local v0    # "_arg0":Landroid/media/VolumeInfo;
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2454
    .restart local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2455
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2456
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V

    .line 2457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2458
    goto/16 :goto_13e6

    .line 2433
    .end local v0    # "_arg0":Landroid/media/VolumeInfo;
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_12c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2435
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2437
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2439
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2441
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2442
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2443
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2445
    goto/16 :goto_13e6

    .line 2418
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_12ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2420
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2422
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2424
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2425
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2426
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 2427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    goto/16 :goto_13e6

    .line 2401
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2403
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2405
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2407
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2409
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2410
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2411
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2413
    goto/16 :goto_13e6

    .line 2386
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2388
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2390
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2392
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2393
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2394
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 2395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2396
    goto/16 :goto_13e6

    .line 2374
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_134b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2376
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2378
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 2379
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->portEvent(IILandroid/os/PersistableBundle;)V

    .line 2381
    goto/16 :goto_13e6

    .line 2364
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_1363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2366
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2367
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2368
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    .line 2369
    goto/16 :goto_13e6

    .line 2356
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2357
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2358
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    .line 2359
    goto :goto_13e6

    .line 2346
    .end local v0    # "_arg0":I
    :pswitch_137e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2348
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2349
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2350
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    .line 2351
    goto :goto_13e6

    .line 2336
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_138d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2337
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2338
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v1

    .line 2339
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2340
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2341
    goto :goto_13e6

    .line 2328
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_139f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2329
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2330
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 2331
    goto :goto_13e6

    .line 2316
    .end local v0    # "_arg0":I
    :pswitch_13aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2318
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2320
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2321
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2322
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/IAudioService$Stub;->playerEvent(III)V

    .line 2323
    goto :goto_13e6

    .line 2306
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_13bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2308
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 2309
    .local v1, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2310
    invoke-virtual {v6, v0, v1}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 2311
    goto :goto_13e6

    .line 2296
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    :pswitch_13d0
    sget-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase$PlayerIdCard;

    .line 2297
    .local v0, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2298
    invoke-virtual {v6, v0}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v1

    .line 2299
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2300
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2301
    nop

    .line 4950
    .end local v0    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    .end local v1    # "_result":I
    :goto_13e6
    return v11

    nop

    :pswitch_data_13e8
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_13ee
    .packed-switch 0x1
        :pswitch_13d0
        :pswitch_13bd
        :pswitch_13aa
        :pswitch_139f
        :pswitch_138d
        :pswitch_137e
        :pswitch_1373
        :pswitch_1363
        :pswitch_134b
        :pswitch_1330
        :pswitch_1309
        :pswitch_12ee
        :pswitch_12c7
        :pswitch_12a8
        :pswitch_1285
        :pswitch_1269
        :pswitch_1256
        :pswitch_1243
        :pswitch_1237
        :pswitch_1210
        :pswitch_11fd
        :pswitch_11ea
        :pswitch_11d7
        :pswitch_11cb
        :pswitch_11c6
        :pswitch_11b3
        :pswitch_11a0
        :pswitch_118d
        :pswitch_117a
        :pswitch_1167
        :pswitch_114c
        :pswitch_1139
        :pswitch_112a
        :pswitch_111e
        :pswitch_1112
        :pswitch_1106
        :pswitch_10fa
        :pswitch_10e7
        :pswitch_10cc
        :pswitch_10c0
        :pswitch_10ad
        :pswitch_109a
        :pswitch_108e
        :pswitch_1082
        :pswitch_106f
        :pswitch_105c
        :pswitch_1049
        :pswitch_1036
        :pswitch_101f
        :pswitch_1013
        :pswitch_1003
        :pswitch_ff3
        :pswitch_fe7
        :pswitch_fe2
        :pswitch_fdd
        :pswitch_fd1
        :pswitch_fc5
        :pswitch_fae
        :pswitch_f9b
        :pswitch_f88
        :pswitch_f75
        :pswitch_f62
        :pswitch_f56
        :pswitch_f47
        :pswitch_f38
        :pswitch_f29
        :pswitch_f1d
        :pswitch_f0e
        :pswitch_f02
        :pswitch_efd
        :pswitch_ed6
        :pswitch_ec7
        :pswitch_ebb
        :pswitch_ea8
        :pswitch_e99
        :pswitch_e8a
        :pswitch_e77
        :pswitch_e64
        :pswitch_e58
        :pswitch_e4c
        :pswitch_e40
        :pswitch_e2d
        :pswitch_e21
        :pswitch_e0a
        :pswitch_dfb
        :pswitch_de0
        :pswitch_dc9
        :pswitch_dbd
        :pswitch_daa
        :pswitch_d9e
        :pswitch_d87
        :pswitch_d74
        :pswitch_d61
        :pswitch_d52
        :pswitch_d43
        :pswitch_d37
        :pswitch_d2b
        :pswitch_d1f
        :pswitch_d13
        :pswitch_d07
        :pswitch_cfb
        :pswitch_cef
        :pswitch_cdc
        :pswitch_cd0
        :pswitch_ccb
        :pswitch_cbb
        :pswitch_ca8
        :pswitch_c89
        :pswitch_c6a
        :pswitch_c4f
        :pswitch_c3c
        :pswitch_c30
        :pswitch_c1d
        :pswitch_c0d
        :pswitch_c01
        :pswitch_bee
        :pswitch_bde
        :pswitch_bd2
        :pswitch_bb7
        :pswitch_b94
        :pswitch_b84
        :pswitch_b61
        :pswitch_b45
        :pswitch_b32
        :pswitch_b22
        :pswitch_b16
        :pswitch_af3
        :pswitch_ad8
        :pswitch_ab5
        :pswitch_a9a
        :pswitch_a83
        :pswitch_a77
        :pswitch_a5e
        :pswitch_a4b
        :pswitch_a38
        :pswitch_a1d
        :pswitch_a02
        :pswitch_9ef
        :pswitch_9d8
        :pswitch_9c1
        :pswitch_9a6
        :pswitch_996
        :pswitch_983
        :pswitch_977
        :pswitch_964
        :pswitch_954
        :pswitch_941
        :pswitch_931
        :pswitch_925
        :pswitch_90a
        :pswitch_8f3
        :pswitch_8e7
        :pswitch_8ce
        :pswitch_8bb
        :pswitch_8a8
        :pswitch_895
        :pswitch_885
        :pswitch_880
        :pswitch_87b
        :pswitch_876
        :pswitch_863
        :pswitch_850
        :pswitch_844
        :pswitch_82d
        :pswitch_821
        :pswitch_80e
        :pswitch_7fe
        :pswitch_7f2
        :pswitch_7e6
        :pswitch_7da
        :pswitch_7ce
        :pswitch_7b3
        :pswitch_79c
        :pswitch_785
        :pswitch_780
        :pswitch_759
        :pswitch_742
        :pswitch_72f
        :pswitch_71f
        :pswitch_713
        :pswitch_707
        :pswitch_6fb
        :pswitch_6e4
        :pswitch_6cd
        :pswitch_6b6
        :pswitch_69f
        :pswitch_693
        :pswitch_67c
        :pswitch_66d
        :pswitch_64e
        :pswitch_63b
        :pswitch_628
        :pswitch_615
        :pswitch_602
        :pswitch_5ef
        :pswitch_5dc
        :pswitch_5d0
        :pswitch_5bd
        :pswitch_5aa
        :pswitch_59b
        :pswitch_58f
        :pswitch_583
        :pswitch_577
        :pswitch_56b
        :pswitch_566
        :pswitch_553
        :pswitch_53d
        :pswitch_531
        :pswitch_51e
        :pswitch_50b
        :pswitch_4ff
        :pswitch_4f3
        :pswitch_4e7
        :pswitch_4cf
        :pswitch_4bf
        :pswitch_4b3
        :pswitch_49c
        :pswitch_485
        :pswitch_46e
        :pswitch_462
        :pswitch_443
        :pswitch_434
        :pswitch_425
        :pswitch_416
        :pswitch_40a
        :pswitch_3fe
        :pswitch_3f9
        :pswitch_3ed
        :pswitch_3ca
        :pswitch_3af
        :pswitch_39c
        :pswitch_38c
        :pswitch_380
        :pswitch_371
        :pswitch_365
        :pswitch_356
        :pswitch_343
        :pswitch_337
        :pswitch_324
        :pswitch_311
        :pswitch_2fa
        :pswitch_2e7
        :pswitch_2d0
        :pswitch_2bd
        :pswitch_2a6
        :pswitch_293
        :pswitch_280
        :pswitch_274
        :pswitch_26f
        :pswitch_258
        :pswitch_245
        :pswitch_239
        :pswitch_22d
        :pswitch_21a
        :pswitch_20b
        :pswitch_1f8
        :pswitch_1e5
        :pswitch_1e0
        :pswitch_1c9
        :pswitch_1ba
        :pswitch_1ae
        :pswitch_193
        :pswitch_180
        :pswitch_174
        :pswitch_168
        :pswitch_15c
        :pswitch_148
        :pswitch_135
        :pswitch_129
        :pswitch_11a
        :pswitch_10e
        :pswitch_106
        :pswitch_fa
        :pswitch_e7
        :pswitch_e2
        :pswitch_c7
        :pswitch_bb
        :pswitch_ac
        :pswitch_a0
        :pswitch_89
        :pswitch_7a
        :pswitch_6e
        :pswitch_5b
        :pswitch_47
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method

.method protected recenterHeadTracker_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10363
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10364
    return-void
.end method

.method protected registerHeadToSoundstagePoseCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10313
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10314
    return-void
.end method

.method protected registerMuteAwaitConnectionDispatcher_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10407
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10408
    return-void
.end method

.method protected registerSpatializerHeadTrackingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10303
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10304
    return-void
.end method

.method protected registerSpatializerOutputCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10383
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10384
    return-void
.end method

.method protected registerStreamAliasingDispatcher_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9974
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9975
    return-void
.end method

.method protected removeAssistantServicesUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10425
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10426
    return-void
.end method

.method protected removeDeviceAsNonDefaultForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10105
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10106
    return-void
.end method

.method protected removePreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10090
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10091
    return-void
.end method

.method protected removeSpatializerCompatibleAudioDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10333
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10334
    return-void
.end method

.method protected setA2dpSuspended_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9907
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9908
    return-void
.end method

.method protected setActiveAssistantServiceUids_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10430
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10431
    return-void
.end method

.method protected setBluetoothVariableLatencyEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10477
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10478
    return-void
.end method

.method protected setCsd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10013
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10014
    return-void
.end method

.method protected setDesiredHeadTrackingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10338
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10339
    return-void
.end method

.method protected setDeviceAsNonDefaultForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10100
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10101
    return-void
.end method

.method protected setDeviceVolumeBehavior_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10127
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 10128
    return-void
.end method

.method protected setDeviceVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9774
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9775
    return-void
.end method

.method protected setHeadTrackerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10283
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10284
    return-void
.end method

.method protected setLeAudioSuspended_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9912
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9913
    return-void
.end method

.method protected setMasterMute_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9789
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9790
    return-void
.end method

.method protected setMultiAudioFocusEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10138
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10139
    return-void
.end method

.method protected setNotifAliasRingForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9979
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9980
    return-void
.end method

.method protected setOutputRs2UpperBound_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10003
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10004
    return-void
.end method

.method protected setPreferredDevicesForStrategy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10085
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10086
    return-void
.end method

.method protected setSpatializerEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10295
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10296
    return-void
.end method

.method protected setSpatializerGlobalTransform_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10358
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10359
    return-void
.end method

.method protected setSpatializerParameter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10368
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10369
    return-void
.end method

.method protected setSupportedSystemUsages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9855
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9856
    return-void
.end method

.method protected setVolumeGroupVolumeIndex_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9820
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9821
    return-void
.end method

.method protected setWiredDeviceConnectionState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9984
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9985
    return-void
.end method

.method protected supportsBluetoothVariableLatency_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10472
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10473
    return-void
.end method

.method protected unregisterHeadToSoundstagePoseCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10318
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10319
    return-void
.end method

.method protected unregisterSpatializerHeadTrackingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10308
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10309
    return-void
.end method

.method protected unregisterSpatializerOutputCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10388
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10389
    return-void
.end method
