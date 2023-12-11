.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_addUceRegistrationOverrideShell:I = 0x144

.field static final TRANSACTION_bootstrapAuthenticationRequest:I = 0x129

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x8a

.field static final TRANSACTION_canConnectTo5GInDsdsMode:I = 0x121

.field static final TRANSACTION_carrierActionReportDefaultNetworkStatus:I = 0xb3

.field static final TRANSACTION_carrierActionResetAll:I = 0xb4

.field static final TRANSACTION_carrierActionSetRadioEnabled:I = 0xb2

.field static final TRANSACTION_changeIccLockPassword:I = 0x11d

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x79

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x7a

.field static final TRANSACTION_clearCarrierImsServiceOverride:I = 0x63

.field static final TRANSACTION_clearRadioPowerOffForReason:I = 0x16

.field static final TRANSACTION_clearSignalStrengthUpdateRequest:I = 0x14c

.field static final TRANSACTION_clearUceRegistrationOverrideShell:I = 0x146

.field static final TRANSACTION_deprovisionSatelliteService:I = 0x16e

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x1d

.field static final TRANSACTION_disableIms:I = 0x5c

.field static final TRANSACTION_disableLocationUpdates:I = 0x1b

.field static final TRANSACTION_disableVisualVoicemailSmsFilter:I = 0x3b

.field static final TRANSACTION_doesSwitchMultiSimConfigTriggerReboot:I = 0x107

.field static final TRANSACTION_enableDataConnectivity:I = 0x1c

.field static final TRANSACTION_enableIms:I = 0x5b

.field static final TRANSACTION_enableLocationUpdates:I = 0x1a

.field static final TRANSACTION_enableModemForSlot:I = 0x103

.field static final TRANSACTION_enableVideoCalling:I = 0x88

.field static final TRANSACTION_enableVisualVoicemailSmsFilter:I = 0x3a

.field static final TRANSACTION_enqueueSmsPickResult:I = 0x113

.field static final TRANSACTION_factoryReset:I = 0x9d

.field static final TRANSACTION_getActivePhoneType:I = 0x28

.field static final TRANSACTION_getActivePhoneTypeForSlot:I = 0x29

.field static final TRANSACTION_getActiveVisualVoicemailSmsFilterSettings:I = 0x3d

.field static final TRANSACTION_getAidForAppType:I = 0xa7

.field static final TRANSACTION_getAllCellInfo:I = 0x48

.field static final TRANSACTION_getAllowedCarriers:I = 0xac

.field static final TRANSACTION_getAllowedNetworkTypesBitmask:I = 0x59

.field static final TRANSACTION_getAllowedNetworkTypesForReason:I = 0x6b

.field static final TRANSACTION_getBoundGbaService:I = 0x12b

.field static final TRANSACTION_getBoundImsServicePackage:I = 0x64

.field static final TRANSACTION_getCallComposerStatus:I = 0x8

.field static final TRANSACTION_getCallForwarding:I = 0xb5

.field static final TRANSACTION_getCallState:I = 0x22

.field static final TRANSACTION_getCallStateForSubscription:I = 0x23

.field static final TRANSACTION_getCallWaitingStatus:I = 0xb7

.field static final TRANSACTION_getCapabilityFromEab:I = 0x141

.field static final TRANSACTION_getCardIdForDefaultEuicc:I = 0xc0

.field static final TRANSACTION_getCarrierIdFromMccMnc:I = 0xb1

.field static final TRANSACTION_getCarrierIdListVersion:I = 0xcd

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x7b

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x77

.field static final TRANSACTION_getCarrierPrivilegeStatusForUid:I = 0x78

.field static final TRANSACTION_getCarrierRestrictionStatus:I = 0x165

.field static final TRANSACTION_getCarrierServicePackageNameForLogicalSlot:I = 0x15a

.field static final TRANSACTION_getCarrierSingleRegistrationEnabled:I = 0x13b

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x2a

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x2b

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x2c

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x2d

.field static final TRANSACTION_getCdmaEriText:I = 0x2e

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x2f

.field static final TRANSACTION_getCdmaMdn:I = 0x74

.field static final TRANSACTION_getCdmaMin:I = 0x75

.field static final TRANSACTION_getCdmaPrlVersion:I = 0xa9

.field static final TRANSACTION_getCdmaRoamingMode:I = 0xc7

.field static final TRANSACTION_getCdmaSubscriptionMode:I = 0xc9

.field static final TRANSACTION_getCellBroadcastIdRanges:I = 0x162

.field static final TRANSACTION_getCellLocation:I = 0x1f

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x67

.field static final TRANSACTION_getCertsFromCarrierPrivilegeAccessRules:I = 0xef

.field static final TRANSACTION_getClientRequestStats:I = 0xb9

.field static final TRANSACTION_getContactFromEab:I = 0x140

.field static final TRANSACTION_getCurrentPackageName:I = 0x10b

.field static final TRANSACTION_getDataActivationState:I = 0x35

.field static final TRANSACTION_getDataActivity:I = 0x24

.field static final TRANSACTION_getDataActivityForSubId:I = 0x25

.field static final TRANSACTION_getDataEnabled:I = 0x6d

.field static final TRANSACTION_getDataNetworkType:I = 0x41

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x42

.field static final TRANSACTION_getDataState:I = 0x26

.field static final TRANSACTION_getDataStateForSubId:I = 0x27

.field static final TRANSACTION_getDefaultRespondViaMessageApplication:I = 0x15d

.field static final TRANSACTION_getDeviceId:I = 0x93

.field static final TRANSACTION_getDeviceIdWithFeature:I = 0x94

.field static final TRANSACTION_getDeviceSingleRegistrationEnabled:I = 0x136

.field static final TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x9a

.field static final TRANSACTION_getDeviceUceEnabled:I = 0x142

.field static final TRANSACTION_getEmergencyCallbackMode:I = 0xbe

.field static final TRANSACTION_getEmergencyNumberDbVersion:I = 0xff

.field static final TRANSACTION_getEmergencyNumberList:I = 0xed

.field static final TRANSACTION_getEmergencyNumberListTestMode:I = 0xfe

.field static final TRANSACTION_getEquivalentHomePlmns:I = 0x122

.field static final TRANSACTION_getEsn:I = 0xa8

.field static final TRANSACTION_getForbiddenPlmns:I = 0xbc

.field static final TRANSACTION_getGbaReleaseTime:I = 0x12d

.field static final TRANSACTION_getHalVersion:I = 0x10a

.field static final TRANSACTION_getImeiForSlot:I = 0x95

.field static final TRANSACTION_getImsConfig:I = 0x61

.field static final TRANSACTION_getImsFeatureValidationOverride:I = 0x13d

.field static final TRANSACTION_getImsMmTelFeatureState:I = 0x65

.field static final TRANSACTION_getImsMmTelRegistrationState:I = 0xd5

.field static final TRANSACTION_getImsMmTelRegistrationTransportType:I = 0xd6

.field static final TRANSACTION_getImsProvisioningInt:I = 0xf8

.field static final TRANSACTION_getImsProvisioningStatusForCapability:I = 0xf5

.field static final TRANSACTION_getImsProvisioningString:I = 0xf9

.field static final TRANSACTION_getImsRegTechnologyForMmTel:I = 0x92

.field static final TRANSACTION_getImsRegistration:I = 0x60

.field static final TRANSACTION_getLastKnownCellIdentity:I = 0x154

.field static final TRANSACTION_getLastUcePidfXmlShell:I = 0x148

.field static final TRANSACTION_getLatestRcsContactUceCapabilityShell:I = 0x147

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x7e

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x7d

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x46

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x47

.field static final TRANSACTION_getManualNetworkSelectionPlmn:I = 0x120

.field static final TRANSACTION_getManufacturerCodeForSlot:I = 0x99

.field static final TRANSACTION_getMeidForSlot:I = 0x98

.field static final TRANSACTION_getMergedImsisFromGroup:I = 0x80

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x7f

.field static final TRANSACTION_getMmsUAProfUrl:I = 0x116

.field static final TRANSACTION_getMmsUserAgent:I = 0x115

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x13e

.field static final TRANSACTION_getModemService:I = 0x156

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x21

.field static final TRANSACTION_getNetworkCountryIsoForPhone:I = 0x20

.field static final TRANSACTION_getNetworkSelectionMode:I = 0xd0

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x40

.field static final TRANSACTION_getNumberOfModemsWithSimultaneousDataConnections:I = 0xcf

.field static final TRANSACTION_getPackagesWithCarrierPrivileges:I = 0xa5

.field static final TRANSACTION_getPackagesWithCarrierPrivilegesForAllPhones:I = 0xa6

.field static final TRANSACTION_getPhoneAccountHandleForSubscriptionId:I = 0x9c

.field static final TRANSACTION_getPhoneCapability:I = 0x14d

.field static final TRANSACTION_getPrimaryImei:I = 0x96

.field static final TRANSACTION_getRadioAccessFamily:I = 0x86

.field static final TRANSACTION_getRadioHalVersion:I = 0x109

.field static final TRANSACTION_getRadioPowerOffReasons:I = 0x17

.field static final TRANSACTION_getRadioPowerState:I = 0xd2

.field static final TRANSACTION_getRcsProvisioningStatusForCapability:I = 0xf6

.field static final TRANSACTION_getRcsSingleRegistrationTestModeEnabled:I = 0x134

.field static final TRANSACTION_getServiceStateForSubscriber:I = 0xa0

.field static final TRANSACTION_getShaIdFromAllowList:I = 0x180

.field static final TRANSACTION_getSignalStrength:I = 0xbf

.field static final TRANSACTION_getSimLocaleForSubscriber:I = 0x9e

.field static final TRANSACTION_getSimStateForSlotIndex:I = 0x15e

.field static final TRANSACTION_getSlicingConfig:I = 0x14f

.field static final TRANSACTION_getSlotsMapping:I = 0x108

.field static final TRANSACTION_getSubIdForPhoneAccountHandle:I = 0x9b

.field static final TRANSACTION_getSubscriptionCarrierId:I = 0xad

.field static final TRANSACTION_getSubscriptionCarrierName:I = 0xae

.field static final TRANSACTION_getSubscriptionSpecificCarrierId:I = 0xaf

.field static final TRANSACTION_getSubscriptionSpecificCarrierName:I = 0xb0

.field static final TRANSACTION_getSystemSelectionChannels:I = 0x111

.field static final TRANSACTION_getTelephonyHistograms:I = 0xaa

.field static final TRANSACTION_getTypeAllocationCodeForSlot:I = 0x97

.field static final TRANSACTION_getUiccCardsInfo:I = 0xc1

.field static final TRANSACTION_getUiccSlotsInfo:I = 0xc2

.field static final TRANSACTION_getVisualVoicemailPackageName:I = 0x39

.field static final TRANSACTION_getVisualVoicemailSettings:I = 0x38

.field static final TRANSACTION_getVisualVoicemailSmsFilterSettings:I = 0x3c

.field static final TRANSACTION_getVoWiFiModeSetting:I = 0xe7

.field static final TRANSACTION_getVoWiFiRoamingModeSetting:I = 0xe9

.field static final TRANSACTION_getVoiceActivationState:I = 0x34

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x36

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x43

.field static final TRANSACTION_getVoicemailRingtoneUri:I = 0xa1

.field static final TRANSACTION_handlePinMmi:I = 0xd

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0xf

.field static final TRANSACTION_handleUssdRequest:I = 0xe

.field static final TRANSACTION_hasIccCard:I = 0x44

.field static final TRANSACTION_hasIccCardUsingSlotIndex:I = 0x45

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4d

.field static final TRANSACTION_iccExchangeSimIO:I = 0x52

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4c

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x51

.field static final TRANSACTION_iccTransmitApduBasicChannelByPort:I = 0x50

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4f

.field static final TRANSACTION_iccTransmitApduLogicalChannelByPort:I = 0x4e

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x83

.field static final TRANSACTION_isAdvancedCallingSettingEnabled:I = 0xdc

.field static final TRANSACTION_isApnMetered:I = 0x10f

.field static final TRANSACTION_isApplicationOnUicc:I = 0x10c

.field static final TRANSACTION_isAvailable:I = 0xda

.field static final TRANSACTION_isCapable:I = 0xd9

.field static final TRANSACTION_isConcurrentVoiceAndDataAllowed:I = 0x37

.field static final TRANSACTION_isCrossSimCallingEnabledByUser:I = 0xe2

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1e

.field static final TRANSACTION_isDataEnabled:I = 0x6f

.field static final TRANSACTION_isDataEnabledForApn:I = 0x10e

.field static final TRANSACTION_isDataEnabledForReason:I = 0x71

.field static final TRANSACTION_isDataRoamingEnabled:I = 0xc5

.field static final TRANSACTION_isDomainSelectionSupported:I = 0x164

.field static final TRANSACTION_isEmergencyNumber:I = 0xee

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x8e

.field static final TRANSACTION_isIccLockEnabled:I = 0x11b

.field static final TRANSACTION_isImsRegistered:I = 0x8f

.field static final TRANSACTION_isInEmergencySmsMode:I = 0xd1

.field static final TRANSACTION_isManualNetworkSelectionAllowed:I = 0x72

.field static final TRANSACTION_isMmTelCapabilitySupported:I = 0xdb

.field static final TRANSACTION_isMobileDataPolicyEnabled:I = 0x118

.field static final TRANSACTION_isModemEnabledForSlot:I = 0x10d

.field static final TRANSACTION_isMultiSimSupported:I = 0x105

.field static final TRANSACTION_isMvnoMatched:I = 0x112

.field static final TRANSACTION_isNrDualConnectivityEnabled:I = 0x126

.field static final TRANSACTION_isNullCipherAndIntegrityPreferenceEnabled:I = 0x161

.field static final TRANSACTION_isPremiumCapabilityAvailableForPurchase:I = 0x150

.field static final TRANSACTION_isProvisioningRequiredForCapability:I = 0x157

.field static final TRANSACTION_isRadioInterfaceCapabilitySupported:I = 0x127

.field static final TRANSACTION_isRadioOn:I = 0x3

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0x5

.field static final TRANSACTION_isRadioOnForSubscriberWithFeature:I = 0x6

.field static final TRANSACTION_isRadioOnWithFeature:I = 0x4

.field static final TRANSACTION_isRcsProvisioningRequiredForCapability:I = 0x158

.field static final TRANSACTION_isRcsVolteSingleRegistrationCapable:I = 0x12f

.field static final TRANSACTION_isRemovableEsimDefaultEuicc:I = 0x15c

.field static final TRANSACTION_isRttSupported:I = 0x8d

.field static final TRANSACTION_isTetheringApnRequiredForSubscriber:I = 0x5a

.field static final TRANSACTION_isTtyModeSupported:I = 0x8c

.field static final TRANSACTION_isTtyOverVolteEnabled:I = 0xec

.field static final TRANSACTION_isUserDataEnabled:I = 0x6e

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x89

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x91

.field static final TRANSACTION_isVoNrEnabled:I = 0x124

.field static final TRANSACTION_isVoWiFiRoamingSettingEnabled:I = 0xe4

.field static final TRANSACTION_isVoWiFiSettingEnabled:I = 0xe0

.field static final TRANSACTION_isVoicemailVibrationEnabled:I = 0xa3

.field static final TRANSACTION_isVtSettingEnabled:I = 0xde

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x90

.field static final TRANSACTION_isWorldPhone:I = 0x8b

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x84

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x30

.field static final TRANSACTION_notifyOtaEmergencyNumberDbInstalled:I = 0x100

.field static final TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x11a

.field static final TRANSACTION_nvReadItem:I = 0x54

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x56

.field static final TRANSACTION_nvWriteItem:I = 0x55

.field static final TRANSACTION_onDeviceAlignedWithSatellite:I = 0x17a

.field static final TRANSACTION_persistEmergencyCallDiagnosticData:I = 0x15f

.field static final TRANSACTION_pollPendingSatelliteDatagrams:I = 0x176

.field static final TRANSACTION_prepareForUnattendedReboot:I = 0x14e

.field static final TRANSACTION_provisionSatelliteService:I = 0x16d

.field static final TRANSACTION_purchasePremiumCapability:I = 0x151

.field static final TRANSACTION_rebootModem:I = 0x58

.field static final TRANSACTION_refreshUiccProfile:I = 0xce

.field static final TRANSACTION_registerFeatureProvisioningChangedCallback:I = 0xf2

.field static final TRANSACTION_registerForSatelliteDatagram:I = 0x174

.field static final TRANSACTION_registerForSatelliteModemStateChanged:I = 0x172

.field static final TRANSACTION_registerForSatelliteProvisionStateChanged:I = 0x16f

.field static final TRANSACTION_registerImsProvisioningChangedCallback:I = 0xf0

.field static final TRANSACTION_registerImsRegistrationCallback:I = 0xd3

.field static final TRANSACTION_registerImsStateCallback:I = 0x152

.field static final TRANSACTION_registerMmTelCapabilityCallback:I = 0xd7

.field static final TRANSACTION_registerMmTelFeatureCallback:I = 0x5e

.field static final TRANSACTION_registerRcsProvisioningCallback:I = 0x130

.field static final TRANSACTION_removeContactFromEab:I = 0x13f

.field static final TRANSACTION_removeUceRegistrationOverrideShell:I = 0x145

.field static final TRANSACTION_removeUceRequestDisallowedStatus:I = 0x149

.field static final TRANSACTION_requestCellInfoUpdate:I = 0x49

.field static final TRANSACTION_requestCellInfoUpdateWithWorkSource:I = 0x4a

.field static final TRANSACTION_requestIsDemoModeEnabled:I = 0x168

.field static final TRANSACTION_requestIsSatelliteCommunicationAllowedForCurrentLocation:I = 0x178

.field static final TRANSACTION_requestIsSatelliteEnabled:I = 0x167

.field static final TRANSACTION_requestIsSatelliteProvisioned:I = 0x171

.field static final TRANSACTION_requestIsSatelliteSupported:I = 0x169

.field static final TRANSACTION_requestModemActivityInfo:I = 0x9f

.field static final TRANSACTION_requestNetworkScan:I = 0x68

.field static final TRANSACTION_requestNumberVerification:I = 0x76

.field static final TRANSACTION_requestRadioPowerOffForReason:I = 0x15

.field static final TRANSACTION_requestSatelliteCapabilities:I = 0x16a

.field static final TRANSACTION_requestSatelliteEnabled:I = 0x166

.field static final TRANSACTION_requestTimeForNextSatelliteVisibility:I = 0x179

.field static final TRANSACTION_requestUserActivityNotification:I = 0x11e

.field static final TRANSACTION_resetIms:I = 0x5d

.field static final TRANSACTION_resetModemConfig:I = 0x57

.field static final TRANSACTION_resetOtaEmergencyNumberDbFilePath:I = 0x102

.field static final TRANSACTION_sendDeviceToDeviceMessage:I = 0x138

.field static final TRANSACTION_sendDialerSpecialCode:I = 0x3f

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x53

.field static final TRANSACTION_sendSatelliteDatagram:I = 0x177

.field static final TRANSACTION_sendThermalMitigationRequest:I = 0x128

.field static final TRANSACTION_sendVisualVoicemailSmsForSubscriber:I = 0x3e

.field static final TRANSACTION_setActiveDeviceToDeviceTransport:I = 0x139

.field static final TRANSACTION_setAdvancedCallingSettingEnabled:I = 0xdd

.field static final TRANSACTION_setAllowedCarriers:I = 0xab

.field static final TRANSACTION_setAllowedNetworkTypesForReason:I = 0x6c

.field static final TRANSACTION_setBoundGbaServiceOverride:I = 0x12a

.field static final TRANSACTION_setBoundImsServiceOverride:I = 0x62

.field static final TRANSACTION_setCallComposerStatus:I = 0x7

.field static final TRANSACTION_setCallForwarding:I = 0xb6

.field static final TRANSACTION_setCallWaitingStatus:I = 0xb8

.field static final TRANSACTION_setCapabilitiesRequestTimeout:I = 0x14a

.field static final TRANSACTION_setCarrierServicePackageOverride:I = 0xcc

.field static final TRANSACTION_setCarrierSingleRegistrationEnabledOverride:I = 0x137

.field static final TRANSACTION_setCarrierTestOverride:I = 0xcb

.field static final TRANSACTION_setCdmaRoamingMode:I = 0xc8

.field static final TRANSACTION_setCdmaSubscriptionMode:I = 0xca

.field static final TRANSACTION_setCellBroadcastIdRanges:I = 0x163

.field static final TRANSACTION_setCellInfoListRate:I = 0x4b

.field static final TRANSACTION_setCepEnabled:I = 0x119

.field static final TRANSACTION_setCrossSimCallingEnabled:I = 0xe3

.field static final TRANSACTION_setDataActivationState:I = 0x33

.field static final TRANSACTION_setDataEnabledForReason:I = 0x70

.field static final TRANSACTION_setDataRoamingEnabled:I = 0xc6

.field static final TRANSACTION_setDeviceSingleRegistrationEnabledOverride:I = 0x135

.field static final TRANSACTION_setDeviceToDeviceForceEnabled:I = 0x13a

.field static final TRANSACTION_setDeviceUceEnabled:I = 0x143

.field static final TRANSACTION_setForbiddenPlmns:I = 0xbd

.field static final TRANSACTION_setGbaReleaseTimeOverride:I = 0x12c

.field static final TRANSACTION_setIccLockEnabled:I = 0x11c

.field static final TRANSACTION_setImsFeatureValidationOverride:I = 0x13c

.field static final TRANSACTION_setImsProvisioningInt:I = 0xfa

.field static final TRANSACTION_setImsProvisioningStatusForCapability:I = 0xf4

.field static final TRANSACTION_setImsProvisioningString:I = 0xfb

.field static final TRANSACTION_setImsRegistrationState:I = 0x73

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x7c

.field static final TRANSACTION_setMobileDataPolicyEnabled:I = 0x117

.field static final TRANSACTION_setModemService:I = 0x155

.field static final TRANSACTION_setMultiSimCarrierRestriction:I = 0x104

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x66

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x6a

.field static final TRANSACTION_setNrDualConnectivityState:I = 0x125

.field static final TRANSACTION_setNullCipherAndIntegrityEnabled:I = 0x160

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x81

.field static final TRANSACTION_setRadio:I = 0x12

.field static final TRANSACTION_setRadioForSubscriber:I = 0x13

.field static final TRANSACTION_setRadioPower:I = 0x14

.field static final TRANSACTION_setRcsClientConfiguration:I = 0x12e

.field static final TRANSACTION_setRcsProvisioningStatusForCapability:I = 0xf7

.field static final TRANSACTION_setRcsSingleRegistrationTestModeEnabled:I = 0x133

.field static final TRANSACTION_setRemovableEsimAsDefaultEuicc:I = 0x15b

.field static final TRANSACTION_setRoamingOverride:I = 0x82

.field static final TRANSACTION_setRttCapabilitySetting:I = 0xeb

.field static final TRANSACTION_setSatelliteDeviceAlignedTimeoutDuration:I = 0x17f

.field static final TRANSACTION_setSatelliteGatewayServicePackageName:I = 0x17c

.field static final TRANSACTION_setSatelliteListeningTimeoutDuration:I = 0x17d

.field static final TRANSACTION_setSatellitePointingUiClassName:I = 0x17e

.field static final TRANSACTION_setSatelliteServicePackageName:I = 0x17b

.field static final TRANSACTION_setSignalStrengthUpdateRequest:I = 0x14b

.field static final TRANSACTION_setSimPowerStateForSlot:I = 0xba

.field static final TRANSACTION_setSimPowerStateForSlotWithCallback:I = 0xbb

.field static final TRANSACTION_setSimSlotMapping:I = 0xc4

.field static final TRANSACTION_setSystemSelectionChannels:I = 0x110

.field static final TRANSACTION_setVoNrEnabled:I = 0x123

.field static final TRANSACTION_setVoWiFiModeSetting:I = 0xe8

.field static final TRANSACTION_setVoWiFiNonPersistent:I = 0xe6

.field static final TRANSACTION_setVoWiFiRoamingModeSetting:I = 0xea

.field static final TRANSACTION_setVoWiFiRoamingSettingEnabled:I = 0xe5

.field static final TRANSACTION_setVoWiFiSettingEnabled:I = 0xe1

.field static final TRANSACTION_setVoiceActivationState:I = 0x32

.field static final TRANSACTION_setVoiceMailNumber:I = 0x31

.field static final TRANSACTION_setVoiceServiceStateOverride:I = 0x159

.field static final TRANSACTION_setVoicemailRingtoneUri:I = 0xa2

.field static final TRANSACTION_setVoicemailVibrationEnabled:I = 0xa4

.field static final TRANSACTION_setVtSettingEnabled:I = 0xdf

.field static final TRANSACTION_showSwitchToManagedProfileDialog:I = 0x114

.field static final TRANSACTION_shutdownMobileRadios:I = 0x85

.field static final TRANSACTION_startEmergencyCallbackMode:I = 0xfc

.field static final TRANSACTION_startSatelliteTransmissionUpdates:I = 0x16b

.field static final TRANSACTION_stopNetworkScan:I = 0x69

.field static final TRANSACTION_stopSatelliteTransmissionUpdates:I = 0x16c

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x9

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0xb

.field static final TRANSACTION_supplyPukForSubscriber:I = 0xa

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0xc

.field static final TRANSACTION_switchMultiSimConfig:I = 0x106

.field static final TRANSACTION_switchSlots:I = 0xc3

.field static final TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x11

.field static final TRANSACTION_triggerRcsReconfiguration:I = 0x132

.field static final TRANSACTION_unregisterFeatureProvisioningChangedCallback:I = 0xf3

.field static final TRANSACTION_unregisterForSatelliteDatagram:I = 0x175

.field static final TRANSACTION_unregisterForSatelliteModemStateChanged:I = 0x173

.field static final TRANSACTION_unregisterForSatelliteProvisionStateChanged:I = 0x170

.field static final TRANSACTION_unregisterImsFeatureCallback:I = 0x5f

.field static final TRANSACTION_unregisterImsProvisioningChangedCallback:I = 0xf1

.field static final TRANSACTION_unregisterImsRegistrationCallback:I = 0xd4

.field static final TRANSACTION_unregisterImsStateCallback:I = 0x153

.field static final TRANSACTION_unregisterMmTelCapabilityCallback:I = 0xd8

.field static final TRANSACTION_unregisterRcsProvisioningCallback:I = 0x131

.field static final TRANSACTION_updateEmergencyNumberListTestMode:I = 0xfd

.field static final TRANSACTION_updateOtaEmergencyNumberDbFilePath:I = 0x101

.field static final TRANSACTION_updateServiceLocation:I = 0x18

.field static final TRANSACTION_updateServiceLocationWithPackageName:I = 0x19

.field static final TRANSACTION_uploadCallComposerPicture:I = 0x87

.field static final TRANSACTION_userActivity:I = 0x11f


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3206
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3207
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 3208
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 3215
    if-nez p0, :cond_4

    .line 3216
    const/4 v0, 0x0

    return-object v0

    .line 3218
    :cond_4
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3219
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_14

    .line 3220
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    return-object v1

    .line 3222
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 3231
    packed-switch p0, :pswitch_data_5e0

    .line 4771
    const/4 v0, 0x0

    return-object v0

    .line 4767
    :pswitch_5
    const-string/jumbo v0, "getShaIdFromAllowList"

    return-object v0

    .line 4763
    :pswitch_9
    const-string/jumbo v0, "setSatelliteDeviceAlignedTimeoutDuration"

    return-object v0

    .line 4759
    :pswitch_d
    const-string/jumbo v0, "setSatellitePointingUiClassName"

    return-object v0

    .line 4755
    :pswitch_11
    const-string/jumbo v0, "setSatelliteListeningTimeoutDuration"

    return-object v0

    .line 4751
    :pswitch_15
    const-string/jumbo v0, "setSatelliteGatewayServicePackageName"

    return-object v0

    .line 4747
    :pswitch_19
    const-string/jumbo v0, "setSatelliteServicePackageName"

    return-object v0

    .line 4743
    :pswitch_1d
    const-string/jumbo v0, "onDeviceAlignedWithSatellite"

    return-object v0

    .line 4739
    :pswitch_21
    const-string/jumbo v0, "requestTimeForNextSatelliteVisibility"

    return-object v0

    .line 4735
    :pswitch_25
    const-string/jumbo v0, "requestIsSatelliteCommunicationAllowedForCurrentLocation"

    return-object v0

    .line 4731
    :pswitch_29
    const-string/jumbo v0, "sendSatelliteDatagram"

    return-object v0

    .line 4727
    :pswitch_2d
    const-string/jumbo v0, "pollPendingSatelliteDatagrams"

    return-object v0

    .line 4723
    :pswitch_31
    const-string/jumbo v0, "unregisterForSatelliteDatagram"

    return-object v0

    .line 4719
    :pswitch_35
    const-string/jumbo v0, "registerForSatelliteDatagram"

    return-object v0

    .line 4715
    :pswitch_39
    const-string/jumbo v0, "unregisterForSatelliteModemStateChanged"

    return-object v0

    .line 4711
    :pswitch_3d
    const-string/jumbo v0, "registerForSatelliteModemStateChanged"

    return-object v0

    .line 4707
    :pswitch_41
    const-string/jumbo v0, "requestIsSatelliteProvisioned"

    return-object v0

    .line 4703
    :pswitch_45
    const-string/jumbo v0, "unregisterForSatelliteProvisionStateChanged"

    return-object v0

    .line 4699
    :pswitch_49
    const-string/jumbo v0, "registerForSatelliteProvisionStateChanged"

    return-object v0

    .line 4695
    :pswitch_4d
    const-string v0, "deprovisionSatelliteService"

    return-object v0

    .line 4691
    :pswitch_50
    const-string/jumbo v0, "provisionSatelliteService"

    return-object v0

    .line 4687
    :pswitch_54
    const-string/jumbo v0, "stopSatelliteTransmissionUpdates"

    return-object v0

    .line 4683
    :pswitch_58
    const-string/jumbo v0, "startSatelliteTransmissionUpdates"

    return-object v0

    .line 4679
    :pswitch_5c
    const-string/jumbo v0, "requestSatelliteCapabilities"

    return-object v0

    .line 4675
    :pswitch_60
    const-string/jumbo v0, "requestIsSatelliteSupported"

    return-object v0

    .line 4671
    :pswitch_64
    const-string/jumbo v0, "requestIsDemoModeEnabled"

    return-object v0

    .line 4667
    :pswitch_68
    const-string/jumbo v0, "requestIsSatelliteEnabled"

    return-object v0

    .line 4663
    :pswitch_6c
    const-string/jumbo v0, "requestSatelliteEnabled"

    return-object v0

    .line 4659
    :pswitch_70
    const-string/jumbo v0, "getCarrierRestrictionStatus"

    return-object v0

    .line 4655
    :pswitch_74
    const-string/jumbo v0, "isDomainSelectionSupported"

    return-object v0

    .line 4651
    :pswitch_78
    const-string/jumbo v0, "setCellBroadcastIdRanges"

    return-object v0

    .line 4647
    :pswitch_7c
    const-string/jumbo v0, "getCellBroadcastIdRanges"

    return-object v0

    .line 4643
    :pswitch_80
    const-string/jumbo v0, "isNullCipherAndIntegrityPreferenceEnabled"

    return-object v0

    .line 4639
    :pswitch_84
    const-string/jumbo v0, "setNullCipherAndIntegrityEnabled"

    return-object v0

    .line 4635
    :pswitch_88
    const-string/jumbo v0, "persistEmergencyCallDiagnosticData"

    return-object v0

    .line 4631
    :pswitch_8c
    const-string/jumbo v0, "getSimStateForSlotIndex"

    return-object v0

    .line 4627
    :pswitch_90
    const-string/jumbo v0, "getDefaultRespondViaMessageApplication"

    return-object v0

    .line 4623
    :pswitch_94
    const-string/jumbo v0, "isRemovableEsimDefaultEuicc"

    return-object v0

    .line 4619
    :pswitch_98
    const-string/jumbo v0, "setRemovableEsimAsDefaultEuicc"

    return-object v0

    .line 4615
    :pswitch_9c
    const-string/jumbo v0, "getCarrierServicePackageNameForLogicalSlot"

    return-object v0

    .line 4611
    :pswitch_a0
    const-string/jumbo v0, "setVoiceServiceStateOverride"

    return-object v0

    .line 4607
    :pswitch_a4
    const-string/jumbo v0, "isRcsProvisioningRequiredForCapability"

    return-object v0

    .line 4603
    :pswitch_a8
    const-string/jumbo v0, "isProvisioningRequiredForCapability"

    return-object v0

    .line 4599
    :pswitch_ac
    const-string/jumbo v0, "getModemService"

    return-object v0

    .line 4595
    :pswitch_b0
    const-string/jumbo v0, "setModemService"

    return-object v0

    .line 4591
    :pswitch_b4
    const-string/jumbo v0, "getLastKnownCellIdentity"

    return-object v0

    .line 4587
    :pswitch_b8
    const-string/jumbo v0, "unregisterImsStateCallback"

    return-object v0

    .line 4583
    :pswitch_bc
    const-string/jumbo v0, "registerImsStateCallback"

    return-object v0

    .line 4579
    :pswitch_c0
    const-string/jumbo v0, "purchasePremiumCapability"

    return-object v0

    .line 4575
    :pswitch_c4
    const-string/jumbo v0, "isPremiumCapabilityAvailableForPurchase"

    return-object v0

    .line 4571
    :pswitch_c8
    const-string/jumbo v0, "getSlicingConfig"

    return-object v0

    .line 4567
    :pswitch_cc
    const-string/jumbo v0, "prepareForUnattendedReboot"

    return-object v0

    .line 4563
    :pswitch_d0
    const-string/jumbo v0, "getPhoneCapability"

    return-object v0

    .line 4559
    :pswitch_d4
    const-string v0, "clearSignalStrengthUpdateRequest"

    return-object v0

    .line 4555
    :pswitch_d7
    const-string/jumbo v0, "setSignalStrengthUpdateRequest"

    return-object v0

    .line 4551
    :pswitch_db
    const-string/jumbo v0, "setCapabilitiesRequestTimeout"

    return-object v0

    .line 4547
    :pswitch_df
    const-string/jumbo v0, "removeUceRequestDisallowedStatus"

    return-object v0

    .line 4543
    :pswitch_e3
    const-string/jumbo v0, "getLastUcePidfXmlShell"

    return-object v0

    .line 4539
    :pswitch_e7
    const-string/jumbo v0, "getLatestRcsContactUceCapabilityShell"

    return-object v0

    .line 4535
    :pswitch_eb
    const-string v0, "clearUceRegistrationOverrideShell"

    return-object v0

    .line 4531
    :pswitch_ee
    const-string/jumbo v0, "removeUceRegistrationOverrideShell"

    return-object v0

    .line 4527
    :pswitch_f2
    const-string v0, "addUceRegistrationOverrideShell"

    return-object v0

    .line 4523
    :pswitch_f5
    const-string/jumbo v0, "setDeviceUceEnabled"

    return-object v0

    .line 4519
    :pswitch_f9
    const-string/jumbo v0, "getDeviceUceEnabled"

    return-object v0

    .line 4515
    :pswitch_fd
    const-string/jumbo v0, "getCapabilityFromEab"

    return-object v0

    .line 4511
    :pswitch_101
    const-string/jumbo v0, "getContactFromEab"

    return-object v0

    .line 4507
    :pswitch_105
    const-string/jumbo v0, "removeContactFromEab"

    return-object v0

    .line 4503
    :pswitch_109
    const-string/jumbo v0, "getMobileProvisioningUrl"

    return-object v0

    .line 4499
    :pswitch_10d
    const-string/jumbo v0, "getImsFeatureValidationOverride"

    return-object v0

    .line 4495
    :pswitch_111
    const-string/jumbo v0, "setImsFeatureValidationOverride"

    return-object v0

    .line 4491
    :pswitch_115
    const-string/jumbo v0, "getCarrierSingleRegistrationEnabled"

    return-object v0

    .line 4487
    :pswitch_119
    const-string/jumbo v0, "setDeviceToDeviceForceEnabled"

    return-object v0

    .line 4483
    :pswitch_11d
    const-string/jumbo v0, "setActiveDeviceToDeviceTransport"

    return-object v0

    .line 4479
    :pswitch_121
    const-string/jumbo v0, "sendDeviceToDeviceMessage"

    return-object v0

    .line 4475
    :pswitch_125
    const-string/jumbo v0, "setCarrierSingleRegistrationEnabledOverride"

    return-object v0

    .line 4471
    :pswitch_129
    const-string/jumbo v0, "getDeviceSingleRegistrationEnabled"

    return-object v0

    .line 4467
    :pswitch_12d
    const-string/jumbo v0, "setDeviceSingleRegistrationEnabledOverride"

    return-object v0

    .line 4463
    :pswitch_131
    const-string/jumbo v0, "getRcsSingleRegistrationTestModeEnabled"

    return-object v0

    .line 4459
    :pswitch_135
    const-string/jumbo v0, "setRcsSingleRegistrationTestModeEnabled"

    return-object v0

    .line 4455
    :pswitch_139
    const-string/jumbo v0, "triggerRcsReconfiguration"

    return-object v0

    .line 4451
    :pswitch_13d
    const-string/jumbo v0, "unregisterRcsProvisioningCallback"

    return-object v0

    .line 4447
    :pswitch_141
    const-string/jumbo v0, "registerRcsProvisioningCallback"

    return-object v0

    .line 4443
    :pswitch_145
    const-string/jumbo v0, "isRcsVolteSingleRegistrationCapable"

    return-object v0

    .line 4439
    :pswitch_149
    const-string/jumbo v0, "setRcsClientConfiguration"

    return-object v0

    .line 4435
    :pswitch_14d
    const-string/jumbo v0, "getGbaReleaseTime"

    return-object v0

    .line 4431
    :pswitch_151
    const-string/jumbo v0, "setGbaReleaseTimeOverride"

    return-object v0

    .line 4427
    :pswitch_155
    const-string/jumbo v0, "getBoundGbaService"

    return-object v0

    .line 4423
    :pswitch_159
    const-string/jumbo v0, "setBoundGbaServiceOverride"

    return-object v0

    .line 4419
    :pswitch_15d
    const-string v0, "bootstrapAuthenticationRequest"

    return-object v0

    .line 4415
    :pswitch_160
    const-string/jumbo v0, "sendThermalMitigationRequest"

    return-object v0

    .line 4411
    :pswitch_164
    const-string/jumbo v0, "isRadioInterfaceCapabilitySupported"

    return-object v0

    .line 4407
    :pswitch_168
    const-string/jumbo v0, "isNrDualConnectivityEnabled"

    return-object v0

    .line 4403
    :pswitch_16c
    const-string/jumbo v0, "setNrDualConnectivityState"

    return-object v0

    .line 4399
    :pswitch_170
    const-string/jumbo v0, "isVoNrEnabled"

    return-object v0

    .line 4395
    :pswitch_174
    const-string/jumbo v0, "setVoNrEnabled"

    return-object v0

    .line 4391
    :pswitch_178
    const-string/jumbo v0, "getEquivalentHomePlmns"

    return-object v0

    .line 4387
    :pswitch_17c
    const-string v0, "canConnectTo5GInDsdsMode"

    return-object v0

    .line 4383
    :pswitch_17f
    const-string/jumbo v0, "getManualNetworkSelectionPlmn"

    return-object v0

    .line 4379
    :pswitch_183
    const-string/jumbo v0, "userActivity"

    return-object v0

    .line 4375
    :pswitch_187
    const-string/jumbo v0, "requestUserActivityNotification"

    return-object v0

    .line 4371
    :pswitch_18b
    const-string v0, "changeIccLockPassword"

    return-object v0

    .line 4367
    :pswitch_18e
    const-string/jumbo v0, "setIccLockEnabled"

    return-object v0

    .line 4363
    :pswitch_192
    const-string/jumbo v0, "isIccLockEnabled"

    return-object v0

    .line 4359
    :pswitch_196
    const-string/jumbo v0, "notifyRcsAutoConfigurationReceived"

    return-object v0

    .line 4355
    :pswitch_19a
    const-string/jumbo v0, "setCepEnabled"

    return-object v0

    .line 4351
    :pswitch_19e
    const-string/jumbo v0, "isMobileDataPolicyEnabled"

    return-object v0

    .line 4347
    :pswitch_1a2
    const-string/jumbo v0, "setMobileDataPolicyEnabled"

    return-object v0

    .line 4343
    :pswitch_1a6
    const-string/jumbo v0, "getMmsUAProfUrl"

    return-object v0

    .line 4339
    :pswitch_1aa
    const-string/jumbo v0, "getMmsUserAgent"

    return-object v0

    .line 4335
    :pswitch_1ae
    const-string/jumbo v0, "showSwitchToManagedProfileDialog"

    return-object v0

    .line 4331
    :pswitch_1b2
    const-string v0, "enqueueSmsPickResult"

    return-object v0

    .line 4327
    :pswitch_1b5
    const-string/jumbo v0, "isMvnoMatched"

    return-object v0

    .line 4323
    :pswitch_1b9
    const-string/jumbo v0, "getSystemSelectionChannels"

    return-object v0

    .line 4319
    :pswitch_1bd
    const-string/jumbo v0, "setSystemSelectionChannels"

    return-object v0

    .line 4315
    :pswitch_1c1
    const-string/jumbo v0, "isApnMetered"

    return-object v0

    .line 4311
    :pswitch_1c5
    const-string/jumbo v0, "isDataEnabledForApn"

    return-object v0

    .line 4307
    :pswitch_1c9
    const-string/jumbo v0, "isModemEnabledForSlot"

    return-object v0

    .line 4303
    :pswitch_1cd
    const-string/jumbo v0, "isApplicationOnUicc"

    return-object v0

    .line 4299
    :pswitch_1d1
    const-string/jumbo v0, "getCurrentPackageName"

    return-object v0

    .line 4295
    :pswitch_1d5
    const-string/jumbo v0, "getHalVersion"

    return-object v0

    .line 4291
    :pswitch_1d9
    const-string/jumbo v0, "getRadioHalVersion"

    return-object v0

    .line 4287
    :pswitch_1dd
    const-string/jumbo v0, "getSlotsMapping"

    return-object v0

    .line 4283
    :pswitch_1e1
    const-string v0, "doesSwitchMultiSimConfigTriggerReboot"

    return-object v0

    .line 4279
    :pswitch_1e4
    const-string/jumbo v0, "switchMultiSimConfig"

    return-object v0

    .line 4275
    :pswitch_1e8
    const-string/jumbo v0, "isMultiSimSupported"

    return-object v0

    .line 4271
    :pswitch_1ec
    const-string/jumbo v0, "setMultiSimCarrierRestriction"

    return-object v0

    .line 4267
    :pswitch_1f0
    const-string v0, "enableModemForSlot"

    return-object v0

    .line 4263
    :pswitch_1f3
    const-string/jumbo v0, "resetOtaEmergencyNumberDbFilePath"

    return-object v0

    .line 4259
    :pswitch_1f7
    const-string/jumbo v0, "updateOtaEmergencyNumberDbFilePath"

    return-object v0

    .line 4255
    :pswitch_1fb
    const-string/jumbo v0, "notifyOtaEmergencyNumberDbInstalled"

    return-object v0

    .line 4251
    :pswitch_1ff
    const-string/jumbo v0, "getEmergencyNumberDbVersion"

    return-object v0

    .line 4247
    :pswitch_203
    const-string/jumbo v0, "getEmergencyNumberListTestMode"

    return-object v0

    .line 4243
    :pswitch_207
    const-string/jumbo v0, "updateEmergencyNumberListTestMode"

    return-object v0

    .line 4239
    :pswitch_20b
    const-string/jumbo v0, "startEmergencyCallbackMode"

    return-object v0

    .line 4235
    :pswitch_20f
    const-string/jumbo v0, "setImsProvisioningString"

    return-object v0

    .line 4231
    :pswitch_213
    const-string/jumbo v0, "setImsProvisioningInt"

    return-object v0

    .line 4227
    :pswitch_217
    const-string/jumbo v0, "getImsProvisioningString"

    return-object v0

    .line 4223
    :pswitch_21b
    const-string/jumbo v0, "getImsProvisioningInt"

    return-object v0

    .line 4219
    :pswitch_21f
    const-string/jumbo v0, "setRcsProvisioningStatusForCapability"

    return-object v0

    .line 4215
    :pswitch_223
    const-string/jumbo v0, "getRcsProvisioningStatusForCapability"

    return-object v0

    .line 4211
    :pswitch_227
    const-string/jumbo v0, "getImsProvisioningStatusForCapability"

    return-object v0

    .line 4207
    :pswitch_22b
    const-string/jumbo v0, "setImsProvisioningStatusForCapability"

    return-object v0

    .line 4203
    :pswitch_22f
    const-string/jumbo v0, "unregisterFeatureProvisioningChangedCallback"

    return-object v0

    .line 4199
    :pswitch_233
    const-string/jumbo v0, "registerFeatureProvisioningChangedCallback"

    return-object v0

    .line 4195
    :pswitch_237
    const-string/jumbo v0, "unregisterImsProvisioningChangedCallback"

    return-object v0

    .line 4191
    :pswitch_23b
    const-string/jumbo v0, "registerImsProvisioningChangedCallback"

    return-object v0

    .line 4187
    :pswitch_23f
    const-string/jumbo v0, "getCertsFromCarrierPrivilegeAccessRules"

    return-object v0

    .line 4183
    :pswitch_243
    const-string/jumbo v0, "isEmergencyNumber"

    return-object v0

    .line 4179
    :pswitch_247
    const-string/jumbo v0, "getEmergencyNumberList"

    return-object v0

    .line 4175
    :pswitch_24b
    const-string/jumbo v0, "isTtyOverVolteEnabled"

    return-object v0

    .line 4171
    :pswitch_24f
    const-string/jumbo v0, "setRttCapabilitySetting"

    return-object v0

    .line 4167
    :pswitch_253
    const-string/jumbo v0, "setVoWiFiRoamingModeSetting"

    return-object v0

    .line 4163
    :pswitch_257
    const-string/jumbo v0, "getVoWiFiRoamingModeSetting"

    return-object v0

    .line 4159
    :pswitch_25b
    const-string/jumbo v0, "setVoWiFiModeSetting"

    return-object v0

    .line 4155
    :pswitch_25f
    const-string/jumbo v0, "getVoWiFiModeSetting"

    return-object v0

    .line 4151
    :pswitch_263
    const-string/jumbo v0, "setVoWiFiNonPersistent"

    return-object v0

    .line 4147
    :pswitch_267
    const-string/jumbo v0, "setVoWiFiRoamingSettingEnabled"

    return-object v0

    .line 4143
    :pswitch_26b
    const-string/jumbo v0, "isVoWiFiRoamingSettingEnabled"

    return-object v0

    .line 4139
    :pswitch_26f
    const-string/jumbo v0, "setCrossSimCallingEnabled"

    return-object v0

    .line 4135
    :pswitch_273
    const-string/jumbo v0, "isCrossSimCallingEnabledByUser"

    return-object v0

    .line 4131
    :pswitch_277
    const-string/jumbo v0, "setVoWiFiSettingEnabled"

    return-object v0

    .line 4127
    :pswitch_27b
    const-string/jumbo v0, "isVoWiFiSettingEnabled"

    return-object v0

    .line 4123
    :pswitch_27f
    const-string/jumbo v0, "setVtSettingEnabled"

    return-object v0

    .line 4119
    :pswitch_283
    const-string/jumbo v0, "isVtSettingEnabled"

    return-object v0

    .line 4115
    :pswitch_287
    const-string/jumbo v0, "setAdvancedCallingSettingEnabled"

    return-object v0

    .line 4111
    :pswitch_28b
    const-string/jumbo v0, "isAdvancedCallingSettingEnabled"

    return-object v0

    .line 4107
    :pswitch_28f
    const-string/jumbo v0, "isMmTelCapabilitySupported"

    return-object v0

    .line 4103
    :pswitch_293
    const-string/jumbo v0, "isAvailable"

    return-object v0

    .line 4099
    :pswitch_297
    const-string/jumbo v0, "isCapable"

    return-object v0

    .line 4095
    :pswitch_29b
    const-string/jumbo v0, "unregisterMmTelCapabilityCallback"

    return-object v0

    .line 4091
    :pswitch_29f
    const-string/jumbo v0, "registerMmTelCapabilityCallback"

    return-object v0

    .line 4087
    :pswitch_2a3
    const-string/jumbo v0, "getImsMmTelRegistrationTransportType"

    return-object v0

    .line 4083
    :pswitch_2a7
    const-string/jumbo v0, "getImsMmTelRegistrationState"

    return-object v0

    .line 4079
    :pswitch_2ab
    const-string/jumbo v0, "unregisterImsRegistrationCallback"

    return-object v0

    .line 4075
    :pswitch_2af
    const-string/jumbo v0, "registerImsRegistrationCallback"

    return-object v0

    .line 4071
    :pswitch_2b3
    const-string/jumbo v0, "getRadioPowerState"

    return-object v0

    .line 4067
    :pswitch_2b7
    const-string/jumbo v0, "isInEmergencySmsMode"

    return-object v0

    .line 4063
    :pswitch_2bb
    const-string/jumbo v0, "getNetworkSelectionMode"

    return-object v0

    .line 4059
    :pswitch_2bf
    const-string/jumbo v0, "getNumberOfModemsWithSimultaneousDataConnections"

    return-object v0

    .line 4055
    :pswitch_2c3
    const-string/jumbo v0, "refreshUiccProfile"

    return-object v0

    .line 4051
    :pswitch_2c7
    const-string/jumbo v0, "getCarrierIdListVersion"

    return-object v0

    .line 4047
    :pswitch_2cb
    const-string/jumbo v0, "setCarrierServicePackageOverride"

    return-object v0

    .line 4043
    :pswitch_2cf
    const-string/jumbo v0, "setCarrierTestOverride"

    return-object v0

    .line 4039
    :pswitch_2d3
    const-string/jumbo v0, "setCdmaSubscriptionMode"

    return-object v0

    .line 4035
    :pswitch_2d7
    const-string/jumbo v0, "getCdmaSubscriptionMode"

    return-object v0

    .line 4031
    :pswitch_2db
    const-string/jumbo v0, "setCdmaRoamingMode"

    return-object v0

    .line 4027
    :pswitch_2df
    const-string/jumbo v0, "getCdmaRoamingMode"

    return-object v0

    .line 4023
    :pswitch_2e3
    const-string/jumbo v0, "setDataRoamingEnabled"

    return-object v0

    .line 4019
    :pswitch_2e7
    const-string/jumbo v0, "isDataRoamingEnabled"

    return-object v0

    .line 4015
    :pswitch_2eb
    const-string/jumbo v0, "setSimSlotMapping"

    return-object v0

    .line 4011
    :pswitch_2ef
    const-string/jumbo v0, "switchSlots"

    return-object v0

    .line 4007
    :pswitch_2f3
    const-string/jumbo v0, "getUiccSlotsInfo"

    return-object v0

    .line 4003
    :pswitch_2f7
    const-string/jumbo v0, "getUiccCardsInfo"

    return-object v0

    .line 3999
    :pswitch_2fb
    const-string/jumbo v0, "getCardIdForDefaultEuicc"

    return-object v0

    .line 3995
    :pswitch_2ff
    const-string/jumbo v0, "getSignalStrength"

    return-object v0

    .line 3991
    :pswitch_303
    const-string/jumbo v0, "getEmergencyCallbackMode"

    return-object v0

    .line 3987
    :pswitch_307
    const-string/jumbo v0, "setForbiddenPlmns"

    return-object v0

    .line 3983
    :pswitch_30b
    const-string/jumbo v0, "getForbiddenPlmns"

    return-object v0

    .line 3979
    :pswitch_30f
    const-string/jumbo v0, "setSimPowerStateForSlotWithCallback"

    return-object v0

    .line 3975
    :pswitch_313
    const-string/jumbo v0, "setSimPowerStateForSlot"

    return-object v0

    .line 3971
    :pswitch_317
    const-string/jumbo v0, "getClientRequestStats"

    return-object v0

    .line 3967
    :pswitch_31b
    const-string/jumbo v0, "setCallWaitingStatus"

    return-object v0

    .line 3963
    :pswitch_31f
    const-string/jumbo v0, "getCallWaitingStatus"

    return-object v0

    .line 3959
    :pswitch_323
    const-string/jumbo v0, "setCallForwarding"

    return-object v0

    .line 3955
    :pswitch_327
    const-string/jumbo v0, "getCallForwarding"

    return-object v0

    .line 3951
    :pswitch_32b
    const-string v0, "carrierActionResetAll"

    return-object v0

    .line 3947
    :pswitch_32e
    const-string v0, "carrierActionReportDefaultNetworkStatus"

    return-object v0

    .line 3943
    :pswitch_331
    const-string v0, "carrierActionSetRadioEnabled"

    return-object v0

    .line 3939
    :pswitch_334
    const-string/jumbo v0, "getCarrierIdFromMccMnc"

    return-object v0

    .line 3935
    :pswitch_338
    const-string/jumbo v0, "getSubscriptionSpecificCarrierName"

    return-object v0

    .line 3931
    :pswitch_33c
    const-string/jumbo v0, "getSubscriptionSpecificCarrierId"

    return-object v0

    .line 3927
    :pswitch_340
    const-string/jumbo v0, "getSubscriptionCarrierName"

    return-object v0

    .line 3923
    :pswitch_344
    const-string/jumbo v0, "getSubscriptionCarrierId"

    return-object v0

    .line 3919
    :pswitch_348
    const-string v0, "getAllowedCarriers"

    return-object v0

    .line 3915
    :pswitch_34b
    const-string/jumbo v0, "setAllowedCarriers"

    return-object v0

    .line 3911
    :pswitch_34f
    const-string/jumbo v0, "getTelephonyHistograms"

    return-object v0

    .line 3907
    :pswitch_353
    const-string/jumbo v0, "getCdmaPrlVersion"

    return-object v0

    .line 3903
    :pswitch_357
    const-string/jumbo v0, "getEsn"

    return-object v0

    .line 3899
    :pswitch_35b
    const-string v0, "getAidForAppType"

    return-object v0

    .line 3895
    :pswitch_35e
    const-string/jumbo v0, "getPackagesWithCarrierPrivilegesForAllPhones"

    return-object v0

    .line 3891
    :pswitch_362
    const-string/jumbo v0, "getPackagesWithCarrierPrivileges"

    return-object v0

    .line 3887
    :pswitch_366
    const-string/jumbo v0, "setVoicemailVibrationEnabled"

    return-object v0

    .line 3883
    :pswitch_36a
    const-string/jumbo v0, "isVoicemailVibrationEnabled"

    return-object v0

    .line 3879
    :pswitch_36e
    const-string/jumbo v0, "setVoicemailRingtoneUri"

    return-object v0

    .line 3875
    :pswitch_372
    const-string/jumbo v0, "getVoicemailRingtoneUri"

    return-object v0

    .line 3871
    :pswitch_376
    const-string/jumbo v0, "getServiceStateForSubscriber"

    return-object v0

    .line 3867
    :pswitch_37a
    const-string/jumbo v0, "requestModemActivityInfo"

    return-object v0

    .line 3863
    :pswitch_37e
    const-string/jumbo v0, "getSimLocaleForSubscriber"

    return-object v0

    .line 3859
    :pswitch_382
    const-string v0, "factoryReset"

    return-object v0

    .line 3855
    :pswitch_385
    const-string/jumbo v0, "getPhoneAccountHandleForSubscriptionId"

    return-object v0

    .line 3851
    :pswitch_389
    const-string/jumbo v0, "getSubIdForPhoneAccountHandle"

    return-object v0

    .line 3847
    :pswitch_38d
    const-string/jumbo v0, "getDeviceSoftwareVersionForSlot"

    return-object v0

    .line 3843
    :pswitch_391
    const-string/jumbo v0, "getManufacturerCodeForSlot"

    return-object v0

    .line 3839
    :pswitch_395
    const-string/jumbo v0, "getMeidForSlot"

    return-object v0

    .line 3835
    :pswitch_399
    const-string/jumbo v0, "getTypeAllocationCodeForSlot"

    return-object v0

    .line 3831
    :pswitch_39d
    const-string/jumbo v0, "getPrimaryImei"

    return-object v0

    .line 3827
    :pswitch_3a1
    const-string/jumbo v0, "getImeiForSlot"

    return-object v0

    .line 3823
    :pswitch_3a5
    const-string/jumbo v0, "getDeviceIdWithFeature"

    return-object v0

    .line 3819
    :pswitch_3a9
    const-string/jumbo v0, "getDeviceId"

    return-object v0

    .line 3815
    :pswitch_3ad
    const-string/jumbo v0, "getImsRegTechnologyForMmTel"

    return-object v0

    .line 3811
    :pswitch_3b1
    const-string/jumbo v0, "isVideoTelephonyAvailable"

    return-object v0

    .line 3807
    :pswitch_3b5
    const-string/jumbo v0, "isWifiCallingAvailable"

    return-object v0

    .line 3803
    :pswitch_3b9
    const-string/jumbo v0, "isImsRegistered"

    return-object v0

    .line 3799
    :pswitch_3bd
    const-string/jumbo v0, "isHearingAidCompatibilitySupported"

    return-object v0

    .line 3795
    :pswitch_3c1
    const-string/jumbo v0, "isRttSupported"

    return-object v0

    .line 3791
    :pswitch_3c5
    const-string/jumbo v0, "isTtyModeSupported"

    return-object v0

    .line 3787
    :pswitch_3c9
    const-string/jumbo v0, "isWorldPhone"

    return-object v0

    .line 3783
    :pswitch_3cd
    const-string v0, "canChangeDtmfToneLength"

    return-object v0

    .line 3779
    :pswitch_3d0
    const-string/jumbo v0, "isVideoCallingEnabled"

    return-object v0

    .line 3775
    :pswitch_3d4
    const-string v0, "enableVideoCalling"

    return-object v0

    .line 3771
    :pswitch_3d7
    const-string/jumbo v0, "uploadCallComposerPicture"

    return-object v0

    .line 3767
    :pswitch_3db
    const-string/jumbo v0, "getRadioAccessFamily"

    return-object v0

    .line 3763
    :pswitch_3df
    const-string/jumbo v0, "shutdownMobileRadios"

    return-object v0

    .line 3759
    :pswitch_3e3
    const-string/jumbo v0, "needMobileRadioShutdown"

    return-object v0

    .line 3755
    :pswitch_3e7
    const-string/jumbo v0, "invokeOemRilRequestRaw"

    return-object v0

    .line 3751
    :pswitch_3eb
    const-string/jumbo v0, "setRoamingOverride"

    return-object v0

    .line 3747
    :pswitch_3ef
    const-string/jumbo v0, "setOperatorBrandOverride"

    return-object v0

    .line 3743
    :pswitch_3f3
    const-string/jumbo v0, "getMergedImsisFromGroup"

    return-object v0

    .line 3739
    :pswitch_3f7
    const-string/jumbo v0, "getMergedSubscriberIds"

    return-object v0

    .line 3735
    :pswitch_3fb
    const-string/jumbo v0, "getLine1AlphaTagForDisplay"

    return-object v0

    .line 3731
    :pswitch_3ff
    const-string/jumbo v0, "getLine1NumberForDisplay"

    return-object v0

    .line 3727
    :pswitch_403
    const-string/jumbo v0, "setLine1NumberForDisplayForSubscriber"

    return-object v0

    .line 3723
    :pswitch_407
    const-string/jumbo v0, "getCarrierPackageNamesForIntentAndPhone"

    return-object v0

    .line 3719
    :pswitch_40b
    const-string v0, "checkCarrierPrivilegesForPackageAnyPhone"

    return-object v0

    .line 3715
    :pswitch_40e
    const-string v0, "checkCarrierPrivilegesForPackage"

    return-object v0

    .line 3711
    :pswitch_411
    const-string/jumbo v0, "getCarrierPrivilegeStatusForUid"

    return-object v0

    .line 3707
    :pswitch_415
    const-string/jumbo v0, "getCarrierPrivilegeStatus"

    return-object v0

    .line 3703
    :pswitch_419
    const-string/jumbo v0, "requestNumberVerification"

    return-object v0

    .line 3699
    :pswitch_41d
    const-string/jumbo v0, "getCdmaMin"

    return-object v0

    .line 3695
    :pswitch_421
    const-string/jumbo v0, "getCdmaMdn"

    return-object v0

    .line 3691
    :pswitch_425
    const-string/jumbo v0, "setImsRegistrationState"

    return-object v0

    .line 3687
    :pswitch_429
    const-string/jumbo v0, "isManualNetworkSelectionAllowed"

    return-object v0

    .line 3683
    :pswitch_42d
    const-string/jumbo v0, "isDataEnabledForReason"

    return-object v0

    .line 3679
    :pswitch_431
    const-string/jumbo v0, "setDataEnabledForReason"

    return-object v0

    .line 3675
    :pswitch_435
    const-string/jumbo v0, "isDataEnabled"

    return-object v0

    .line 3671
    :pswitch_439
    const-string/jumbo v0, "isUserDataEnabled"

    return-object v0

    .line 3667
    :pswitch_43d
    const-string/jumbo v0, "getDataEnabled"

    return-object v0

    .line 3663
    :pswitch_441
    const-string/jumbo v0, "setAllowedNetworkTypesForReason"

    return-object v0

    .line 3659
    :pswitch_445
    const-string v0, "getAllowedNetworkTypesForReason"

    return-object v0

    .line 3655
    :pswitch_448
    const-string/jumbo v0, "setNetworkSelectionModeManual"

    return-object v0

    .line 3651
    :pswitch_44c
    const-string/jumbo v0, "stopNetworkScan"

    return-object v0

    .line 3647
    :pswitch_450
    const-string/jumbo v0, "requestNetworkScan"

    return-object v0

    .line 3643
    :pswitch_454
    const-string/jumbo v0, "getCellNetworkScanResults"

    return-object v0

    .line 3639
    :pswitch_458
    const-string/jumbo v0, "setNetworkSelectionModeAutomatic"

    return-object v0

    .line 3635
    :pswitch_45c
    const-string/jumbo v0, "getImsMmTelFeatureState"

    return-object v0

    .line 3631
    :pswitch_460
    const-string/jumbo v0, "getBoundImsServicePackage"

    return-object v0

    .line 3627
    :pswitch_464
    const-string v0, "clearCarrierImsServiceOverride"

    return-object v0

    .line 3623
    :pswitch_467
    const-string/jumbo v0, "setBoundImsServiceOverride"

    return-object v0

    .line 3619
    :pswitch_46b
    const-string/jumbo v0, "getImsConfig"

    return-object v0

    .line 3615
    :pswitch_46f
    const-string/jumbo v0, "getImsRegistration"

    return-object v0

    .line 3611
    :pswitch_473
    const-string/jumbo v0, "unregisterImsFeatureCallback"

    return-object v0

    .line 3607
    :pswitch_477
    const-string/jumbo v0, "registerMmTelFeatureCallback"

    return-object v0

    .line 3603
    :pswitch_47b
    const-string/jumbo v0, "resetIms"

    return-object v0

    .line 3599
    :pswitch_47f
    const-string v0, "disableIms"

    return-object v0

    .line 3595
    :pswitch_482
    const-string v0, "enableIms"

    return-object v0

    .line 3591
    :pswitch_485
    const-string/jumbo v0, "isTetheringApnRequiredForSubscriber"

    return-object v0

    .line 3587
    :pswitch_489
    const-string v0, "getAllowedNetworkTypesBitmask"

    return-object v0

    .line 3583
    :pswitch_48c
    const-string/jumbo v0, "rebootModem"

    return-object v0

    .line 3579
    :pswitch_490
    const-string/jumbo v0, "resetModemConfig"

    return-object v0

    .line 3575
    :pswitch_494
    const-string/jumbo v0, "nvWriteCdmaPrl"

    return-object v0

    .line 3571
    :pswitch_498
    const-string/jumbo v0, "nvWriteItem"

    return-object v0

    .line 3567
    :pswitch_49c
    const-string/jumbo v0, "nvReadItem"

    return-object v0

    .line 3563
    :pswitch_4a0
    const-string/jumbo v0, "sendEnvelopeWithStatus"

    return-object v0

    .line 3559
    :pswitch_4a4
    const-string/jumbo v0, "iccExchangeSimIO"

    return-object v0

    .line 3555
    :pswitch_4a8
    const-string/jumbo v0, "iccTransmitApduBasicChannel"

    return-object v0

    .line 3551
    :pswitch_4ac
    const-string/jumbo v0, "iccTransmitApduBasicChannelByPort"

    return-object v0

    .line 3547
    :pswitch_4b0
    const-string/jumbo v0, "iccTransmitApduLogicalChannel"

    return-object v0

    .line 3543
    :pswitch_4b4
    const-string/jumbo v0, "iccTransmitApduLogicalChannelByPort"

    return-object v0

    .line 3539
    :pswitch_4b8
    const-string/jumbo v0, "iccCloseLogicalChannel"

    return-object v0

    .line 3535
    :pswitch_4bc
    const-string/jumbo v0, "iccOpenLogicalChannel"

    return-object v0

    .line 3531
    :pswitch_4c0
    const-string/jumbo v0, "setCellInfoListRate"

    return-object v0

    .line 3527
    :pswitch_4c4
    const-string/jumbo v0, "requestCellInfoUpdateWithWorkSource"

    return-object v0

    .line 3523
    :pswitch_4c8
    const-string/jumbo v0, "requestCellInfoUpdate"

    return-object v0

    .line 3519
    :pswitch_4cc
    const-string v0, "getAllCellInfo"

    return-object v0

    .line 3515
    :pswitch_4cf
    const-string/jumbo v0, "getLteOnCdmaModeForSubscriber"

    return-object v0

    .line 3511
    :pswitch_4d3
    const-string/jumbo v0, "getLteOnCdmaMode"

    return-object v0

    .line 3507
    :pswitch_4d7
    const-string/jumbo v0, "hasIccCardUsingSlotIndex"

    return-object v0

    .line 3503
    :pswitch_4db
    const-string/jumbo v0, "hasIccCard"

    return-object v0

    .line 3499
    :pswitch_4df
    const-string/jumbo v0, "getVoiceNetworkTypeForSubscriber"

    return-object v0

    .line 3495
    :pswitch_4e3
    const-string/jumbo v0, "getDataNetworkTypeForSubscriber"

    return-object v0

    .line 3491
    :pswitch_4e7
    const-string/jumbo v0, "getDataNetworkType"

    return-object v0

    .line 3487
    :pswitch_4eb
    const-string/jumbo v0, "getNetworkTypeForSubscriber"

    return-object v0

    .line 3483
    :pswitch_4ef
    const-string/jumbo v0, "sendDialerSpecialCode"

    return-object v0

    .line 3479
    :pswitch_4f3
    const-string/jumbo v0, "sendVisualVoicemailSmsForSubscriber"

    return-object v0

    .line 3475
    :pswitch_4f7
    const-string v0, "getActiveVisualVoicemailSmsFilterSettings"

    return-object v0

    .line 3471
    :pswitch_4fa
    const-string/jumbo v0, "getVisualVoicemailSmsFilterSettings"

    return-object v0

    .line 3467
    :pswitch_4fe
    const-string v0, "disableVisualVoicemailSmsFilter"

    return-object v0

    .line 3463
    :pswitch_501
    const-string v0, "enableVisualVoicemailSmsFilter"

    return-object v0

    .line 3459
    :pswitch_504
    const-string/jumbo v0, "getVisualVoicemailPackageName"

    return-object v0

    .line 3455
    :pswitch_508
    const-string/jumbo v0, "getVisualVoicemailSettings"

    return-object v0

    .line 3451
    :pswitch_50c
    const-string/jumbo v0, "isConcurrentVoiceAndDataAllowed"

    return-object v0

    .line 3447
    :pswitch_510
    const-string/jumbo v0, "getVoiceMessageCountForSubscriber"

    return-object v0

    .line 3443
    :pswitch_514
    const-string/jumbo v0, "getDataActivationState"

    return-object v0

    .line 3439
    :pswitch_518
    const-string/jumbo v0, "getVoiceActivationState"

    return-object v0

    .line 3435
    :pswitch_51c
    const-string/jumbo v0, "setDataActivationState"

    return-object v0

    .line 3431
    :pswitch_520
    const-string/jumbo v0, "setVoiceActivationState"

    return-object v0

    .line 3427
    :pswitch_524
    const-string/jumbo v0, "setVoiceMailNumber"

    return-object v0

    .line 3423
    :pswitch_528
    const-string/jumbo v0, "needsOtaServiceProvisioning"

    return-object v0

    .line 3419
    :pswitch_52c
    const-string/jumbo v0, "getCdmaEriTextForSubscriber"

    return-object v0

    .line 3415
    :pswitch_530
    const-string/jumbo v0, "getCdmaEriText"

    return-object v0

    .line 3411
    :pswitch_534
    const-string/jumbo v0, "getCdmaEriIconModeForSubscriber"

    return-object v0

    .line 3407
    :pswitch_538
    const-string/jumbo v0, "getCdmaEriIconMode"

    return-object v0

    .line 3403
    :pswitch_53c
    const-string/jumbo v0, "getCdmaEriIconIndexForSubscriber"

    return-object v0

    .line 3399
    :pswitch_540
    const-string/jumbo v0, "getCdmaEriIconIndex"

    return-object v0

    .line 3395
    :pswitch_544
    const-string v0, "getActivePhoneTypeForSlot"

    return-object v0

    .line 3391
    :pswitch_547
    const-string v0, "getActivePhoneType"

    return-object v0

    .line 3387
    :pswitch_54a
    const-string/jumbo v0, "getDataStateForSubId"

    return-object v0

    .line 3383
    :pswitch_54e
    const-string/jumbo v0, "getDataState"

    return-object v0

    .line 3379
    :pswitch_552
    const-string/jumbo v0, "getDataActivityForSubId"

    return-object v0

    .line 3375
    :pswitch_556
    const-string/jumbo v0, "getDataActivity"

    return-object v0

    .line 3371
    :pswitch_55a
    const-string/jumbo v0, "getCallStateForSubscription"

    return-object v0

    .line 3367
    :pswitch_55e
    const-string/jumbo v0, "getCallState"

    return-object v0

    .line 3363
    :pswitch_562
    const-string/jumbo v0, "getNeighboringCellInfo"

    return-object v0

    .line 3359
    :pswitch_566
    const-string/jumbo v0, "getNetworkCountryIsoForPhone"

    return-object v0

    .line 3355
    :pswitch_56a
    const-string/jumbo v0, "getCellLocation"

    return-object v0

    .line 3351
    :pswitch_56e
    const-string/jumbo v0, "isDataConnectivityPossible"

    return-object v0

    .line 3347
    :pswitch_572
    const-string v0, "disableDataConnectivity"

    return-object v0

    .line 3343
    :pswitch_575
    const-string v0, "enableDataConnectivity"

    return-object v0

    .line 3339
    :pswitch_578
    const-string v0, "disableLocationUpdates"

    return-object v0

    .line 3335
    :pswitch_57b
    const-string v0, "enableLocationUpdates"

    return-object v0

    .line 3331
    :pswitch_57e
    const-string/jumbo v0, "updateServiceLocationWithPackageName"

    return-object v0

    .line 3327
    :pswitch_582
    const-string/jumbo v0, "updateServiceLocation"

    return-object v0

    .line 3323
    :pswitch_586
    const-string/jumbo v0, "getRadioPowerOffReasons"

    return-object v0

    .line 3319
    :pswitch_58a
    const-string v0, "clearRadioPowerOffForReason"

    return-object v0

    .line 3315
    :pswitch_58d
    const-string/jumbo v0, "requestRadioPowerOffForReason"

    return-object v0

    .line 3311
    :pswitch_591
    const-string/jumbo v0, "setRadioPower"

    return-object v0

    .line 3307
    :pswitch_595
    const-string/jumbo v0, "setRadioForSubscriber"

    return-object v0

    .line 3303
    :pswitch_599
    const-string/jumbo v0, "setRadio"

    return-object v0

    .line 3299
    :pswitch_59d
    const-string/jumbo v0, "toggleRadioOnOffForSubscriber"

    return-object v0

    .line 3295
    :pswitch_5a1
    const-string/jumbo v0, "toggleRadioOnOff"

    return-object v0

    .line 3291
    :pswitch_5a5
    const-string/jumbo v0, "handlePinMmiForSubscriber"

    return-object v0

    .line 3287
    :pswitch_5a9
    const-string/jumbo v0, "handleUssdRequest"

    return-object v0

    .line 3283
    :pswitch_5ad
    const-string/jumbo v0, "handlePinMmi"

    return-object v0

    .line 3279
    :pswitch_5b1
    const-string/jumbo v0, "supplyPukReportResultForSubscriber"

    return-object v0

    .line 3275
    :pswitch_5b5
    const-string/jumbo v0, "supplyPinReportResultForSubscriber"

    return-object v0

    .line 3271
    :pswitch_5b9
    const-string/jumbo v0, "supplyPukForSubscriber"

    return-object v0

    .line 3267
    :pswitch_5bd
    const-string/jumbo v0, "supplyPinForSubscriber"

    return-object v0

    .line 3263
    :pswitch_5c1
    const-string/jumbo v0, "getCallComposerStatus"

    return-object v0

    .line 3259
    :pswitch_5c5
    const-string/jumbo v0, "setCallComposerStatus"

    return-object v0

    .line 3255
    :pswitch_5c9
    const-string/jumbo v0, "isRadioOnForSubscriberWithFeature"

    return-object v0

    .line 3251
    :pswitch_5cd
    const-string/jumbo v0, "isRadioOnForSubscriber"

    return-object v0

    .line 3247
    :pswitch_5d1
    const-string/jumbo v0, "isRadioOnWithFeature"

    return-object v0

    .line 3243
    :pswitch_5d5
    const-string/jumbo v0, "isRadioOn"

    return-object v0

    .line 3239
    :pswitch_5d9
    const-string v0, "call"

    return-object v0

    .line 3235
    :pswitch_5dc
    const-string v0, "dial"

    return-object v0

    nop

    :pswitch_data_5e0
    .packed-switch 0x1
        :pswitch_5dc
        :pswitch_5d9
        :pswitch_5d5
        :pswitch_5d1
        :pswitch_5cd
        :pswitch_5c9
        :pswitch_5c5
        :pswitch_5c1
        :pswitch_5bd
        :pswitch_5b9
        :pswitch_5b5
        :pswitch_5b1
        :pswitch_5ad
        :pswitch_5a9
        :pswitch_5a5
        :pswitch_5a1
        :pswitch_59d
        :pswitch_599
        :pswitch_595
        :pswitch_591
        :pswitch_58d
        :pswitch_58a
        :pswitch_586
        :pswitch_582
        :pswitch_57e
        :pswitch_57b
        :pswitch_578
        :pswitch_575
        :pswitch_572
        :pswitch_56e
        :pswitch_56a
        :pswitch_566
        :pswitch_562
        :pswitch_55e
        :pswitch_55a
        :pswitch_556
        :pswitch_552
        :pswitch_54e
        :pswitch_54a
        :pswitch_547
        :pswitch_544
        :pswitch_540
        :pswitch_53c
        :pswitch_538
        :pswitch_534
        :pswitch_530
        :pswitch_52c
        :pswitch_528
        :pswitch_524
        :pswitch_520
        :pswitch_51c
        :pswitch_518
        :pswitch_514
        :pswitch_510
        :pswitch_50c
        :pswitch_508
        :pswitch_504
        :pswitch_501
        :pswitch_4fe
        :pswitch_4fa
        :pswitch_4f7
        :pswitch_4f3
        :pswitch_4ef
        :pswitch_4eb
        :pswitch_4e7
        :pswitch_4e3
        :pswitch_4df
        :pswitch_4db
        :pswitch_4d7
        :pswitch_4d3
        :pswitch_4cf
        :pswitch_4cc
        :pswitch_4c8
        :pswitch_4c4
        :pswitch_4c0
        :pswitch_4bc
        :pswitch_4b8
        :pswitch_4b4
        :pswitch_4b0
        :pswitch_4ac
        :pswitch_4a8
        :pswitch_4a4
        :pswitch_4a0
        :pswitch_49c
        :pswitch_498
        :pswitch_494
        :pswitch_490
        :pswitch_48c
        :pswitch_489
        :pswitch_485
        :pswitch_482
        :pswitch_47f
        :pswitch_47b
        :pswitch_477
        :pswitch_473
        :pswitch_46f
        :pswitch_46b
        :pswitch_467
        :pswitch_464
        :pswitch_460
        :pswitch_45c
        :pswitch_458
        :pswitch_454
        :pswitch_450
        :pswitch_44c
        :pswitch_448
        :pswitch_445
        :pswitch_441
        :pswitch_43d
        :pswitch_439
        :pswitch_435
        :pswitch_431
        :pswitch_42d
        :pswitch_429
        :pswitch_425
        :pswitch_421
        :pswitch_41d
        :pswitch_419
        :pswitch_415
        :pswitch_411
        :pswitch_40e
        :pswitch_40b
        :pswitch_407
        :pswitch_403
        :pswitch_3ff
        :pswitch_3fb
        :pswitch_3f7
        :pswitch_3f3
        :pswitch_3ef
        :pswitch_3eb
        :pswitch_3e7
        :pswitch_3e3
        :pswitch_3df
        :pswitch_3db
        :pswitch_3d7
        :pswitch_3d4
        :pswitch_3d0
        :pswitch_3cd
        :pswitch_3c9
        :pswitch_3c5
        :pswitch_3c1
        :pswitch_3bd
        :pswitch_3b9
        :pswitch_3b5
        :pswitch_3b1
        :pswitch_3ad
        :pswitch_3a9
        :pswitch_3a5
        :pswitch_3a1
        :pswitch_39d
        :pswitch_399
        :pswitch_395
        :pswitch_391
        :pswitch_38d
        :pswitch_389
        :pswitch_385
        :pswitch_382
        :pswitch_37e
        :pswitch_37a
        :pswitch_376
        :pswitch_372
        :pswitch_36e
        :pswitch_36a
        :pswitch_366
        :pswitch_362
        :pswitch_35e
        :pswitch_35b
        :pswitch_357
        :pswitch_353
        :pswitch_34f
        :pswitch_34b
        :pswitch_348
        :pswitch_344
        :pswitch_340
        :pswitch_33c
        :pswitch_338
        :pswitch_334
        :pswitch_331
        :pswitch_32e
        :pswitch_32b
        :pswitch_327
        :pswitch_323
        :pswitch_31f
        :pswitch_31b
        :pswitch_317
        :pswitch_313
        :pswitch_30f
        :pswitch_30b
        :pswitch_307
        :pswitch_303
        :pswitch_2ff
        :pswitch_2fb
        :pswitch_2f7
        :pswitch_2f3
        :pswitch_2ef
        :pswitch_2eb
        :pswitch_2e7
        :pswitch_2e3
        :pswitch_2df
        :pswitch_2db
        :pswitch_2d7
        :pswitch_2d3
        :pswitch_2cf
        :pswitch_2cb
        :pswitch_2c7
        :pswitch_2c3
        :pswitch_2bf
        :pswitch_2bb
        :pswitch_2b7
        :pswitch_2b3
        :pswitch_2af
        :pswitch_2ab
        :pswitch_2a7
        :pswitch_2a3
        :pswitch_29f
        :pswitch_29b
        :pswitch_297
        :pswitch_293
        :pswitch_28f
        :pswitch_28b
        :pswitch_287
        :pswitch_283
        :pswitch_27f
        :pswitch_27b
        :pswitch_277
        :pswitch_273
        :pswitch_26f
        :pswitch_26b
        :pswitch_267
        :pswitch_263
        :pswitch_25f
        :pswitch_25b
        :pswitch_257
        :pswitch_253
        :pswitch_24f
        :pswitch_24b
        :pswitch_247
        :pswitch_243
        :pswitch_23f
        :pswitch_23b
        :pswitch_237
        :pswitch_233
        :pswitch_22f
        :pswitch_22b
        :pswitch_227
        :pswitch_223
        :pswitch_21f
        :pswitch_21b
        :pswitch_217
        :pswitch_213
        :pswitch_20f
        :pswitch_20b
        :pswitch_207
        :pswitch_203
        :pswitch_1ff
        :pswitch_1fb
        :pswitch_1f7
        :pswitch_1f3
        :pswitch_1f0
        :pswitch_1ec
        :pswitch_1e8
        :pswitch_1e4
        :pswitch_1e1
        :pswitch_1dd
        :pswitch_1d9
        :pswitch_1d5
        :pswitch_1d1
        :pswitch_1cd
        :pswitch_1c9
        :pswitch_1c5
        :pswitch_1c1
        :pswitch_1bd
        :pswitch_1b9
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1ae
        :pswitch_1aa
        :pswitch_1a6
        :pswitch_1a2
        :pswitch_19e
        :pswitch_19a
        :pswitch_196
        :pswitch_192
        :pswitch_18e
        :pswitch_18b
        :pswitch_187
        :pswitch_183
        :pswitch_17f
        :pswitch_17c
        :pswitch_178
        :pswitch_174
        :pswitch_170
        :pswitch_16c
        :pswitch_168
        :pswitch_164
        :pswitch_160
        :pswitch_15d
        :pswitch_159
        :pswitch_155
        :pswitch_151
        :pswitch_14d
        :pswitch_149
        :pswitch_145
        :pswitch_141
        :pswitch_13d
        :pswitch_139
        :pswitch_135
        :pswitch_131
        :pswitch_12d
        :pswitch_129
        :pswitch_125
        :pswitch_121
        :pswitch_11d
        :pswitch_119
        :pswitch_115
        :pswitch_111
        :pswitch_10d
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fd
        :pswitch_f9
        :pswitch_f5
        :pswitch_f2
        :pswitch_ee
        :pswitch_eb
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
        :pswitch_db
        :pswitch_d7
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
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
        :pswitch_58
        :pswitch_54
        :pswitch_50
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

.method private onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 18200
    .local v7, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 18202
    .local v8, "_arg1":I
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/Uri;

    .line 18204
    .local v9, "_arg2":Landroid/net/Uri;
    sget-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 18206
    .local v10, "_arg3":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 18208
    .local v11, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v12

    .line 18209
    .local v12, "_arg5":Landroid/telephony/IBootstrapAuthenticationCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18210
    move-object v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    .line 18211
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18212
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17427
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17429
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17430
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17431
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 17432
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17433
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17434
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18146
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18148
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18149
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18150
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 18151
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18152
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18153
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18267
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 18269
    .local v1, "_arg1":Landroid/telephony/SignalStrengthUpdateRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18270
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18271
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    .line 18272
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18273
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$deprovisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18484
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18486
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 18487
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18488
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->deprovisionSatelliteService(ILjava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 18489
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18490
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18004
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18006
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18007
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18008
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 18009
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18010
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18011
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$enableVisualVoicemailSmsFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16888
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16890
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 16891
    .local v2, "_arg2":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16892
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 16893
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16894
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18082
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18084
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18086
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 18087
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18088
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 18089
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$getBoundImsServicePackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17190
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 17192
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17193
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17194
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundImsServicePackage(IZI)Ljava/lang/String;

    move-result-object v3

    .line 17195
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17196
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17197
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17612
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17614
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICallForwardingInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICallForwardingInfoCallback;

    move-result-object v2

    .line 17615
    .local v2, "_arg2":Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17616
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V

    .line 17617
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17618
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$getCallStateForSubscription$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16767
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16769
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16770
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16771
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 16772
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16773
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16774
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17594
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17596
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 17597
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17598
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v3

    .line 17599
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17600
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17601
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getCdmaEriIconIndexForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16789
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16791
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16792
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16793
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 16794
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16795
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16796
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getCdmaEriIconModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16805
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16807
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16808
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16809
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 16810
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16811
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16812
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getCdmaEriTextForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16821
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16823
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16824
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16825
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16826
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16827
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16828
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getCellNetworkScanResults$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17207
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17209
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17210
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17211
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v3

    .line 17212
    .local v3, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17213
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17214
    return v4
.end method

.method private onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 17655
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17657
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17658
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17659
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 17660
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17661
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 17662
    return v4
.end method

.method private onTransact$getDataNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16944
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16946
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16947
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16948
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 16949
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16950
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16951
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17499
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17501
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17502
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17503
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17504
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17505
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17506
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18165
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18167
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18168
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18169
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 18170
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18171
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 18172
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17685
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17687
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17689
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 17690
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17691
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 17692
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17693
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 17694
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17466
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17468
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17469
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17470
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17471
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17472
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17473
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17915
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17917
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17918
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17919
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningStatusForCapability(III)Z

    move-result v3

    .line 17920
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17921
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17922
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18316
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18318
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18319
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18320
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    .line 18321
    .local v3, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18322
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 18323
    return v4
.end method

.method private onTransact$getLine1AlphaTagForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17352
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17354
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17355
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17356
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17357
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17358
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17359
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getLine1NumberForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17337
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17339
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17340
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17341
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17342
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17343
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17344
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getLteOnCdmaModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16975
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16977
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16979
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16980
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16981
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 16982
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16983
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16984
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getMeidForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17483
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17485
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17486
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17487
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17488
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17489
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17490
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17367
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17369
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17370
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17371
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 17372
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17373
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 17374
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16928
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16930
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16931
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16932
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 16933
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16934
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16935
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17778
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17780
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17781
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17782
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 17783
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17784
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17785
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getRadioPowerOffReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16741
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16743
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16744
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16745
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerOffReasons(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 16746
    .local v3, "_result":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16747
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 16748
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17795
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17797
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17798
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17799
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 17800
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17801
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17802
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17930
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17932
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17933
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17934
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsProvisioningStatusForCapability(III)Z

    move-result v3

    .line 17935
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17936
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17937
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getServiceStateForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 17533
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 17535
    .local v7, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 17537
    .local v8, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 17539
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 17540
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17541
    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSubscriber(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 17542
    .local v0, "_result":Landroid/telephony/ServiceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17543
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17544
    return v1
.end method

.method private onTransact$getShaIdFromAllowList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18632
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18634
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18635
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18636
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 18637
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18638
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 18639
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17512
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 17514
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17516
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17517
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17518
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 17519
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17520
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17521
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getVisualVoicemailPackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16871
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16873
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16875
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16876
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16877
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 16878
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16879
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16880
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getVoiceMessageCountForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16856
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16858
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16859
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16860
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 16861
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16862
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16863
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$getVoiceNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16959
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16961
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16962
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16963
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 16964
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16965
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16966
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$handleUssdRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16719
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16721
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 16722
    .local v2, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16723
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 16724
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16725
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 18
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 17134
    .local v8, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 17136
    .local v9, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 17138
    .local v10, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 17140
    .local v11, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 17142
    .local v12, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 17144
    .local v13, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 17145
    .local v14, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17146
    move-object v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v0

    .line 17147
    .local v0, "_result":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17148
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 17149
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 20
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17107
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 17109
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 17111
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 17113
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 17115
    .local v12, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 17117
    .local v13, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 17119
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 17121
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 17122
    .local v16, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17123
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17124
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17125
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17126
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17080
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 17082
    .local v10, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 17084
    .local v11, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 17086
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 17088
    .local v13, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 17090
    .local v14, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 17092
    .local v15, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 17094
    .local v16, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 17096
    .local v17, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 17097
    .local v18, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17098
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17099
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17100
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17101
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 20
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17055
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 17057
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 17059
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 17061
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 17063
    .local v12, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 17065
    .local v13, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 17067
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 17069
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 17070
    .local v16, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17071
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17072
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17073
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17074
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17028
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 17030
    .local v10, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 17032
    .local v11, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 17034
    .local v12, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 17036
    .local v13, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 17038
    .local v14, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 17040
    .local v15, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 17042
    .local v16, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 17044
    .local v17, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 17045
    .local v18, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17046
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17047
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17048
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17049
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17831
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17833
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17834
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17835
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAvailable(III)Z

    move-result v3

    .line 17836
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17837
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17838
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17816
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17818
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17819
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17820
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCapable(III)Z

    move-result v3

    .line 17821
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17822
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17823
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18039
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18041
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18042
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18043
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result v3

    .line 18044
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18045
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18046
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17846
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 17848
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17850
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 17851
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17852
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V

    .line 17853
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17854
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18022
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18024
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18026
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18027
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18028
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 18029
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18030
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18031
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18069
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18071
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18072
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18073
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isMvnoMatched(IILjava/lang/String;)Z

    move-result v3

    .line 18074
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18075
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18076
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18333
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18335
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18336
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18337
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isProvisioningRequiredForCapability(III)Z

    move-result v3

    .line 18338
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18339
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18340
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isRadioOnForSubscriberWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16669
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16671
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16672
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16673
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 16674
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16675
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16676
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18348
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18350
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18351
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18352
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsProvisioningRequiredForCapability(III)Z

    move-result v3

    .line 18353
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18354
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18355
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17442
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17444
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17445
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17446
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 17447
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17448
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17449
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18116
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 18118
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18119
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18120
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyRcsAutoConfigurationReceived(I[BZ)V

    .line 18121
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18122
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$onDeviceAlignedWithSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18605
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 18606
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18607
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->onDeviceAlignedWithSatellite(IZ)V

    .line 18608
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18609
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$persistEmergencyCallDiagnosticData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 18382
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 18384
    .local v8, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 18386
    .local v9, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 18388
    .local v11, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 18389
    .local v12, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18390
    move-object v0, p0

    move-object v1, v7

    move v2, v8

    move-wide v3, v9

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->persistEmergencyCallDiagnosticData(Ljava/lang/String;ZJZZ)V

    .line 18391
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18392
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$pollPendingSatelliteDatagrams$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18551
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 18552
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18553
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->pollPendingSatelliteDatagrams(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 18554
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18555
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$provisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18467
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18469
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 18471
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 18472
    .local v3, "_arg3":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18473
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->provisionSatelliteService(ILjava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 18474
    .local v4, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18475
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 18476
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$purchasePremiumCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18285
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 18287
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18288
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18289
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->purchasePremiumCapability(ILcom/android/internal/telephony/IIntegerConsumer;I)V

    .line 18290
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18291
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$registerForSatelliteDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18526
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;

    move-result-object v1

    .line 18527
    .local v1, "_arg1":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18528
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteDatagram(ILandroid/telephony/satellite/ISatelliteDatagramCallback;)I

    move-result v2

    .line 18529
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18530
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18531
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$registerForSatelliteModemStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18501
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteStateCallback;

    move-result-object v1

    .line 18502
    .local v1, "_arg1":Landroid/telephony/satellite/ISatelliteStateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18503
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteModemStateChanged(ILandroid/telephony/satellite/ISatelliteStateCallback;)I

    move-result v2

    .line 18504
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18505
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18506
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18299
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18301
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    .line 18303
    .local v2, "_arg2":Lcom/android/internal/telephony/IImsStateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 18304
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18305
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V

    .line 18306
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18307
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16993
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v1

    .line 16995
    .local v1, "_arg1":Landroid/telephony/ICellInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16997
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 16998
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16999
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 17000
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17001
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 17009
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v7

    .line 17011
    .local v7, "_arg1":Landroid/telephony/ICellInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 17013
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 17015
    .local v9, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/WorkSource;

    .line 17016
    .local v10, "_arg4":Landroid/os/WorkSource;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17017
    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 17018
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17019
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$requestIsSatelliteCommunicationAllowedForCurrentLocation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18581
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 18582
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18583
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V

    .line 18584
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18585
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17220
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 17222
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 17224
    .local v10, "_arg1":Z
    sget-object v1, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/telephony/NetworkScanRequest;

    .line 17226
    .local v11, "_arg2":Landroid/telephony/NetworkScanRequest;
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/Messenger;

    .line 17228
    .local v12, "_arg3":Landroid/os/Messenger;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 17230
    .local v13, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 17232
    .local v14, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 17233
    .local v15, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17234
    move-object/from16 v1, p0

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 17235
    .local v1, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17236
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17237
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17299
    sget-object v0, Landroid/telephony/PhoneNumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneNumberRange;

    .line 17301
    .local v0, "_arg0":Landroid/telephony/PhoneNumberRange;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 17303
    .local v7, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/INumberVerificationCallback;

    move-result-object v9

    .line 17305
    .local v9, "_arg2":Lcom/android/internal/telephony/INumberVerificationCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 17306
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17307
    move-object v1, p0

    move-object v2, v0

    move-wide v3, v7

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V

    .line 17308
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17309
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$requestSatelliteEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18419
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 18421
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18423
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 18424
    .local v3, "_arg3":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18425
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteEnabled(IZZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 18426
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18427
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$requestTimeForNextSatelliteVisibility$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18593
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 18594
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18595
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestTimeForNextSatelliteVisibility(ILandroid/os/ResultReceiver;)V

    .line 18596
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18597
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$sendSatelliteDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 18563
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 18565
    .local v7, "_arg1":I
    sget-object v0, Landroid/telephony/satellite/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/satellite/SatelliteDatagram;

    .line 18567
    .local v8, "_arg2":Landroid/telephony/satellite/SatelliteDatagram;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 18569
    .local v9, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v10

    .line 18570
    .local v10, "_arg4":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18571
    move-object v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->sendSatelliteDatagram(IILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 18572
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18573
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18185
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/ThermalMitigationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ThermalMitigationRequest;

    .line 18187
    .local v1, "_arg1":Landroid/telephony/ThermalMitigationRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18188
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18189
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result v3

    .line 18190
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18191
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18192
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16903
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 16905
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 16907
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 16909
    .local v10, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 16911
    .local v11, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 16913
    .local v12, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 16915
    .local v13, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/PendingIntent;

    .line 16916
    .local v15, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16917
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 16918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16919
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$setAllowedNetworkTypesForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17262
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17264
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 17265
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17266
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v4

    .line 17267
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17268
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17269
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17172
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 17174
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 17176
    .local v2, "_arg2":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 17177
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17178
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundImsServiceOverride(IZ[ILjava/lang/String;)Z

    move-result v4

    .line 17179
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17180
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17181
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17626
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallForwardingInfo;

    .line 17628
    .local v1, "_arg1":Landroid/telephony/CallForwardingInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 17629
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17630
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 17631
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17632
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17641
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 17643
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 17644
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17645
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 17646
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17647
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setCarrierServicePackageOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17762
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17764
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17765
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17766
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierServicePackageOverride(ILjava/lang/String;Ljava/lang/String;)V

    .line 17767
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17768
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 24
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17732
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 17734
    .local v11, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 17736
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 17738
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 17740
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 17742
    .local v15, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 17744
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 17746
    .local v17, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 17748
    .local v18, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 17750
    .local v19, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 17751
    .local v20, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17752
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17754
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$setCellBroadcastIdRanges$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18403
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/CellBroadcastIdRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 18405
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 18406
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18407
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellBroadcastIdRanges(ILjava/util/List;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 18408
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18409
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17280
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17282
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 17284
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 17285
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17286
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabledForReason(IIZLjava/lang/String;)V

    .line 17287
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17288
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 17702
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 17704
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 17706
    .local v8, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 17708
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 17709
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17710
    move-object v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 17711
    .local v0, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17712
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17713
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18131
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 18133
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18134
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18135
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result v3

    .line 18136
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18137
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18138
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17963
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17965
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17966
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17967
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningInt(III)I

    move-result v3

    .line 17968
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17969
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17970
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17899
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17901
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17903
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 17904
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17905
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningStatusForCapability(IIIZ)V

    .line 17906
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17907
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17978
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17980
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17981
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17982
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningString(IILjava/lang/String;)I

    move-result v3

    .line 17983
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17984
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17985
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setLine1NumberForDisplayForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17322
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17324
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17325
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17326
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 17327
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17328
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17329
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18098
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18100
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18102
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 18103
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18104
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMobileDataPolicyEnabled(IIZ)V

    .line 18105
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18106
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setNetworkSelectionModeManual$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17246
    .local v0, "_arg0":I
    sget-object v1, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 17248
    .local v1, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 17249
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17250
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v3

    .line 17251
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17252
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17253
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17945
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17947
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17949
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 17950
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17951
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsProvisioningStatusForCapability(IIIZ)V

    .line 17952
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17953
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 17384
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 17386
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 17388
    .local v8, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 17390
    .local v9, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 17391
    .local v10, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17392
    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 17393
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17394
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17395
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$setSatellitePointingUiClassName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18620
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18621
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18622
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatellitePointingUiClassName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 18623
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18624
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18625
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18253
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 18255
    .local v1, "_arg1":Landroid/telephony/SignalStrengthUpdateRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18256
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18257
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    .line 18258
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18259
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17671
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17673
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 17674
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17675
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 17676
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17677
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18053
    sget-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 18055
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 18057
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v2

    .line 18058
    .local v2, "_arg2":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18059
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V

    .line 18060
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17872
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 17874
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 17875
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17876
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiNonPersistent(IZI)V

    .line 17877
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17878
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setVoiceMailNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16837
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16839
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16840
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16841
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 16842
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16843
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16844
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18363
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 18365
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 18366
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18367
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    .line 18368
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18369
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 17553
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 17555
    .local v1, "_arg1":Landroid/telecom/PhoneAccountHandle;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 17556
    .local v2, "_arg2":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17557
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V

    .line 17558
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17559
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 17568
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 17570
    .local v1, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 17571
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17572
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 17573
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17574
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$startSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18439
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 18441
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    move-result-object v2

    .line 18442
    .local v2, "_arg2":Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18443
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->startSatelliteTransmissionUpdates(ILcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 18444
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18445
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$stopSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18453
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 18455
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    move-result-object v2

    .line 18456
    .local v2, "_arg2":Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18457
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->stopSatelliteTransmissionUpdates(ILcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 18458
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18459
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$supplyPukForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16687
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16689
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16690
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16691
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 16692
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16693
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16694
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$supplyPukReportResultForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16703
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16705
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16706
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16707
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    .line 16708
    .local v3, "_result":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16709
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 16710
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$unregisterForSatelliteDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18539
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;

    move-result-object v1

    .line 18540
    .local v1, "_arg1":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18541
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteDatagram(ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V

    .line 18542
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18543
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$unregisterForSatelliteModemStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18514
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteStateCallback;

    move-result-object v1

    .line 18515
    .local v1, "_arg1":Landroid/telephony/satellite/ISatelliteStateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18516
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteModemStateChanged(ILandroid/telephony/satellite/ISatelliteStateCallback;)V

    .line 18517
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 18518
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 17407
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 17409
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 17411
    .local v8, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 17413
    .local v9, "_arg3":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/ResultReceiver;

    .line 17414
    .local v10, "_arg4":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17415
    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V

    .line 17416
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17417
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 3226
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 18644
    const/16 v0, 0x17f

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 4778
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4782
    const-string v0, "com.android.internal.telephony.ITelephony"

    .line 4783
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 4784
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4786
    :cond_d
    packed-switch p1, :pswitch_data_168c

    .line 4794
    packed-switch p1, :pswitch_data_1692

    .line 8007
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 4790
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4791
    return v1

    .line 8003
    :pswitch_1c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getShaIdFromAllowList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7994
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 7995
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7996
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteDeviceAlignedTimeoutDuration(J)Z

    move-result v4

    .line 7997
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7998
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7999
    goto/16 :goto_168a

    .line 7989
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :pswitch_34
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatellitePointingUiClassName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7980
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 7981
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7982
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteListeningTimeoutDuration(J)Z

    move-result v4

    .line 7983
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7984
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7985
    goto/16 :goto_168a

    .line 7970
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7971
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7972
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteGatewayServicePackageName(Ljava/lang/String;)Z

    move-result v3

    .line 7973
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7974
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7975
    goto/16 :goto_168a

    .line 7960
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7961
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7962
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteServicePackageName(Ljava/lang/String;)Z

    move-result v3

    .line 7963
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7964
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7965
    goto/16 :goto_168a

    .line 7955
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_72
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$onDeviceAlignedWithSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7951
    :pswitch_77
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestTimeForNextSatelliteVisibility$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7947
    :pswitch_7c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestIsSatelliteCommunicationAllowedForCurrentLocation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7943
    :pswitch_81
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendSatelliteDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7939
    :pswitch_86
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$pollPendingSatelliteDatagrams$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7935
    :pswitch_8b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterForSatelliteDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7931
    :pswitch_90
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerForSatelliteDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7927
    :pswitch_95
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterForSatelliteModemStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7923
    :pswitch_9a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerForSatelliteModemStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7913
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7915
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 7916
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7917
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteProvisioned(ILandroid/os/ResultReceiver;)V

    .line 7918
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7919
    goto/16 :goto_168a

    .line 7902
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7904
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    move-result-object v3

    .line 7905
    .local v3, "_arg1":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7906
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteProvisionStateChanged(ILandroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    .line 7907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7908
    goto/16 :goto_168a

    .line 7890
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7892
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    move-result-object v3

    .line 7893
    .restart local v3    # "_arg1":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7894
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteProvisionStateChanged(ILandroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    move-result v4

    .line 7895
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7896
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7897
    goto/16 :goto_168a

    .line 7885
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    .end local v4    # "_result":I
    :pswitch_e8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$deprovisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7881
    :pswitch_ed
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$provisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7877
    :pswitch_f2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$stopSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7873
    :pswitch_f7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$startSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7863
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7865
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 7866
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7867
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteCapabilities(ILandroid/os/ResultReceiver;)V

    .line 7868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7869
    goto/16 :goto_168a

    .line 7852
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7854
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 7855
    .restart local v3    # "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7856
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteSupported(ILandroid/os/ResultReceiver;)V

    .line 7857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7858
    goto/16 :goto_168a

    .line 7841
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7843
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 7844
    .restart local v3    # "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7845
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsDemoModeEnabled(ILandroid/os/ResultReceiver;)V

    .line 7846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7847
    goto/16 :goto_168a

    .line 7830
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7832
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 7833
    .restart local v3    # "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7834
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteEnabled(ILandroid/os/ResultReceiver;)V

    .line 7835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7836
    goto/16 :goto_168a

    .line 7825
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_158
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestSatelliteEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7815
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 7817
    .local v2, "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7818
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7819
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierRestrictionStatus(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/String;)V

    .line 7820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7821
    goto/16 :goto_168a

    .line 7807
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_174
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDomainSelectionSupported()Z

    move-result v2

    .line 7808
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7809
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7810
    goto/16 :goto_168a

    .line 7803
    .end local v2    # "_result":Z
    :pswitch_180
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCellBroadcastIdRanges$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7794
    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7795
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7796
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellBroadcastIdRanges(I)Ljava/util/List;

    move-result-object v3

    .line 7797
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7798
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7799
    goto/16 :goto_168a

    .line 7786
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellBroadcastIdRange;>;"
    :pswitch_198
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNullCipherAndIntegrityPreferenceEnabled()Z

    move-result v2

    .line 7787
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7788
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7789
    goto/16 :goto_168a

    .line 7778
    .end local v2    # "_result":Z
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7779
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7780
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNullCipherAndIntegrityEnabled(Z)V

    .line 7781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7782
    goto/16 :goto_168a

    .line 7773
    .end local v2    # "_arg0":Z
    :pswitch_1b3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$persistEmergencyCallDiagnosticData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7764
    :pswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7765
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7766
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimStateForSlotIndex(I)I

    move-result v3

    .line 7767
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7768
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7769
    goto/16 :goto_168a

    .line 7752
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7754
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 7755
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7756
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;

    move-result-object v4

    .line 7757
    .local v4, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7758
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7759
    goto/16 :goto_168a

    .line 7742
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/content/ComponentName;
    :pswitch_1e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7743
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7744
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result v3

    .line 7745
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7746
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7747
    goto/16 :goto_168a

    .line 7731
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7733
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7734
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7735
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V

    .line 7736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7737
    goto/16 :goto_168a

    .line 7721
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7722
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7723
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 7724
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7725
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7726
    goto/16 :goto_168a

    .line 7716
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_21b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7712
    :pswitch_220
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7708
    :pswitch_225
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7701
    :pswitch_22a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemService()Ljava/lang/String;

    move-result-object v2

    .line 7702
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7703
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7704
    goto/16 :goto_168a

    .line 7692
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7693
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7694
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setModemService(Ljava/lang/String;)Z

    move-result v3

    .line 7695
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7696
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7697
    goto/16 :goto_168a

    .line 7687
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_249
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7679
    :pswitch_24e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    .line 7680
    .local v2, "_arg0":Lcom/android/internal/telephony/IImsStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7681
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V

    .line 7682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7683
    goto/16 :goto_168a

    .line 7674
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IImsStateCallback;
    :pswitch_261
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7670
    :pswitch_266
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$purchasePremiumCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7659
    :pswitch_26b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7661
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7662
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7663
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isPremiumCapabilityAvailableForPurchase(II)Z

    move-result v4

    .line 7664
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7665
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7666
    goto/16 :goto_168a

    .line 7650
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_282
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 7651
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7652
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    .line 7653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7654
    goto/16 :goto_168a

    .line 7642
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_295
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->prepareForUnattendedReboot()I

    move-result v2

    .line 7643
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7644
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7645
    goto/16 :goto_168a

    .line 7635
    .end local v2    # "_result":I
    :pswitch_2a1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v2

    .line 7636
    .local v2, "_result":Landroid/telephony/PhoneCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7637
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7638
    goto/16 :goto_168a

    .line 7631
    .end local v2    # "_result":Landroid/telephony/PhoneCapability;
    :pswitch_2ad
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7627
    :pswitch_2b2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7616
    :pswitch_2b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7618
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 7619
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7620
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setCapabilitiesRequestTimeout(IJ)Z

    move-result v5

    .line 7621
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7622
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7623
    goto/16 :goto_168a

    .line 7606
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_2ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7607
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7608
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRequestDisallowedStatus(I)Z

    move-result v3

    .line 7609
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7610
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7611
    goto/16 :goto_168a

    .line 7596
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7597
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7598
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastUcePidfXmlShell(I)Ljava/lang/String;

    move-result-object v3

    .line 7599
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7600
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7601
    goto/16 :goto_168a

    .line 7586
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7587
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7588
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    .line 7589
    .local v3, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7590
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7591
    goto/16 :goto_168a

    .line 7576
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7577
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7578
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    .line 7579
    .restart local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7580
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7581
    goto/16 :goto_168a

    .line 7564
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_31a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7566
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 7567
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7568
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v4

    .line 7569
    .local v4, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7570
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7571
    goto/16 :goto_168a

    .line 7552
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7554
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 7555
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7556
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v4

    .line 7557
    .restart local v4    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7558
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7559
    goto/16 :goto_168a

    .line 7543
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_348
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7544
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7545
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceUceEnabled(Z)V

    .line 7546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7547
    goto/16 :goto_168a

    .line 7535
    .end local v2    # "_arg0":Z
    :pswitch_357
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceUceEnabled()Z

    move-result v2

    .line 7536
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7537
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7538
    goto/16 :goto_168a

    .line 7526
    .end local v2    # "_result":Z
    :pswitch_363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7527
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7528
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7529
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7530
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7531
    goto/16 :goto_168a

    .line 7516
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7517
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7518
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getContactFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7519
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7520
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7521
    goto/16 :goto_168a

    .line 7504
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7506
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7507
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7508
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->removeContactFromEab(ILjava/lang/String;)I

    move-result v4

    .line 7509
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7510
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7511
    goto/16 :goto_168a

    .line 7496
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3a0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    .line 7497
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7498
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7499
    goto/16 :goto_168a

    .line 7487
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7488
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7489
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsFeatureValidationOverride(I)Z

    move-result v3

    .line 7490
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7491
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7492
    goto/16 :goto_168a

    .line 7475
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7477
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7478
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7479
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsFeatureValidationOverride(ILjava/lang/String;)Z

    move-result v4

    .line 7480
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7481
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7482
    goto/16 :goto_168a

    .line 7465
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_3d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7466
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7467
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierSingleRegistrationEnabled(I)Z

    move-result v3

    .line 7468
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7469
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7470
    goto/16 :goto_168a

    .line 7456
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7457
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7458
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceToDeviceForceEnabled(Z)V

    .line 7459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7460
    goto/16 :goto_168a

    .line 7447
    .end local v2    # "_arg0":Z
    :pswitch_3f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7448
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7449
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setActiveDeviceToDeviceTransport(Ljava/lang/String;)V

    .line 7450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7451
    goto/16 :goto_168a

    .line 7436
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7438
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7439
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7440
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDeviceToDeviceMessage(II)V

    .line 7441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7442
    goto/16 :goto_168a

    .line 7424
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_41a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7426
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7427
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7428
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z

    move-result v4

    .line 7429
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7430
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7431
    goto/16 :goto_168a

    .line 7416
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_431
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSingleRegistrationEnabled()Z

    move-result v2

    .line 7417
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7418
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7419
    goto/16 :goto_168a

    .line 7408
    .end local v2    # "_result":Z
    :pswitch_43d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7409
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7410
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V

    .line 7411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7412
    goto/16 :goto_168a

    .line 7400
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_44c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsSingleRegistrationTestModeEnabled()Z

    move-result v2

    .line 7401
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7402
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7403
    goto/16 :goto_168a

    .line 7392
    .end local v2    # "_result":Z
    :pswitch_458
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7393
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7394
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsSingleRegistrationTestModeEnabled(Z)V

    .line 7395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7396
    goto/16 :goto_168a

    .line 7383
    .end local v2    # "_arg0":Z
    :pswitch_467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7384
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7385
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->triggerRcsReconfiguration(I)V

    .line 7386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7387
    goto/16 :goto_168a

    .line 7372
    .end local v2    # "_arg0":I
    :pswitch_476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7374
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v3

    .line 7375
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7376
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 7377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7378
    goto/16 :goto_168a

    .line 7361
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_48d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7363
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v3

    .line 7364
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7365
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 7366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7367
    goto/16 :goto_168a

    .line 7351
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_4a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7352
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7353
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsVolteSingleRegistrationCapable(I)Z

    move-result v3

    .line 7354
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7355
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7356
    goto/16 :goto_168a

    .line 7340
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7342
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsClientConfiguration;

    .line 7343
    .local v3, "_arg1":Landroid/telephony/ims/RcsClientConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7344
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V

    .line 7345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7346
    goto/16 :goto_168a

    .line 7330
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/RcsClientConfiguration;
    :pswitch_4ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7331
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7332
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getGbaReleaseTime(I)I

    move-result v3

    .line 7333
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7334
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7335
    goto/16 :goto_168a

    .line 7318
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_4e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7320
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7321
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7322
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaReleaseTimeOverride(II)Z

    move-result v4

    .line 7323
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7324
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7325
    goto/16 :goto_168a

    .line 7308
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7309
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7310
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundGbaService(I)Ljava/lang/String;

    move-result-object v3

    .line 7311
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7312
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7313
    goto/16 :goto_168a

    .line 7296
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_50b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7298
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7299
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7300
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundGbaServiceOverride(ILjava/lang/String;)Z

    move-result v4

    .line 7301
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7302
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7303
    goto/16 :goto_168a

    .line 7291
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_522
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7287
    :pswitch_527
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7278
    :pswitch_52c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7279
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7280
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v3

    .line 7281
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7282
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7283
    goto/16 :goto_168a

    .line 7268
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_53f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7269
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7270
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isNrDualConnectivityEnabled(I)Z

    move-result v3

    .line 7271
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7273
    goto/16 :goto_168a

    .line 7256
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7258
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7259
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7260
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setNrDualConnectivityState(II)I

    move-result v4

    .line 7261
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7262
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7263
    goto/16 :goto_168a

    .line 7246
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7247
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7248
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoNrEnabled(I)Z

    move-result v3

    .line 7249
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7251
    goto/16 :goto_168a

    .line 7234
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_57c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7236
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 7237
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7238
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoNrEnabled(IZ)I

    move-result v4

    .line 7239
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7241
    goto/16 :goto_168a

    .line 7229
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_593
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7222
    :pswitch_598
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canConnectTo5GInDsdsMode()Z

    move-result v2

    .line 7223
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7224
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7225
    goto/16 :goto_168a

    .line 7213
    .end local v2    # "_result":Z
    :pswitch_5a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7214
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7215
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object v3

    .line 7216
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7217
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7218
    goto/16 :goto_168a

    .line 7207
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5b7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->userActivity()V

    .line 7208
    goto/16 :goto_168a

    .line 7202
    :pswitch_5bc
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestUserActivityNotification()V

    .line 7203
    goto/16 :goto_168a

    .line 7198
    :pswitch_5c1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7194
    :pswitch_5c6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7185
    :pswitch_5cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7186
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7187
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccLockEnabled(I)Z

    move-result v3

    .line 7188
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7189
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7190
    goto/16 :goto_168a

    .line 7180
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5de
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7173
    :pswitch_5e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7174
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7175
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCepEnabled(Z)V

    .line 7176
    goto/16 :goto_168a

    .line 7161
    .end local v2    # "_arg0":Z
    :pswitch_5ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7163
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7164
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7165
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMobileDataPolicyEnabled(II)Z

    move-result v4

    .line 7166
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7167
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7168
    goto/16 :goto_168a

    .line 7156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_606
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7147
    :pswitch_60b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7149
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 7150
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7151
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7152
    goto/16 :goto_168a

    .line 7137
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_61e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7138
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7139
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object v3

    .line 7140
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7142
    goto/16 :goto_168a

    .line 7131
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_631
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showSwitchToManagedProfileDialog()V

    .line 7132
    goto/16 :goto_168a

    .line 7127
    :pswitch_636
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7123
    :pswitch_63b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7114
    :pswitch_640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7115
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7116
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object v3

    .line 7117
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7118
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7119
    goto/16 :goto_168a

    .line 7109
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    :pswitch_653
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7098
    :pswitch_658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7100
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7101
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7102
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnMetered(II)Z

    move-result v4

    .line 7103
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7105
    goto/16 :goto_168a

    .line 7093
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_66f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7089
    :pswitch_674
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7078
    :pswitch_679
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7080
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7081
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7082
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isApplicationOnUicc(II)Z

    move-result v4

    .line 7083
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7084
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7085
    goto/16 :goto_168a

    .line 7070
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_690
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7071
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7072
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7073
    goto/16 :goto_168a

    .line 7061
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_69c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7062
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7063
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getHalVersion(I)I

    move-result v3

    .line 7064
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7065
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7066
    goto/16 :goto_168a

    .line 7053
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_6af
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioHalVersion()I

    move-result v2

    .line 7054
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7055
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7056
    goto/16 :goto_168a

    .line 7044
    .end local v2    # "_result":I
    :pswitch_6bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7045
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7046
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 7047
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7048
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 7049
    goto/16 :goto_168a

    .line 7039
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :pswitch_6ce
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7031
    :pswitch_6d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7032
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7033
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchMultiSimConfig(I)V

    .line 7034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7035
    goto/16 :goto_168a

    .line 7019
    .end local v2    # "_arg0":I
    :pswitch_6e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7021
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7022
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7023
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 7024
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7025
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7026
    goto/16 :goto_168a

    .line 7010
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_6f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7011
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7012
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimCarrierRestriction(Z)V

    .line 7013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7014
    goto/16 :goto_168a

    .line 6998
    .end local v2    # "_arg0":Z
    :pswitch_708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7000
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 7001
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7002
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->enableModemForSlot(IZ)Z

    move-result v4

    .line 7003
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7004
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7005
    goto/16 :goto_168a

    .line 6991
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_71f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->resetOtaEmergencyNumberDbFilePath()V

    .line 6992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6993
    goto/16 :goto_168a

    .line 6983
    :pswitch_727
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 6984
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6985
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    .line 6986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6987
    goto/16 :goto_168a

    .line 6976
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_73a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyOtaEmergencyNumberDbInstalled()V

    .line 6977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6978
    goto/16 :goto_168a

    .line 6967
    :pswitch_742
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6968
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6969
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberDbVersion(I)I

    move-result v3

    .line 6970
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6971
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6972
    goto/16 :goto_168a

    .line 6959
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_755
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberListTestMode()Ljava/util/List;

    move-result-object v2

    .line 6960
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6961
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6962
    goto/16 :goto_168a

    .line 6949
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6951
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 6952
    .local v3, "_arg1":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6953
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V

    .line 6954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6955
    goto/16 :goto_168a

    .line 6942
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/emergency/EmergencyNumber;
    :pswitch_778
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startEmergencyCallbackMode()V

    .line 6943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6944
    goto/16 :goto_168a

    .line 6938
    :pswitch_780
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6934
    :pswitch_785
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6923
    :pswitch_78a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6925
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6926
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6927
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningString(II)Ljava/lang/String;

    move-result-object v4

    .line 6928
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6929
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6930
    goto/16 :goto_168a

    .line 6911
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_7a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6913
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6914
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6915
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningInt(II)I

    move-result v4

    .line 6916
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6917
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6918
    goto/16 :goto_168a

    .line 6906
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_7b8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6902
    :pswitch_7bd
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6898
    :pswitch_7c2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6894
    :pswitch_7c7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6884
    :pswitch_7cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6886
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v3

    .line 6887
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6888
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    .line 6889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6890
    goto/16 :goto_168a

    .line 6873
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    :pswitch_7e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6875
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v3

    .line 6876
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6877
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    .line 6878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6879
    goto/16 :goto_168a

    .line 6862
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    :pswitch_7fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6864
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v3

    .line 6865
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6866
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 6867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6868
    goto/16 :goto_168a

    .line 6851
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :pswitch_811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6853
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v3

    .line 6854
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6855
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 6856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6857
    goto/16 :goto_168a

    .line 6841
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :pswitch_828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6842
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6843
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object v3

    .line 6844
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6845
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6846
    goto/16 :goto_168a

    .line 6829
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_83b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6831
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6832
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6833
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v4

    .line 6834
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6835
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6836
    goto/16 :goto_168a

    .line 6817
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_852
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6819
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6820
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6821
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 6822
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6823
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 6824
    goto/16 :goto_168a

    .line 6807
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :pswitch_869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6808
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6809
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyOverVolteEnabled(I)Z

    move-result v3

    .line 6810
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6811
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6812
    goto/16 :goto_168a

    .line 6796
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_87c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6798
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6799
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6800
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRttCapabilitySetting(IZ)V

    .line 6801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6802
    goto/16 :goto_168a

    .line 6785
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_88f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6787
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6788
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6789
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingModeSetting(II)V

    .line 6790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6791
    goto/16 :goto_168a

    .line 6775
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6776
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6777
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiRoamingModeSetting(I)I

    move-result v3

    .line 6778
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6779
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6780
    goto/16 :goto_168a

    .line 6764
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6766
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6767
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6768
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiModeSetting(II)V

    .line 6769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6770
    goto/16 :goto_168a

    .line 6754
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6755
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6756
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiModeSetting(I)I

    move-result v3

    .line 6757
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6758
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6759
    goto/16 :goto_168a

    .line 6749
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8db
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6739
    :pswitch_8e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6741
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6742
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6743
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingSettingEnabled(IZ)V

    .line 6744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6745
    goto/16 :goto_168a

    .line 6729
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_8f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6730
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6731
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiRoamingSettingEnabled(I)Z

    move-result v3

    .line 6732
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6733
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6734
    goto/16 :goto_168a

    .line 6718
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6720
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6721
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6722
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCrossSimCallingEnabled(IZ)V

    .line 6723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6724
    goto/16 :goto_168a

    .line 6708
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_919
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6709
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6710
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCrossSimCallingEnabledByUser(I)Z

    move-result v3

    .line 6711
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6712
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6713
    goto/16 :goto_168a

    .line 6697
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_92c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6699
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6700
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6701
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiSettingEnabled(IZ)V

    .line 6702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6703
    goto/16 :goto_168a

    .line 6687
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_93f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6688
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6689
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiSettingEnabled(I)Z

    move-result v3

    .line 6690
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6691
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6692
    goto/16 :goto_168a

    .line 6676
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6678
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6679
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6680
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVtSettingEnabled(IZ)V

    .line 6681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6682
    goto/16 :goto_168a

    .line 6666
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6667
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6668
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVtSettingEnabled(I)Z

    move-result v3

    .line 6669
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6670
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6671
    goto/16 :goto_168a

    .line 6655
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_978
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6657
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6658
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6659
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setAdvancedCallingSettingEnabled(IZ)V

    .line 6660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6661
    goto/16 :goto_168a

    .line 6645
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_98b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6646
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6647
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAdvancedCallingSettingEnabled(I)Z

    move-result v3

    .line 6648
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6649
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6650
    goto/16 :goto_168a

    .line 6640
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_99e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6636
    :pswitch_9a3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6632
    :pswitch_9a8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6622
    :pswitch_9ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6624
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    .line 6625
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6626
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 6627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6628
    goto/16 :goto_168a

    .line 6611
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_9c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6613
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    .line 6614
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6615
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 6616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6617
    goto/16 :goto_168a

    .line 6600
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_9db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6602
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 6603
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6604
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6606
    goto/16 :goto_168a

    .line 6589
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_9f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6591
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 6592
    .restart local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6593
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6595
    goto/16 :goto_168a

    .line 6578
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_a09
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6580
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    .line 6581
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6582
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 6583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6584
    goto/16 :goto_168a

    .line 6567
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_a20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6569
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    .line 6570
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6571
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 6572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6573
    goto/16 :goto_168a

    .line 6562
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_a37
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6555
    :pswitch_a3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isInEmergencySmsMode()Z

    move-result v2

    .line 6556
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6557
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6558
    goto/16 :goto_168a

    .line 6546
    .end local v2    # "_result":Z
    :pswitch_a48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6547
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6548
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkSelectionMode(I)I

    move-result v3

    .line 6549
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6550
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6551
    goto/16 :goto_168a

    .line 6541
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a5b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6533
    :pswitch_a60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6534
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6535
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->refreshUiccProfile(I)V

    .line 6536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6537
    goto/16 :goto_168a

    .line 6523
    .end local v2    # "_arg0":I
    :pswitch_a6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6524
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6525
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdListVersion(I)I

    move-result v3

    .line 6526
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6527
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6528
    goto/16 :goto_168a

    .line 6518
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a82
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierServicePackageOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6514
    :pswitch_a87
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6503
    :pswitch_a8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6505
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6506
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6507
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCdmaSubscriptionMode(II)Z

    move-result v4

    .line 6508
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6509
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6510
    goto/16 :goto_168a

    .line 6493
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_aa3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6494
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6495
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaSubscriptionMode(I)I

    move-result v3

    .line 6496
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6497
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6498
    goto/16 :goto_168a

    .line 6481
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_ab6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6483
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6484
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6485
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCdmaRoamingMode(II)Z

    move-result v4

    .line 6486
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6487
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6488
    goto/16 :goto_168a

    .line 6471
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_acd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6472
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6473
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaRoamingMode(I)I

    move-result v3

    .line 6474
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6475
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6476
    goto/16 :goto_168a

    .line 6460
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_ae0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6462
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6463
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6464
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(IZ)V

    .line 6465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6466
    goto/16 :goto_168a

    .line 6450
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_af3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6451
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6452
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataRoamingEnabled(I)Z

    move-result v3

    .line 6453
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6454
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6455
    goto/16 :goto_168a

    .line 6440
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b06
    sget-object v2, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6441
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6442
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimSlotMapping(Ljava/util/List;)Z

    move-result v3

    .line 6443
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6444
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6445
    goto/16 :goto_168a

    .line 6430
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    .end local v3    # "_result":Z
    :pswitch_b1b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 6431
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6432
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchSlots([I)Z

    move-result v3

    .line 6433
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6434
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6435
    goto/16 :goto_168a

    .line 6420
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":Z
    :pswitch_b2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6421
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6422
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object v3

    .line 6423
    .local v3, "_result":[Landroid/telephony/UiccSlotInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6424
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6425
    goto/16 :goto_168a

    .line 6410
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/telephony/UiccSlotInfo;
    :pswitch_b41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6411
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6412
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 6413
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccCardInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6414
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6415
    goto/16 :goto_168a

    .line 6398
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccCardInfo;>;"
    :pswitch_b54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6400
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6401
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6402
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCardIdForDefaultEuicc(ILjava/lang/String;)I

    move-result v4

    .line 6403
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6404
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6405
    goto/16 :goto_168a

    .line 6388
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_b6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6389
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6390
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v3

    .line 6391
    .local v3, "_result":Landroid/telephony/SignalStrength;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6392
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6393
    goto/16 :goto_168a

    .line 6378
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/SignalStrength;
    :pswitch_b7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6379
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6380
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyCallbackMode(I)Z

    move-result v3

    .line 6381
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6382
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6383
    goto/16 :goto_168a

    .line 6373
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b91
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6369
    :pswitch_b96
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6365
    :pswitch_b9b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6355
    :pswitch_ba0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6357
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6358
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6359
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlot(II)V

    .line 6360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6361
    goto/16 :goto_168a

    .line 6350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_bb3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6346
    :pswitch_bb8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6336
    :pswitch_bbd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6338
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 6339
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6340
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6342
    goto/16 :goto_168a

    .line 6331
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_bd4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6327
    :pswitch_bd9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6319
    :pswitch_bde
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6320
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6321
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionResetAll(I)V

    .line 6322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6323
    goto/16 :goto_168a

    .line 6308
    .end local v2    # "_arg0":I
    :pswitch_bed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6310
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6311
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6312
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionReportDefaultNetworkStatus(IZ)V

    .line 6313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6314
    goto/16 :goto_168a

    .line 6297
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_c00
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6299
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6300
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6301
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetRadioEnabled(IZ)V

    .line 6302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6303
    goto/16 :goto_168a

    .line 6292
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_c13
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6283
    :pswitch_c18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6284
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6285
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object v3

    .line 6286
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6287
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6288
    goto/16 :goto_168a

    .line 6273
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6274
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6275
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierId(I)I

    move-result v3

    .line 6276
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6278
    goto/16 :goto_168a

    .line 6263
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_c3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6264
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6265
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object v3

    .line 6266
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6268
    goto/16 :goto_168a

    .line 6253
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6254
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6255
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierId(I)I

    move-result v3

    .line 6256
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6258
    goto/16 :goto_168a

    .line 6245
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_c64
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v2

    .line 6246
    .local v2, "_result":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6247
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6248
    goto/16 :goto_168a

    .line 6236
    .end local v2    # "_result":Landroid/telephony/CarrierRestrictionRules;
    :pswitch_c70
    sget-object v2, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierRestrictionRules;

    .line 6237
    .local v2, "_arg0":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6238
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v3

    .line 6239
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6241
    goto/16 :goto_168a

    .line 6228
    .end local v2    # "_arg0":Landroid/telephony/CarrierRestrictionRules;
    .end local v3    # "_result":I
    :pswitch_c87
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v2

    .line 6229
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6230
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6231
    goto/16 :goto_168a

    .line 6219
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :pswitch_c93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6220
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6221
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v3

    .line 6222
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6224
    goto/16 :goto_168a

    .line 6209
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_ca6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6210
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6211
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEsn(I)Ljava/lang/String;

    move-result-object v3

    .line 6212
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6214
    goto/16 :goto_168a

    .line 6197
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_cb9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6199
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6200
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6201
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v4

    .line 6202
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6203
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6204
    goto/16 :goto_168a

    .line 6189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_cd0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v2

    .line 6190
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6192
    goto/16 :goto_168a

    .line 6180
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_cdc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6181
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6182
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object v3

    .line 6183
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6185
    goto/16 :goto_168a

    .line 6175
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_cef
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6166
    :pswitch_cf4
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 6167
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6168
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    .line 6169
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6171
    goto/16 :goto_168a

    .line 6161
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_result":Z
    :pswitch_d0b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6152
    :pswitch_d10
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 6153
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6154
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v3

    .line 6155
    .local v3, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6156
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6157
    goto/16 :goto_168a

    .line 6147
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_result":Landroid/net/Uri;
    :pswitch_d27
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getServiceStateForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6140
    :pswitch_d2c
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 6141
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6142
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 6143
    goto/16 :goto_168a

    .line 6130
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_d3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6131
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6132
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 6133
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6135
    goto/16 :goto_168a

    .line 6119
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6121
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6122
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6123
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(ILjava/lang/String;)V

    .line 6124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6125
    goto/16 :goto_168a

    .line 6109
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6110
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6111
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 6112
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6113
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6114
    goto/16 :goto_168a

    .line 6104
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_d75
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6100
    :pswitch_d7a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6091
    :pswitch_d7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6092
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6093
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getManufacturerCodeForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 6094
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6095
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6096
    goto/16 :goto_168a

    .line 6086
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d92
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMeidForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6077
    :pswitch_d97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6078
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6079
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 6080
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6081
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6082
    goto/16 :goto_168a

    .line 6065
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_daa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6067
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6068
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6069
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getPrimaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6070
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6071
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6072
    goto/16 :goto_168a

    .line 6060
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_dc1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6049
    :pswitch_dc6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6051
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6052
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6053
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6054
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6055
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6056
    goto/16 :goto_168a

    .line 6039
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_ddd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6040
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6041
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6042
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6043
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6044
    goto/16 :goto_168a

    .line 6029
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_df0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6030
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6031
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegTechnologyForMmTel(I)I

    move-result v3

    .line 6032
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6033
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6034
    goto/16 :goto_168a

    .line 6019
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_e03
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6020
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6021
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable(I)Z

    move-result v3

    .line 6022
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6023
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6024
    goto/16 :goto_168a

    .line 6009
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6010
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6011
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable(I)Z

    move-result v3

    .line 6012
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6013
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6014
    goto/16 :goto_168a

    .line 5999
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6000
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6001
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered(I)Z

    move-result v3

    .line 6002
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6003
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6004
    goto/16 :goto_168a

    .line 5991
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v2

    .line 5992
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5993
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5994
    goto/16 :goto_168a

    .line 5982
    .end local v2    # "_result":Z
    :pswitch_e48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5983
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5984
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRttSupported(I)Z

    move-result v3

    .line 5985
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5986
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5987
    goto/16 :goto_168a

    .line 5974
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e5b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v2

    .line 5975
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5976
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5977
    goto/16 :goto_168a

    .line 5970
    .end local v2    # "_result":Z
    :pswitch_e67
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5966
    :pswitch_e6c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5955
    :pswitch_e71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5957
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5958
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5959
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 5960
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5961
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5962
    goto/16 :goto_168a

    .line 5946
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_e88
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5947
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5948
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 5949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5950
    goto/16 :goto_168a

    .line 5941
    .end local v2    # "_arg0":Z
    :pswitch_e97
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5930
    :pswitch_e9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5932
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5933
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5934
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v4

    .line 5935
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5936
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5937
    goto/16 :goto_168a

    .line 5923
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_eb3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 5924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5925
    goto/16 :goto_168a

    .line 5916
    :pswitch_ebb
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v2

    .line 5917
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5918
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5919
    goto/16 :goto_168a

    .line 5899
    .end local v2    # "_result":Z
    :pswitch_ec7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 5901
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5902
    .local v3, "_arg1_length":I
    if-gez v3, :cond_ed3

    .line 5903
    const/4 v4, 0x0

    .local v4, "_arg1":[B
    goto :goto_ed5

    .line 5905
    .end local v4    # "_arg1":[B
    :cond_ed3
    new-array v4, v3, [B

    .line 5907
    .restart local v4    # "_arg1":[B
    :goto_ed5
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5908
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v5

    .line 5909
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5910
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5911
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5912
    goto/16 :goto_168a

    .line 5894
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[B
    .end local v5    # "_result":I
    :pswitch_ee7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5883
    :pswitch_eec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5885
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5886
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5887
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v4

    .line 5888
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5889
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5890
    goto/16 :goto_168a

    .line 5871
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_f03
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5873
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5874
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5875
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5876
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5877
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5878
    goto/16 :goto_168a

    .line 5866
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_f1a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5862
    :pswitch_f1f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLine1AlphaTagForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5858
    :pswitch_f24
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLine1NumberForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5854
    :pswitch_f29
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setLine1NumberForDisplayForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5843
    :pswitch_f2e
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 5845
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5846
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5847
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 5848
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5849
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5850
    goto/16 :goto_168a

    .line 5833
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5834
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5835
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v3

    .line 5836
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5837
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5838
    goto/16 :goto_168a

    .line 5821
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_f5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5823
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5824
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5825
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result v4

    .line 5826
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5827
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5828
    goto/16 :goto_168a

    .line 5809
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_f73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5811
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5812
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5813
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatusForUid(II)I

    move-result v4

    .line 5814
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5815
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5816
    goto/16 :goto_168a

    .line 5799
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_f8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5800
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5801
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    move-result v3

    .line 5802
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5803
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5804
    goto/16 :goto_168a

    .line 5794
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_f9d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5785
    :pswitch_fa2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5786
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5787
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v3

    .line 5788
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5789
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5790
    goto/16 :goto_168a

    .line 5775
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_fb5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5776
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5777
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v3

    .line 5778
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5779
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5780
    goto/16 :goto_168a

    .line 5766
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_fc8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5767
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5768
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 5769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5770
    goto/16 :goto_168a

    .line 5756
    .end local v2    # "_arg0":Z
    :pswitch_fd7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5757
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5758
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isManualNetworkSelectionAllowed(I)Z

    move-result v3

    .line 5759
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5760
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5761
    goto/16 :goto_168a

    .line 5744
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_fea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5746
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5747
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5748
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForReason(II)Z

    move-result v4

    .line 5749
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5750
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5751
    goto/16 :goto_168a

    .line 5739
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1001
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5730
    :pswitch_1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5731
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5732
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabled(I)Z

    move-result v3

    .line 5733
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5734
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5735
    goto/16 :goto_168a

    .line 5720
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5721
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5722
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isUserDataEnabled(I)Z

    move-result v3

    .line 5723
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5724
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5725
    goto/16 :goto_168a

    .line 5710
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_102c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5711
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5712
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v3

    .line 5713
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5714
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5715
    goto/16 :goto_168a

    .line 5705
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_103f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setAllowedNetworkTypesForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5694
    :pswitch_1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5696
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5697
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5698
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v4

    .line 5699
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5700
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 5701
    goto/16 :goto_168a

    .line 5689
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_105b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setNetworkSelectionModeManual$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5679
    :pswitch_1060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5681
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5682
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5683
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->stopNetworkScan(II)V

    .line 5684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5685
    goto/16 :goto_168a

    .line 5674
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1073
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5670
    :pswitch_1078
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCellNetworkScanResults$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5662
    :pswitch_107d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5663
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5664
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 5665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5666
    goto/16 :goto_168a

    .line 5651
    .end local v2    # "_arg0":I
    :pswitch_108c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5653
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 5654
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5655
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 5656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5657
    goto/16 :goto_168a

    .line 5646
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_10a3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getBoundImsServicePackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5637
    :pswitch_10a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5638
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5639
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearCarrierImsServiceOverride(I)Z

    move-result v3

    .line 5640
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5641
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5642
    goto/16 :goto_168a

    .line 5632
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_10bb
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5621
    :pswitch_10c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5623
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5624
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5625
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v4

    .line 5626
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5627
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5628
    goto/16 :goto_168a

    .line 5609
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :pswitch_10d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5611
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5612
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5613
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v4

    .line 5614
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5615
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5616
    goto/16 :goto_168a

    .line 5600
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :pswitch_10ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v2

    .line 5601
    .local v2, "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5602
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 5603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5604
    goto/16 :goto_168a

    .line 5589
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_1101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5591
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v3

    .line 5592
    .local v3, "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5593
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 5594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5595
    goto/16 :goto_168a

    .line 5580
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_1118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5581
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5582
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resetIms(I)V

    .line 5583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5584
    goto/16 :goto_168a

    .line 5571
    .end local v2    # "_arg0":I
    :pswitch_1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5572
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5573
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableIms(I)V

    .line 5574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5575
    goto/16 :goto_168a

    .line 5562
    .end local v2    # "_arg0":I
    :pswitch_1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5563
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5564
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableIms(I)V

    .line 5565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5566
    goto/16 :goto_168a

    .line 5552
    .end local v2    # "_arg0":I
    :pswitch_1145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5553
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5554
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTetheringApnRequiredForSubscriber(I)Z

    move-result v3

    .line 5555
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5556
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5557
    goto/16 :goto_168a

    .line 5542
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5543
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5544
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesBitmask(I)I

    move-result v3

    .line 5545
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5546
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5547
    goto/16 :goto_168a

    .line 5532
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_116b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5533
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5534
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->rebootModem(I)Z

    move-result v3

    .line 5535
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5536
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5537
    goto/16 :goto_168a

    .line 5522
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_117e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5523
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5524
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resetModemConfig(I)Z

    move-result v3

    .line 5525
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5526
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5527
    goto/16 :goto_168a

    .line 5512
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1191
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 5513
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5514
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v3

    .line 5515
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5516
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5517
    goto/16 :goto_168a

    .line 5500
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":Z
    :pswitch_11a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5502
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5503
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5504
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v4

    .line 5505
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5506
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5507
    goto/16 :goto_168a

    .line 5490
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_11bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5491
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5492
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v3

    .line 5493
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5494
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5495
    goto/16 :goto_168a

    .line 5478
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_11ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5480
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5481
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5482
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5483
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5484
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5485
    goto/16 :goto_168a

    .line 5473
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_11e5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5469
    :pswitch_11ea
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5465
    :pswitch_11ef
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5461
    :pswitch_11f4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5457
    :pswitch_11f9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5448
    :pswitch_11fe
    sget-object v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    .line 5449
    .local v2, "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5450
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v3

    .line 5451
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5453
    goto/16 :goto_168a

    .line 5438
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .end local v3    # "_result":Z
    :pswitch_1215
    sget-object v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    .line 5439
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5440
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v3

    .line 5441
    .local v3, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5442
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5443
    goto/16 :goto_168a

    .line 5427
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .end local v3    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :pswitch_122c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5429
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5430
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5431
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(II)V

    .line 5432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5433
    goto/16 :goto_168a

    .line 5422
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_123f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5418
    :pswitch_1244
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5407
    :pswitch_1249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5409
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5410
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5411
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5412
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5413
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5414
    goto/16 :goto_168a

    .line 5402
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_1260
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLteOnCdmaModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5391
    :pswitch_1265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5393
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5394
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5395
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 5396
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5397
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5398
    goto/16 :goto_168a

    .line 5381
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_127c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5382
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5383
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotIndex(I)Z

    move-result v3

    .line 5384
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5385
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5386
    goto/16 :goto_168a

    .line 5373
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_128f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v2

    .line 5374
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5375
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5376
    goto/16 :goto_168a

    .line 5369
    .end local v2    # "_result":Z
    :pswitch_129b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVoiceNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5365
    :pswitch_12a0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDataNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5354
    :pswitch_12a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5356
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5357
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5358
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 5359
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5360
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5361
    goto/16 :goto_168a

    .line 5349
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_12bc
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5339
    :pswitch_12c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5341
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5342
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5343
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 5344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5345
    goto/16 :goto_168a

    .line 5334
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_12d4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5325
    :pswitch_12d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5326
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5327
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v3

    .line 5328
    .local v3, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5329
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5330
    goto/16 :goto_168a

    .line 5313
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :pswitch_12ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5315
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5316
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5317
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v4

    .line 5318
    .local v4, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5319
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5320
    goto/16 :goto_168a

    .line 5303
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :pswitch_1303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5305
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5306
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5307
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V

    .line 5308
    goto/16 :goto_168a

    .line 5298
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_1313
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enableVisualVoicemailSmsFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5294
    :pswitch_1318
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVisualVoicemailPackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5283
    :pswitch_131d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5285
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5286
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5287
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 5288
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5289
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5290
    goto/16 :goto_168a

    .line 5273
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_1334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5274
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5275
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result v3

    .line 5276
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5278
    goto/16 :goto_168a

    .line 5268
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1347
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVoiceMessageCountForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5257
    :pswitch_134c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5259
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5260
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5261
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivationState(ILjava/lang/String;)I

    move-result v4

    .line 5262
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5263
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5264
    goto/16 :goto_168a

    .line 5245
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5247
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5248
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5249
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceActivationState(ILjava/lang/String;)I

    move-result v4

    .line 5250
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5251
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5252
    goto/16 :goto_168a

    .line 5234
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_137a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5236
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5237
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5238
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataActivationState(II)V

    .line 5239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5240
    goto/16 :goto_168a

    .line 5223
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_138d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5225
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5226
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5227
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceActivationState(II)V

    .line 5228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5229
    goto/16 :goto_168a

    .line 5218
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_13a0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceMailNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5211
    :pswitch_13a5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v2

    .line 5212
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5213
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5214
    goto/16 :goto_168a

    .line 5207
    .end local v2    # "_result":Z
    :pswitch_13b1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriTextForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5196
    :pswitch_13b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5198
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5199
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5200
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5201
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5203
    goto/16 :goto_168a

    .line 5191
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_13cd
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriIconModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5180
    :pswitch_13d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5182
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5183
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5184
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 5185
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5186
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5187
    goto/16 :goto_168a

    .line 5175
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_13e9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriIconIndexForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5164
    :pswitch_13ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5166
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5167
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5168
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 5169
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5170
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5171
    goto/16 :goto_168a

    .line 5154
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5155
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5156
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSlot(I)I

    move-result v3

    .line 5157
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5159
    goto/16 :goto_168a

    .line 5146
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1418
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v2

    .line 5147
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5148
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5149
    goto/16 :goto_168a

    .line 5137
    .end local v2    # "_result":I
    :pswitch_1424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5138
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5139
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateForSubId(I)I

    move-result v3

    .line 5140
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5142
    goto/16 :goto_168a

    .line 5129
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1437
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v2

    .line 5130
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5132
    goto/16 :goto_168a

    .line 5120
    .end local v2    # "_result":I
    :pswitch_1443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5121
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5122
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityForSubId(I)I

    move-result v3

    .line 5123
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5125
    goto/16 :goto_168a

    .line 5112
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1456
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v2

    .line 5113
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5115
    goto/16 :goto_168a

    .line 5108
    .end local v2    # "_result":I
    :pswitch_1462
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallStateForSubscription$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5101
    :pswitch_1467
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v2

    .line 5102
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5104
    goto/16 :goto_168a

    .line 5090
    .end local v2    # "_result":I
    :pswitch_1473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5092
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5093
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5094
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5095
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5096
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5097
    goto/16 :goto_168a

    .line 5080
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :pswitch_148a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5081
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5082
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 5083
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5084
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5085
    goto/16 :goto_168a

    .line 5068
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_149d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5070
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5071
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5072
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v4

    .line 5073
    .local v4, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5074
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5075
    goto/16 :goto_168a

    .line 5058
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telephony/CellIdentity;
    :pswitch_14b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5059
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5060
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible(I)Z

    move-result v3

    .line 5061
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5062
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5063
    goto/16 :goto_168a

    .line 5048
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_14c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5049
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5050
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result v3

    .line 5051
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5052
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5053
    goto/16 :goto_168a

    .line 5038
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_14da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5039
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5040
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result v3

    .line 5041
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5042
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5043
    goto/16 :goto_168a

    .line 5031
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_14ed
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 5032
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5033
    goto/16 :goto_168a

    .line 5025
    :pswitch_14f5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 5026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5027
    goto/16 :goto_168a

    .line 5017
    :pswitch_14fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5018
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5019
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationWithPackageName(Ljava/lang/String;)V

    .line 5020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5021
    goto/16 :goto_168a

    .line 5010
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_150c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 5011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5012
    goto/16 :goto_168a

    .line 5006
    :pswitch_1514
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerOffReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4995
    :pswitch_1519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4997
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4998
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4999
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->clearRadioPowerOffForReason(II)Z

    move-result v4

    .line 5000
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5001
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5002
    goto/16 :goto_168a

    .line 4983
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4985
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4986
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4987
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestRadioPowerOffForReason(II)Z

    move-result v4

    .line 4988
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4989
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4990
    goto/16 :goto_168a

    .line 4973
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1547
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4974
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4975
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v3

    .line 4976
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4977
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4978
    goto/16 :goto_168a

    .line 4961
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_155a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4963
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4964
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4965
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v4

    .line 4966
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4967
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4968
    goto/16 :goto_168a

    .line 4951
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_1571
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4952
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4953
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v3

    .line 4954
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4955
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4956
    goto/16 :goto_168a

    .line 4942
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_1584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4943
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4944
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 4945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4946
    goto/16 :goto_168a

    .line 4935
    .end local v2    # "_arg0":I
    :pswitch_1593
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 4936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4937
    goto/16 :goto_168a

    .line 4924
    :pswitch_159b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4926
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4927
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4928
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 4929
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4930
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4931
    goto/16 :goto_168a

    .line 4919
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_15b2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$handleUssdRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4910
    :pswitch_15b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4911
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4912
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    .line 4913
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4914
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4915
    goto/16 :goto_168a

    .line 4905
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_15ca
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$supplyPukReportResultForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4894
    :pswitch_15cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4896
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4897
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4898
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v4

    .line 4899
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4900
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4901
    goto/16 :goto_168a

    .line 4889
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[I
    :pswitch_15e6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$supplyPukForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4878
    :pswitch_15eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4880
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4881
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4882
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 4883
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4884
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4885
    goto/16 :goto_168a

    .line 4868
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4869
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4870
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallComposerStatus(I)I

    move-result v3

    .line 4871
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4872
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4873
    goto/16 :goto_168a

    .line 4857
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4859
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4860
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4861
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallComposerStatus(II)V

    .line 4862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4863
    goto :goto_168a

    .line 4852
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1627
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRadioOnForSubscriberWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4841
    :pswitch_162c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4843
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4844
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4845
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 4846
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4847
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4848
    goto :goto_168a

    .line 4829
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1642
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4831
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4832
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4833
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4834
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4835
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4836
    goto :goto_168a

    .line 4819
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1658
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4820
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4821
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v3

    .line 4822
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4823
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4824
    goto :goto_168a

    .line 4808
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_166a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4810
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4811
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4812
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 4813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4814
    goto :goto_168a

    .line 4799
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_167c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4800
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4801
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 4802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4803
    nop

    .line 8010
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_168a
    return v1

    nop

    :pswitch_data_168c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1692
    .packed-switch 0x1
        :pswitch_167c
        :pswitch_166a
        :pswitch_1658
        :pswitch_1642
        :pswitch_162c
        :pswitch_1627
        :pswitch_1615
        :pswitch_1602
        :pswitch_15eb
        :pswitch_15e6
        :pswitch_15cf
        :pswitch_15ca
        :pswitch_15b7
        :pswitch_15b2
        :pswitch_159b
        :pswitch_1593
        :pswitch_1584
        :pswitch_1571
        :pswitch_155a
        :pswitch_1547
        :pswitch_1530
        :pswitch_1519
        :pswitch_1514
        :pswitch_150c
        :pswitch_14fd
        :pswitch_14f5
        :pswitch_14ed
        :pswitch_14da
        :pswitch_14c7
        :pswitch_14b4
        :pswitch_149d
        :pswitch_148a
        :pswitch_1473
        :pswitch_1467
        :pswitch_1462
        :pswitch_1456
        :pswitch_1443
        :pswitch_1437
        :pswitch_1424
        :pswitch_1418
        :pswitch_1405
        :pswitch_13ee
        :pswitch_13e9
        :pswitch_13d2
        :pswitch_13cd
        :pswitch_13b6
        :pswitch_13b1
        :pswitch_13a5
        :pswitch_13a0
        :pswitch_138d
        :pswitch_137a
        :pswitch_1363
        :pswitch_134c
        :pswitch_1347
        :pswitch_1334
        :pswitch_131d
        :pswitch_1318
        :pswitch_1313
        :pswitch_1303
        :pswitch_12ec
        :pswitch_12d9
        :pswitch_12d4
        :pswitch_12c1
        :pswitch_12bc
        :pswitch_12a5
        :pswitch_12a0
        :pswitch_129b
        :pswitch_128f
        :pswitch_127c
        :pswitch_1265
        :pswitch_1260
        :pswitch_1249
        :pswitch_1244
        :pswitch_123f
        :pswitch_122c
        :pswitch_1215
        :pswitch_11fe
        :pswitch_11f9
        :pswitch_11f4
        :pswitch_11ef
        :pswitch_11ea
        :pswitch_11e5
        :pswitch_11ce
        :pswitch_11bb
        :pswitch_11a4
        :pswitch_1191
        :pswitch_117e
        :pswitch_116b
        :pswitch_1158
        :pswitch_1145
        :pswitch_1136
        :pswitch_1127
        :pswitch_1118
        :pswitch_1101
        :pswitch_10ee
        :pswitch_10d7
        :pswitch_10c0
        :pswitch_10bb
        :pswitch_10a8
        :pswitch_10a3
        :pswitch_108c
        :pswitch_107d
        :pswitch_1078
        :pswitch_1073
        :pswitch_1060
        :pswitch_105b
        :pswitch_1044
        :pswitch_103f
        :pswitch_102c
        :pswitch_1019
        :pswitch_1006
        :pswitch_1001
        :pswitch_fea
        :pswitch_fd7
        :pswitch_fc8
        :pswitch_fb5
        :pswitch_fa2
        :pswitch_f9d
        :pswitch_f8a
        :pswitch_f73
        :pswitch_f5c
        :pswitch_f49
        :pswitch_f2e
        :pswitch_f29
        :pswitch_f24
        :pswitch_f1f
        :pswitch_f1a
        :pswitch_f03
        :pswitch_eec
        :pswitch_ee7
        :pswitch_ec7
        :pswitch_ebb
        :pswitch_eb3
        :pswitch_e9c
        :pswitch_e97
        :pswitch_e88
        :pswitch_e71
        :pswitch_e6c
        :pswitch_e67
        :pswitch_e5b
        :pswitch_e48
        :pswitch_e3c
        :pswitch_e29
        :pswitch_e16
        :pswitch_e03
        :pswitch_df0
        :pswitch_ddd
        :pswitch_dc6
        :pswitch_dc1
        :pswitch_daa
        :pswitch_d97
        :pswitch_d92
        :pswitch_d7f
        :pswitch_d7a
        :pswitch_d75
        :pswitch_d62
        :pswitch_d4f
        :pswitch_d3c
        :pswitch_d2c
        :pswitch_d27
        :pswitch_d10
        :pswitch_d0b
        :pswitch_cf4
        :pswitch_cef
        :pswitch_cdc
        :pswitch_cd0
        :pswitch_cb9
        :pswitch_ca6
        :pswitch_c93
        :pswitch_c87
        :pswitch_c70
        :pswitch_c64
        :pswitch_c51
        :pswitch_c3e
        :pswitch_c2b
        :pswitch_c18
        :pswitch_c13
        :pswitch_c00
        :pswitch_bed
        :pswitch_bde
        :pswitch_bd9
        :pswitch_bd4
        :pswitch_bbd
        :pswitch_bb8
        :pswitch_bb3
        :pswitch_ba0
        :pswitch_b9b
        :pswitch_b96
        :pswitch_b91
        :pswitch_b7e
        :pswitch_b6b
        :pswitch_b54
        :pswitch_b41
        :pswitch_b2e
        :pswitch_b1b
        :pswitch_b06
        :pswitch_af3
        :pswitch_ae0
        :pswitch_acd
        :pswitch_ab6
        :pswitch_aa3
        :pswitch_a8c
        :pswitch_a87
        :pswitch_a82
        :pswitch_a6f
        :pswitch_a60
        :pswitch_a5b
        :pswitch_a48
        :pswitch_a3c
        :pswitch_a37
        :pswitch_a20
        :pswitch_a09
        :pswitch_9f2
        :pswitch_9db
        :pswitch_9c4
        :pswitch_9ad
        :pswitch_9a8
        :pswitch_9a3
        :pswitch_99e
        :pswitch_98b
        :pswitch_978
        :pswitch_965
        :pswitch_952
        :pswitch_93f
        :pswitch_92c
        :pswitch_919
        :pswitch_906
        :pswitch_8f3
        :pswitch_8e0
        :pswitch_8db
        :pswitch_8c8
        :pswitch_8b5
        :pswitch_8a2
        :pswitch_88f
        :pswitch_87c
        :pswitch_869
        :pswitch_852
        :pswitch_83b
        :pswitch_828
        :pswitch_811
        :pswitch_7fa
        :pswitch_7e3
        :pswitch_7cc
        :pswitch_7c7
        :pswitch_7c2
        :pswitch_7bd
        :pswitch_7b8
        :pswitch_7a1
        :pswitch_78a
        :pswitch_785
        :pswitch_780
        :pswitch_778
        :pswitch_761
        :pswitch_755
        :pswitch_742
        :pswitch_73a
        :pswitch_727
        :pswitch_71f
        :pswitch_708
        :pswitch_6f9
        :pswitch_6e2
        :pswitch_6d3
        :pswitch_6ce
        :pswitch_6bb
        :pswitch_6af
        :pswitch_69c
        :pswitch_690
        :pswitch_679
        :pswitch_674
        :pswitch_66f
        :pswitch_658
        :pswitch_653
        :pswitch_640
        :pswitch_63b
        :pswitch_636
        :pswitch_631
        :pswitch_61e
        :pswitch_60b
        :pswitch_606
        :pswitch_5ef
        :pswitch_5e3
        :pswitch_5de
        :pswitch_5cb
        :pswitch_5c6
        :pswitch_5c1
        :pswitch_5bc
        :pswitch_5b7
        :pswitch_5a4
        :pswitch_598
        :pswitch_593
        :pswitch_57c
        :pswitch_569
        :pswitch_552
        :pswitch_53f
        :pswitch_52c
        :pswitch_527
        :pswitch_522
        :pswitch_50b
        :pswitch_4f8
        :pswitch_4e1
        :pswitch_4ce
        :pswitch_4b7
        :pswitch_4a4
        :pswitch_48d
        :pswitch_476
        :pswitch_467
        :pswitch_458
        :pswitch_44c
        :pswitch_43d
        :pswitch_431
        :pswitch_41a
        :pswitch_407
        :pswitch_3f8
        :pswitch_3e9
        :pswitch_3d6
        :pswitch_3bf
        :pswitch_3ac
        :pswitch_3a0
        :pswitch_389
        :pswitch_376
        :pswitch_363
        :pswitch_357
        :pswitch_348
        :pswitch_331
        :pswitch_31a
        :pswitch_307
        :pswitch_2f4
        :pswitch_2e1
        :pswitch_2ce
        :pswitch_2b7
        :pswitch_2b2
        :pswitch_2ad
        :pswitch_2a1
        :pswitch_295
        :pswitch_282
        :pswitch_26b
        :pswitch_266
        :pswitch_261
        :pswitch_24e
        :pswitch_249
        :pswitch_236
        :pswitch_22a
        :pswitch_225
        :pswitch_220
        :pswitch_21b
        :pswitch_208
        :pswitch_1f5
        :pswitch_1e2
        :pswitch_1cb
        :pswitch_1b8
        :pswitch_1b3
        :pswitch_1a4
        :pswitch_198
        :pswitch_185
        :pswitch_180
        :pswitch_174
        :pswitch_15d
        :pswitch_158
        :pswitch_141
        :pswitch_12a
        :pswitch_113
        :pswitch_fc
        :pswitch_f7
        :pswitch_f2
        :pswitch_ed
        :pswitch_e8
        :pswitch_cd
        :pswitch_b6
        :pswitch_9f
        :pswitch_9a
        :pswitch_95
        :pswitch_90
        :pswitch_8b
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_5f
        :pswitch_4c
        :pswitch_39
        :pswitch_34
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method
