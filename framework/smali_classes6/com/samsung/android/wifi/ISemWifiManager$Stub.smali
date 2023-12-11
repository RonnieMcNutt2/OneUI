.class public abstract Lcom/samsung/android/wifi/ISemWifiManager$Stub;
.super Landroid/os/Binder;
.source "ISemWifiManager.java"

# interfaces
.implements Lcom/samsung/android/wifi/ISemWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ISemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addOrUpdateNetwork:I = 0xb9

.field static final TRANSACTION_addOrUpdateWifiControlHistory:I = 0xb7

.field static final TRANSACTION_allowAutojoinPasspoint:I = 0xbe

.field static final TRANSACTION_blockFccChannelBackoff:I = 0x4

.field static final TRANSACTION_canAutoHotspotBeEnabled:I = 0x90

.field static final TRANSACTION_canSmartMHSLocked:I = 0x44

.field static final TRANSACTION_checkAppForWiFiOffloading:I = 0xfe

.field static final TRANSACTION_clearAutoHotspotLists:I = 0x2d

.field static final TRANSACTION_connectToMcfMHS:I = 0x97

.field static final TRANSACTION_connectToSmartD2DClient:I = 0x55

.field static final TRANSACTION_connectToSmartMHS:I = 0x4a

.field static final TRANSACTION_disableRandomMac:I = 0xdb

.field static final TRANSACTION_disconnectApBlockAutojoin:I = 0xef

.field static final TRANSACTION_enableHotspotTsfInfo:I = 0x8d

.field static final TRANSACTION_externalTwtInterface:I = 0x100

.field static final TRANSACTION_factoryReset:I = 0xbb

.field static final TRANSACTION_getAdvancedAutohotspotConnectSettings:I = 0x27

.field static final TRANSACTION_getAdvancedAutohotspotLCDSettings:I = 0x29

.field static final TRANSACTION_getAntInfo:I = 0xb

.field static final TRANSACTION_getAutoShareDump:I = 0xce

.field static final TRANSACTION_getAutoWifiDump:I = 0xd2

.field static final TRANSACTION_getChannelUtilization:I = 0x2f

.field static final TRANSACTION_getConfiguredNetworkLocations:I = 0xd3

.field static final TRANSACTION_getConfiguredNetworks:I = 0xbd

.field static final TRANSACTION_getConnectivityLog:I = 0xc5

.field static final TRANSACTION_getCountryCode:I = 0x3a

.field static final TRANSACTION_getCountryRev:I = 0x39

.field static final TRANSACTION_getCtlFeatureState:I = 0x102

.field static final TRANSACTION_getCurrentStateAndEnterTime:I = 0x1e

.field static final TRANSACTION_getCurrentStatusMode:I = 0xdf

.field static final TRANSACTION_getCurrentWifiRouterInfo:I = 0x19

.field static final TRANSACTION_getDailyUsageInfo:I = 0x20

.field static final TRANSACTION_getDataConsumedValues:I = 0x112

.field static final TRANSACTION_getDcxoCalibrationData:I = 0x18

.field static final TRANSACTION_getDiagnosisResults:I = 0xc2

.field static final TRANSACTION_getEasySetupScanSettings:I = 0xda

.field static final TRANSACTION_getFactoryMacAddress:I = 0xa

.field static final TRANSACTION_getFrameburstInfo:I = 0xc

.field static final TRANSACTION_getHotspotAntMode:I = 0x5f

.field static final TRANSACTION_getIWCQTables:I = 0xeb

.field static final TRANSACTION_getIndoorStatus:I = 0x76

.field static final TRANSACTION_getIssueDetectorDump:I = 0xbf

.field static final TRANSACTION_getMHSClientTrafficDetails:I = 0x110

.field static final TRANSACTION_getMHSConfig:I = 0x62

.field static final TRANSACTION_getMaxTdlsSession:I = 0x10e

.field static final TRANSACTION_getMcfConnectedStatus:I = 0x98

.field static final TRANSACTION_getMcfConnectedStatusFromScanResult:I = 0x99

.field static final TRANSACTION_getMcfScanDetail:I = 0x94

.field static final TRANSACTION_getMonthlyDataUsage:I = 0xa5

.field static final TRANSACTION_getNRTTrafficbandwidth:I = 0x111

.field static final TRANSACTION_getNetworkLastUpdatedTimeMap:I = 0x1d

.field static final TRANSACTION_getNetworkUsageInfo:I = 0x1f

.field static final TRANSACTION_getNumOfTdlsSession:I = 0x10f

.field static final TRANSACTION_getNumOfWifiAnt:I = 0xfc

.field static final TRANSACTION_getOptimizerForceControlMode:I = 0xf1

.field static final TRANSACTION_getOptimizerState:I = 0xf2

.field static final TRANSACTION_getProfileShareDump:I = 0xcd

.field static final TRANSACTION_getProvisionSuccess:I = 0x71

.field static final TRANSACTION_getPsmInfo:I = 0xd

.field static final TRANSACTION_getQoSScores:I = 0xc6

.field static final TRANSACTION_getRVFModeStatus:I = 0x77

.field static final TRANSACTION_getRoamBand:I = 0x37

.field static final TRANSACTION_getRoamDelta:I = 0x33

.field static final TRANSACTION_getRoamScanPeriod:I = 0x35

.field static final TRANSACTION_getRoamTrigger:I = 0x31

.field static final TRANSACTION_getRssi:I = 0xfa

.field static final TRANSACTION_getServiceDetectionResult:I = 0xf3

.field static final TRANSACTION_getSilentRoamingDump:I = 0xc4

.field static final TRANSACTION_getSmartApConnectedStatus:I = 0x4c

.field static final TRANSACTION_getSmartApConnectedStatusFromScanResult:I = 0x51

.field static final TRANSACTION_getSmartD2DClientConnectedStatus:I = 0x56

.field static final TRANSACTION_getSmartMHSLockStatus:I = 0x43

.field static final TRANSACTION_getSoftApBands:I = 0x8f

.field static final TRANSACTION_getSoftApConfiguration:I = 0x5a

.field static final TRANSACTION_getStationInfo:I = 0x5c

.field static final TRANSACTION_getTWTParams:I = 0x101

.field static final TRANSACTION_getTasAverage:I = 0x114

.field static final TRANSACTION_getTcpMonitorAllSocketHistory:I = 0x107

.field static final TRANSACTION_getTcpMonitorDnsHistory:I = 0x108

.field static final TRANSACTION_getTcpMonitorSocketForegroundHistory:I = 0x106

.field static final TRANSACTION_getTopHotspotClientsToday:I = 0xa0

.field static final TRANSACTION_getTopHotspotClientsTodayAsString:I = 0xa1

.field static final TRANSACTION_getTotalAndTop3ClientsDataUsageBetweenGivenDates:I = 0xa4

.field static final TRANSACTION_getValidState:I = 0xe0

.field static final TRANSACTION_getVendorWlanDriverProp:I = 0xf

.field static final TRANSACTION_getWcmEverQualityTested:I = 0xdd

.field static final TRANSACTION_getWifiApBleD2DScanDetail:I = 0x52

.field static final TRANSACTION_getWifiApBleScanDetail:I = 0x47

.field static final TRANSACTION_getWifiApChannel:I = 0x64

.field static final TRANSACTION_getWifiApClientDetails:I = 0x9f

.field static final TRANSACTION_getWifiApConnectedStationCount:I = 0x74

.field static final TRANSACTION_getWifiApDailyDataLimit:I = 0xa3

.field static final TRANSACTION_getWifiApFreq:I = 0x5d

.field static final TRANSACTION_getWifiApGuestPassword:I = 0xac

.field static final TRANSACTION_getWifiApInterfaceName:I = 0x6d

.field static final TRANSACTION_getWifiApIsolate:I = 0x81

.field static final TRANSACTION_getWifiApLOHSState:I = 0x75

.field static final TRANSACTION_getWifiApMacAclMode:I = 0x85

.field static final TRANSACTION_getWifiApMaxClient:I = 0x65

.field static final TRANSACTION_getWifiApMaxClientFromFramework:I = 0x7d

.field static final TRANSACTION_getWifiApStaList:I = 0x68

.field static final TRANSACTION_getWifiApStaListDetail:I = 0x6b

.field static final TRANSACTION_getWifiApState:I = 0x8a

.field static final TRANSACTION_getWifiApTodaysTotalDataUsage:I = 0xa2

.field static final TRANSACTION_getWifiApWarningActivityRunningState:I = 0x2c

.field static final TRANSACTION_getWifiApWpsPbc:I = 0x7f

.field static final TRANSACTION_getWifiCid:I = 0x8

.field static final TRANSACTION_getWifiEnableHistory:I = 0xb8

.field static final TRANSACTION_getWifiFirmwareVersion:I = 0x7

.field static final TRANSACTION_getWifiIconVisibility:I = 0xde

.field static final TRANSACTION_getWifiRouterInfo:I = 0x1a

.field static final TRANSACTION_getWifiRouterInfoBestEffort:I = 0x1b

.field static final TRANSACTION_getWifiRouterInfoPresentable:I = 0x1c

.field static final TRANSACTION_getWifiStaInfo:I = 0xfb

.field static final TRANSACTION_getWifiSupportedFeatureSet:I = 0xe

.field static final TRANSACTION_getWifiUsabilityStatsEntry:I = 0x10a

.field static final TRANSACTION_getWifiVersions:I = 0x9

.field static final TRANSACTION_hasConfiguredNetworkLocations:I = 0xd4

.field static final TRANSACTION_isAvailableAutoWifiScan:I = 0xd1

.field static final TRANSACTION_isAvailableTdls:I = 0x10b

.field static final TRANSACTION_isClientAcceptedWifiProfileSharing:I = 0x46

.field static final TRANSACTION_isGripSensorMonitorEnabled:I = 0x22

.field static final TRANSACTION_isIndividualAppSupported:I = 0x109

.field static final TRANSACTION_isMCFClientAutohotspotSupported:I = 0x93

.field static final TRANSACTION_isNCHOModeEnabled:I = 0x3b

.field static final TRANSACTION_isOverAllMhsDataLimitReached:I = 0xa6

.field static final TRANSACTION_isOverAllMhsDataLimitSet:I = 0xa7

.field static final TRANSACTION_isP2pConnected:I = 0x91

.field static final TRANSACTION_isScanningEnabled:I = 0xd7

.field static final TRANSACTION_isSupportedAutoWifi:I = 0xd0

.field static final TRANSACTION_isSupportedProfileRequest:I = 0xcc

.field static final TRANSACTION_isSupportedQoSProvider:I = 0xcb

.field static final TRANSACTION_isSwitchToMobileDataDefaultOff:I = 0x118

.field static final TRANSACTION_isUploadModeEnabled:I = 0x26

.field static final TRANSACTION_isWesModeEnabled:I = 0x3f

.field static final TRANSACTION_isWiderBandwidthTdlsSupported:I = 0x10c

.field static final TRANSACTION_isWifiApEnabled:I = 0x73

.field static final TRANSACTION_isWifiApEnabledWithDualBand:I = 0x8b

.field static final TRANSACTION_isWifiApGuestClient:I = 0xb1

.field static final TRANSACTION_isWifiApGuestModeEnabled:I = 0xad

.field static final TRANSACTION_isWifiApGuestModeIsolationEnabled:I = 0xaf

.field static final TRANSACTION_isWifiApMacAclEnabled:I = 0x87

.field static final TRANSACTION_isWifiApWpa3Supported:I = 0x57

.field static final TRANSACTION_isWifiDeveloperModeEnabled:I = 0x6

.field static final TRANSACTION_isWifiSharingEnabled:I = 0x72

.field static final TRANSACTION_isWifiSharingLiteSupported:I = 0x6a

.field static final TRANSACTION_isWifiSharingSupported:I = 0x69

.field static final TRANSACTION_linkQosQuery:I = 0x103

.field static final TRANSACTION_manageWifiApMacAclList:I = 0x83

.field static final TRANSACTION_notifyConnect:I = 0x8e

.field static final TRANSACTION_notifyReachabilityLost:I = 0xe1

.field static final TRANSACTION_readWifiApMacAclList:I = 0x84

.field static final TRANSACTION_registerClientDataUsageCallback:I = 0xb4

.field static final TRANSACTION_registerClientListDataUsageCallback:I = 0xb2

.field static final TRANSACTION_registerPasswordCallback:I = 0xc7

.field static final TRANSACTION_registerTasPolicyChangedListener:I = 0x116

.field static final TRANSACTION_registerWifiApDataUsageCallback:I = 0x4f

.field static final TRANSACTION_registerWifiApSmartCallback:I = 0x4d

.field static final TRANSACTION_removeExcludedNetwork:I = 0xe6

.field static final TRANSACTION_removeFactoryMacAddress:I = 0x11

.field static final TRANSACTION_removeNetwork:I = 0xba

.field static final TRANSACTION_removePktlogFilter:I = 0xf8

.field static final TRANSACTION_reportBigData:I = 0xb6

.field static final TRANSACTION_reportHotspotDumpLogs:I = 0x89

.field static final TRANSACTION_reportIssue:I = 0xc0

.field static final TRANSACTION_requestPassword:I = 0xc9

.field static final TRANSACTION_requestStopAutohotspotAdvertisement:I = 0x4b

.field static final TRANSACTION_resetDeveloperOptionsSettings:I = 0xbc

.field static final TRANSACTION_resetSoftAp:I = 0x7b

.field static final TRANSACTION_resetTotalPriorityDataConsumedValues:I = 0x113

.field static final TRANSACTION_restoreIWCSettingsValue:I = 0xea

.field static final TRANSACTION_restoreSemConfigurationsBackupData:I = 0xe8

.field static final TRANSACTION_retrieveSemWifiConfigsBackupData:I = 0xe7

.field static final TRANSACTION_runAutoShareForCurrent:I = 0xcf

.field static final TRANSACTION_runIptablesRulesCommand:I = 0x6e

.field static final TRANSACTION_saveFwDump:I = 0xf9

.field static final TRANSACTION_sendReassociationRequestFrame:I = 0x42

.field static final TRANSACTION_sendVendorSpecificActionFrame:I = 0x41

.field static final TRANSACTION_set5GmmWaveSarBackoffEnabled:I = 0x24

.field static final TRANSACTION_setAdvancedAutohotspotConnectSettings:I = 0x28

.field static final TRANSACTION_setAdvancedAutohotspotLCDSettings:I = 0x2e

.field static final TRANSACTION_setAllowWifiScan:I = 0xd6

.field static final TRANSACTION_setAntInfo:I = 0x15

.field static final TRANSACTION_setAntMode:I = 0x60

.field static final TRANSACTION_setArdkPowerSaveMode:I = 0x8c

.field static final TRANSACTION_setAutohotspotToastMessage:I = 0x92

.field static final TRANSACTION_setConnectionAttemptInfo:I = 0xe9

.field static final TRANSACTION_setConnectivityCheckDisabled:I = 0xe2

.field static final TRANSACTION_setCountryRev:I = 0x38

.field static final TRANSACTION_setDcxoCalibrationData:I = 0x17

.field static final TRANSACTION_setDtimInSuspendMode:I = 0x2

.field static final TRANSACTION_setEasySetupScanSettings:I = 0xd9

.field static final TRANSACTION_setFactoryMacAddress:I = 0x12

.field static final TRANSACTION_setFccChannelBackoffEnabled:I = 0x13

.field static final TRANSACTION_setFrameburstInfo:I = 0x16

.field static final TRANSACTION_setGripSensorMonitorEnabled:I = 0x21

.field static final TRANSACTION_setHotspotAntMode:I = 0x5e

.field static final TRANSACTION_setIWCMockAction:I = 0xee

.field static final TRANSACTION_setIWCQTables:I = 0xec

.field static final TRANSACTION_setImsCallEstablished:I = 0xdc

.field static final TRANSACTION_setKeepConnection:I = 0xe4

.field static final TRANSACTION_setKeepConnectionAlways:I = 0xe3

.field static final TRANSACTION_setKeepConnectionBigData:I = 0xe5

.field static final TRANSACTION_setLatencyCritical:I = 0xf6

.field static final TRANSACTION_setLocalOnlyHotspotEnabled:I = 0x59

.field static final TRANSACTION_setLoopbackTestSettings:I = 0xf4

.field static final TRANSACTION_setMHSConfig:I = 0x63

.field static final TRANSACTION_setMaxDtimInSuspendMode:I = 0x1

.field static final TRANSACTION_setNCHOModeEnabled:I = 0x3c

.field static final TRANSACTION_setOptimizerForceControlMode:I = 0xf0

.field static final TRANSACTION_setPktlogFilter:I = 0xf7

.field static final TRANSACTION_setPowerSavingTime:I = 0x61

.field static final TRANSACTION_setProvisionSuccess:I = 0x70

.field static final TRANSACTION_setPsmInfo:I = 0x14

.field static final TRANSACTION_setRVFmodeStatus:I = 0x78

.field static final TRANSACTION_setRoamBand:I = 0x36

.field static final TRANSACTION_setRoamDelta:I = 0x32

.field static final TRANSACTION_setRoamScanChannels:I = 0x3e

.field static final TRANSACTION_setRoamScanEnabled:I = 0x3d

.field static final TRANSACTION_setRoamScanPeriod:I = 0x34

.field static final TRANSACTION_setRoamTrigger:I = 0x30

.field static final TRANSACTION_setSmartMHSLocked:I = 0x45

.field static final TRANSACTION_setSoftApConfiguration:I = 0x5b

.field static final TRANSACTION_setTCRule:I = 0xff

.field static final TRANSACTION_setTasPolicy:I = 0x115

.field static final TRANSACTION_setTdlsEnabled:I = 0x10d

.field static final TRANSACTION_setTestSettings:I = 0xd5

.field static final TRANSACTION_setUploadModeEnabled:I = 0x25

.field static final TRANSACTION_setUserConfirmForSharingPassword:I = 0xca

.field static final TRANSACTION_setVendorWlanDriverProp:I = 0x10

.field static final TRANSACTION_setVerboseLoggingEnabled:I = 0x3

.field static final TRANSACTION_setWesModeEnabled:I = 0x40

.field static final TRANSACTION_setWifiAiServiceNsdResult:I = 0x105

.field static final TRANSACTION_setWifiAiServiceState:I = 0x104

.field static final TRANSACTION_setWifiApClientDataPaused:I = 0x9c

.field static final TRANSACTION_setWifiApClientEditedName:I = 0x9d

.field static final TRANSACTION_setWifiApClientMobileDataLimit:I = 0x9a

.field static final TRANSACTION_setWifiApClientTimeLimit:I = 0x9b

.field static final TRANSACTION_setWifiApConfigurationToDefault:I = 0x6c

.field static final TRANSACTION_setWifiApDailyDataLimit:I = 0x9e

.field static final TRANSACTION_setWifiApEnabled:I = 0x58

.field static final TRANSACTION_setWifiApGuestModeEnabled:I = 0xae

.field static final TRANSACTION_setWifiApGuestModeIsolationEnabled:I = 0xb0

.field static final TRANSACTION_setWifiApGuestPassword:I = 0xab

.field static final TRANSACTION_setWifiApIsolate:I = 0x80

.field static final TRANSACTION_setWifiApMacAclEnable:I = 0x88

.field static final TRANSACTION_setWifiApMacAclMode:I = 0x86

.field static final TRANSACTION_setWifiApMaxClient:I = 0x7a

.field static final TRANSACTION_setWifiApMaxClientToFramework:I = 0x7c

.field static final TRANSACTION_setWifiApWarningActivityRunning:I = 0x2b

.field static final TRANSACTION_setWifiApWpsPbc:I = 0x7e

.field static final TRANSACTION_setWifiDeveloperModeEnabled:I = 0x5

.field static final TRANSACTION_setWifiSettingsForegroundState:I = 0x2a

.field static final TRANSACTION_setWifiSharingEnabled:I = 0x6f

.field static final TRANSACTION_setWifiUwbCoexEnabled:I = 0xf5

.field static final TRANSACTION_startIssueMonitoring:I = 0xc3

.field static final TRANSACTION_startMcfClientMHSDiscovery:I = 0x95

.field static final TRANSACTION_startMcfMHSAdvertisement:I = 0x96

.field static final TRANSACTION_startScan:I = 0xd8

.field static final TRANSACTION_startTimerForWifiOffload:I = 0xfd

.field static final TRANSACTION_supportWifiAp5GBasedOnCountry:I = 0x66

.field static final TRANSACTION_supportWifiAp6GBasedOnCountry:I = 0x67

.field static final TRANSACTION_triggerBackoffRoutine:I = 0x23

.field static final TRANSACTION_unRegisterWifiApDataUsageCallback:I = 0x50

.field static final TRANSACTION_unregisterClientDataUsageCallback:I = 0xb5

.field static final TRANSACTION_unregisterClientListDataUsageCallback:I = 0xb3

.field static final TRANSACTION_unregisterPasswordCallback:I = 0xc8

.field static final TRANSACTION_unregisterTasPolicyChangedListener:I = 0x117

.field static final TRANSACTION_unregisterWifiApSmartCallback:I = 0x4e

.field static final TRANSACTION_updateGuiderFeature:I = 0xc1

.field static final TRANSACTION_updateHostapdMacList:I = 0x82

.field static final TRANSACTION_updateIWCHintCard:I = 0xed

.field static final TRANSACTION_wifiApBackUpClientDataUsageSettingsInfo:I = 0xa8

.field static final TRANSACTION_wifiApBleClientRole:I = 0x48

.field static final TRANSACTION_wifiApBleD2DClientRole:I = 0x53

.field static final TRANSACTION_wifiApBleD2DMhsRole:I = 0x54

.field static final TRANSACTION_wifiApBleMhsRole:I = 0x49

.field static final TRANSACTION_wifiApDisassocSta:I = 0x79

.field static final TRANSACTION_wifiApRestoreClientDataUsageSettingsInfo:I = 0xa9

.field static final TRANSACTION_wifiApRestoreDailyHotspotDataLimit:I = 0xaa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1094
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1095
    const-string v0, "com.samsung.android.wifi.ISemWifiManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1103
    if-nez p0, :cond_4

    .line 1104
    const/4 v0, 0x0

    return-object v0

    .line 1106
    :cond_4
    const-string v0, "com.samsung.android.wifi.ISemWifiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/wifi/ISemWifiManager;

    if-eqz v1, :cond_14

    .line 1108
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/ISemWifiManager;

    return-object v1

    .line 1110
    :cond_14
    new-instance v1, Lcom/samsung/android/wifi/ISemWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1119
    packed-switch p0, :pswitch_data_34e

    .line 2243
    const/4 v0, 0x0

    return-object v0

    .line 2239
    :pswitch_5
    const-string v0, "isSwitchToMobileDataDefaultOff"

    return-object v0

    .line 2235
    :pswitch_8
    const-string v0, "unregisterTasPolicyChangedListener"

    return-object v0

    .line 2231
    :pswitch_b
    const-string v0, "registerTasPolicyChangedListener"

    return-object v0

    .line 2227
    :pswitch_e
    const-string v0, "setTasPolicy"

    return-object v0

    .line 2223
    :pswitch_11
    const-string v0, "getTasAverage"

    return-object v0

    .line 2219
    :pswitch_14
    const-string v0, "resetTotalPriorityDataConsumedValues"

    return-object v0

    .line 2215
    :pswitch_17
    const-string v0, "getDataConsumedValues"

    return-object v0

    .line 2211
    :pswitch_1a
    const-string v0, "getNRTTrafficbandwidth"

    return-object v0

    .line 2207
    :pswitch_1d
    const-string v0, "getMHSClientTrafficDetails"

    return-object v0

    .line 2203
    :pswitch_20
    const-string v0, "getNumOfTdlsSession"

    return-object v0

    .line 2199
    :pswitch_23
    const-string v0, "getMaxTdlsSession"

    return-object v0

    .line 2195
    :pswitch_26
    const-string v0, "setTdlsEnabled"

    return-object v0

    .line 2191
    :pswitch_29
    const-string v0, "isWiderBandwidthTdlsSupported"

    return-object v0

    .line 2187
    :pswitch_2c
    const-string v0, "isAvailableTdls"

    return-object v0

    .line 2183
    :pswitch_2f
    const-string v0, "getWifiUsabilityStatsEntry"

    return-object v0

    .line 2179
    :pswitch_32
    const-string v0, "isIndividualAppSupported"

    return-object v0

    .line 2175
    :pswitch_35
    const-string v0, "getTcpMonitorDnsHistory"

    return-object v0

    .line 2171
    :pswitch_38
    const-string v0, "getTcpMonitorAllSocketHistory"

    return-object v0

    .line 2167
    :pswitch_3b
    const-string v0, "getTcpMonitorSocketForegroundHistory"

    return-object v0

    .line 2163
    :pswitch_3e
    const-string v0, "setWifiAiServiceNsdResult"

    return-object v0

    .line 2159
    :pswitch_41
    const-string v0, "setWifiAiServiceState"

    return-object v0

    .line 2155
    :pswitch_44
    const-string v0, "linkQosQuery"

    return-object v0

    .line 2151
    :pswitch_47
    const-string v0, "getCtlFeatureState"

    return-object v0

    .line 2147
    :pswitch_4a
    const-string v0, "getTWTParams"

    return-object v0

    .line 2143
    :pswitch_4d
    const-string v0, "externalTwtInterface"

    return-object v0

    .line 2139
    :pswitch_50
    const-string v0, "setTCRule"

    return-object v0

    .line 2135
    :pswitch_53
    const-string v0, "checkAppForWiFiOffloading"

    return-object v0

    .line 2131
    :pswitch_56
    const-string v0, "startTimerForWifiOffload"

    return-object v0

    .line 2127
    :pswitch_59
    const-string v0, "getNumOfWifiAnt"

    return-object v0

    .line 2123
    :pswitch_5c
    const-string v0, "getWifiStaInfo"

    return-object v0

    .line 2119
    :pswitch_5f
    const-string v0, "getRssi"

    return-object v0

    .line 2115
    :pswitch_62
    const-string v0, "saveFwDump"

    return-object v0

    .line 2111
    :pswitch_65
    const-string v0, "removePktlogFilter"

    return-object v0

    .line 2107
    :pswitch_68
    const-string v0, "setPktlogFilter"

    return-object v0

    .line 2103
    :pswitch_6b
    const-string v0, "setLatencyCritical"

    return-object v0

    .line 2099
    :pswitch_6e
    const-string v0, "setWifiUwbCoexEnabled"

    return-object v0

    .line 2095
    :pswitch_71
    const-string v0, "setLoopbackTestSettings"

    return-object v0

    .line 2091
    :pswitch_74
    const-string v0, "getServiceDetectionResult"

    return-object v0

    .line 2087
    :pswitch_77
    const-string v0, "getOptimizerState"

    return-object v0

    .line 2083
    :pswitch_7a
    const-string v0, "getOptimizerForceControlMode"

    return-object v0

    .line 2079
    :pswitch_7d
    const-string v0, "setOptimizerForceControlMode"

    return-object v0

    .line 2075
    :pswitch_80
    const-string v0, "disconnectApBlockAutojoin"

    return-object v0

    .line 2071
    :pswitch_83
    const-string v0, "setIWCMockAction"

    return-object v0

    .line 2067
    :pswitch_86
    const-string v0, "updateIWCHintCard"

    return-object v0

    .line 2063
    :pswitch_89
    const-string v0, "setIWCQTables"

    return-object v0

    .line 2059
    :pswitch_8c
    const-string v0, "getIWCQTables"

    return-object v0

    .line 2055
    :pswitch_8f
    const-string v0, "restoreIWCSettingsValue"

    return-object v0

    .line 2051
    :pswitch_92
    const-string v0, "setConnectionAttemptInfo"

    return-object v0

    .line 2047
    :pswitch_95
    const-string v0, "restoreSemConfigurationsBackupData"

    return-object v0

    .line 2043
    :pswitch_98
    const-string v0, "retrieveSemWifiConfigsBackupData"

    return-object v0

    .line 2039
    :pswitch_9b
    const-string v0, "removeExcludedNetwork"

    return-object v0

    .line 2035
    :pswitch_9e
    const-string v0, "setKeepConnectionBigData"

    return-object v0

    .line 2031
    :pswitch_a1
    const-string v0, "setKeepConnection"

    return-object v0

    .line 2027
    :pswitch_a4
    const-string v0, "setKeepConnectionAlways"

    return-object v0

    .line 2023
    :pswitch_a7
    const-string v0, "setConnectivityCheckDisabled"

    return-object v0

    .line 2019
    :pswitch_aa
    const-string v0, "notifyReachabilityLost"

    return-object v0

    .line 2015
    :pswitch_ad
    const-string v0, "getValidState"

    return-object v0

    .line 2011
    :pswitch_b0
    const-string v0, "getCurrentStatusMode"

    return-object v0

    .line 2007
    :pswitch_b3
    const-string v0, "getWifiIconVisibility"

    return-object v0

    .line 2003
    :pswitch_b6
    const-string v0, "getWcmEverQualityTested"

    return-object v0

    .line 1999
    :pswitch_b9
    const-string v0, "setImsCallEstablished"

    return-object v0

    .line 1995
    :pswitch_bc
    const-string v0, "disableRandomMac"

    return-object v0

    .line 1991
    :pswitch_bf
    const-string v0, "getEasySetupScanSettings"

    return-object v0

    .line 1987
    :pswitch_c2
    const-string v0, "setEasySetupScanSettings"

    return-object v0

    .line 1983
    :pswitch_c5
    const-string v0, "startScan"

    return-object v0

    .line 1979
    :pswitch_c8
    const-string v0, "isScanningEnabled"

    return-object v0

    .line 1975
    :pswitch_cb
    const-string v0, "setAllowWifiScan"

    return-object v0

    .line 1971
    :pswitch_ce
    const-string v0, "setTestSettings"

    return-object v0

    .line 1967
    :pswitch_d1
    const-string v0, "hasConfiguredNetworkLocations"

    return-object v0

    .line 1963
    :pswitch_d4
    const-string v0, "getConfiguredNetworkLocations"

    return-object v0

    .line 1959
    :pswitch_d7
    const-string v0, "getAutoWifiDump"

    return-object v0

    .line 1955
    :pswitch_da
    const-string v0, "isAvailableAutoWifiScan"

    return-object v0

    .line 1951
    :pswitch_dd
    const-string v0, "isSupportedAutoWifi"

    return-object v0

    .line 1947
    :pswitch_e0
    const-string v0, "runAutoShareForCurrent"

    return-object v0

    .line 1943
    :pswitch_e3
    const-string v0, "getAutoShareDump"

    return-object v0

    .line 1939
    :pswitch_e6
    const-string v0, "getProfileShareDump"

    return-object v0

    .line 1935
    :pswitch_e9
    const-string v0, "isSupportedProfileRequest"

    return-object v0

    .line 1931
    :pswitch_ec
    const-string v0, "isSupportedQoSProvider"

    return-object v0

    .line 1927
    :pswitch_ef
    const-string v0, "setUserConfirmForSharingPassword"

    return-object v0

    .line 1923
    :pswitch_f2
    const-string v0, "requestPassword"

    return-object v0

    .line 1919
    :pswitch_f5
    const-string v0, "unregisterPasswordCallback"

    return-object v0

    .line 1915
    :pswitch_f8
    const-string v0, "registerPasswordCallback"

    return-object v0

    .line 1911
    :pswitch_fb
    const-string v0, "getQoSScores"

    return-object v0

    .line 1907
    :pswitch_fe
    const-string v0, "getConnectivityLog"

    return-object v0

    .line 1903
    :pswitch_101
    const-string v0, "getSilentRoamingDump"

    return-object v0

    .line 1899
    :pswitch_104
    const-string v0, "startIssueMonitoring"

    return-object v0

    .line 1895
    :pswitch_107
    const-string v0, "getDiagnosisResults"

    return-object v0

    .line 1891
    :pswitch_10a
    const-string v0, "updateGuiderFeature"

    return-object v0

    .line 1887
    :pswitch_10d
    const-string v0, "reportIssue"

    return-object v0

    .line 1883
    :pswitch_110
    const-string v0, "getIssueDetectorDump"

    return-object v0

    .line 1879
    :pswitch_113
    const-string v0, "allowAutojoinPasspoint"

    return-object v0

    .line 1875
    :pswitch_116
    const-string v0, "getConfiguredNetworks"

    return-object v0

    .line 1871
    :pswitch_119
    const-string v0, "resetDeveloperOptionsSettings"

    return-object v0

    .line 1867
    :pswitch_11c
    const-string v0, "factoryReset"

    return-object v0

    .line 1863
    :pswitch_11f
    const-string v0, "removeNetwork"

    return-object v0

    .line 1859
    :pswitch_122
    const-string v0, "addOrUpdateNetwork"

    return-object v0

    .line 1855
    :pswitch_125
    const-string v0, "getWifiEnableHistory"

    return-object v0

    .line 1851
    :pswitch_128
    const-string v0, "addOrUpdateWifiControlHistory"

    return-object v0

    .line 1847
    :pswitch_12b
    const-string v0, "reportBigData"

    return-object v0

    .line 1843
    :pswitch_12e
    const-string v0, "unregisterClientDataUsageCallback"

    return-object v0

    .line 1839
    :pswitch_131
    const-string v0, "registerClientDataUsageCallback"

    return-object v0

    .line 1835
    :pswitch_134
    const-string v0, "unregisterClientListDataUsageCallback"

    return-object v0

    .line 1831
    :pswitch_137
    const-string v0, "registerClientListDataUsageCallback"

    return-object v0

    .line 1827
    :pswitch_13a
    const-string v0, "isWifiApGuestClient"

    return-object v0

    .line 1823
    :pswitch_13d
    const-string v0, "setWifiApGuestModeIsolationEnabled"

    return-object v0

    .line 1819
    :pswitch_140
    const-string v0, "isWifiApGuestModeIsolationEnabled"

    return-object v0

    .line 1815
    :pswitch_143
    const-string v0, "setWifiApGuestModeEnabled"

    return-object v0

    .line 1811
    :pswitch_146
    const-string v0, "isWifiApGuestModeEnabled"

    return-object v0

    .line 1807
    :pswitch_149
    const-string v0, "getWifiApGuestPassword"

    return-object v0

    .line 1803
    :pswitch_14c
    const-string v0, "setWifiApGuestPassword"

    return-object v0

    .line 1799
    :pswitch_14f
    const-string v0, "wifiApRestoreDailyHotspotDataLimit"

    return-object v0

    .line 1795
    :pswitch_152
    const-string v0, "wifiApRestoreClientDataUsageSettingsInfo"

    return-object v0

    .line 1791
    :pswitch_155
    const-string v0, "wifiApBackUpClientDataUsageSettingsInfo"

    return-object v0

    .line 1787
    :pswitch_158
    const-string v0, "isOverAllMhsDataLimitSet"

    return-object v0

    .line 1783
    :pswitch_15b
    const-string v0, "isOverAllMhsDataLimitReached"

    return-object v0

    .line 1779
    :pswitch_15e
    const-string v0, "getMonthlyDataUsage"

    return-object v0

    .line 1775
    :pswitch_161
    const-string v0, "getTotalAndTop3ClientsDataUsageBetweenGivenDates"

    return-object v0

    .line 1771
    :pswitch_164
    const-string v0, "getWifiApDailyDataLimit"

    return-object v0

    .line 1767
    :pswitch_167
    const-string v0, "getWifiApTodaysTotalDataUsage"

    return-object v0

    .line 1763
    :pswitch_16a
    const-string v0, "getTopHotspotClientsTodayAsString"

    return-object v0

    .line 1759
    :pswitch_16d
    const-string v0, "getTopHotspotClientsToday"

    return-object v0

    .line 1755
    :pswitch_170
    const-string v0, "getWifiApClientDetails"

    return-object v0

    .line 1751
    :pswitch_173
    const-string v0, "setWifiApDailyDataLimit"

    return-object v0

    .line 1747
    :pswitch_176
    const-string v0, "setWifiApClientEditedName"

    return-object v0

    .line 1743
    :pswitch_179
    const-string v0, "setWifiApClientDataPaused"

    return-object v0

    .line 1739
    :pswitch_17c
    const-string v0, "setWifiApClientTimeLimit"

    return-object v0

    .line 1735
    :pswitch_17f
    const-string v0, "setWifiApClientMobileDataLimit"

    return-object v0

    .line 1731
    :pswitch_182
    const-string v0, "getMcfConnectedStatusFromScanResult"

    return-object v0

    .line 1727
    :pswitch_185
    const-string v0, "getMcfConnectedStatus"

    return-object v0

    .line 1723
    :pswitch_188
    const-string v0, "connectToMcfMHS"

    return-object v0

    .line 1719
    :pswitch_18b
    const-string v0, "startMcfMHSAdvertisement"

    return-object v0

    .line 1715
    :pswitch_18e
    const-string v0, "startMcfClientMHSDiscovery"

    return-object v0

    .line 1711
    :pswitch_191
    const-string v0, "getMcfScanDetail"

    return-object v0

    .line 1707
    :pswitch_194
    const-string v0, "isMCFClientAutohotspotSupported"

    return-object v0

    .line 1703
    :pswitch_197
    const-string v0, "setAutohotspotToastMessage"

    return-object v0

    .line 1699
    :pswitch_19a
    const-string v0, "isP2pConnected"

    return-object v0

    .line 1695
    :pswitch_19d
    const-string v0, "canAutoHotspotBeEnabled"

    return-object v0

    .line 1691
    :pswitch_1a0
    const-string v0, "getSoftApBands"

    return-object v0

    .line 1687
    :pswitch_1a3
    const-string v0, "notifyConnect"

    return-object v0

    .line 1683
    :pswitch_1a6
    const-string v0, "enableHotspotTsfInfo"

    return-object v0

    .line 1679
    :pswitch_1a9
    const-string v0, "setArdkPowerSaveMode"

    return-object v0

    .line 1675
    :pswitch_1ac
    const-string v0, "isWifiApEnabledWithDualBand"

    return-object v0

    .line 1671
    :pswitch_1af
    const-string v0, "getWifiApState"

    return-object v0

    .line 1667
    :pswitch_1b2
    const-string v0, "reportHotspotDumpLogs"

    return-object v0

    .line 1663
    :pswitch_1b5
    const-string v0, "setWifiApMacAclEnable"

    return-object v0

    .line 1659
    :pswitch_1b8
    const-string v0, "isWifiApMacAclEnabled"

    return-object v0

    .line 1655
    :pswitch_1bb
    const-string v0, "setWifiApMacAclMode"

    return-object v0

    .line 1651
    :pswitch_1be
    const-string v0, "getWifiApMacAclMode"

    return-object v0

    .line 1647
    :pswitch_1c1
    const-string v0, "readWifiApMacAclList"

    return-object v0

    .line 1643
    :pswitch_1c4
    const-string v0, "manageWifiApMacAclList"

    return-object v0

    .line 1639
    :pswitch_1c7
    const-string v0, "updateHostapdMacList"

    return-object v0

    .line 1635
    :pswitch_1ca
    const-string v0, "getWifiApIsolate"

    return-object v0

    .line 1631
    :pswitch_1cd
    const-string v0, "setWifiApIsolate"

    return-object v0

    .line 1627
    :pswitch_1d0
    const-string v0, "getWifiApWpsPbc"

    return-object v0

    .line 1623
    :pswitch_1d3
    const-string v0, "setWifiApWpsPbc"

    return-object v0

    .line 1619
    :pswitch_1d6
    const-string v0, "getWifiApMaxClientFromFramework"

    return-object v0

    .line 1615
    :pswitch_1d9
    const-string v0, "setWifiApMaxClientToFramework"

    return-object v0

    .line 1611
    :pswitch_1dc
    const-string v0, "resetSoftAp"

    return-object v0

    .line 1607
    :pswitch_1df
    const-string v0, "setWifiApMaxClient"

    return-object v0

    .line 1603
    :pswitch_1e2
    const-string v0, "wifiApDisassocSta"

    return-object v0

    .line 1599
    :pswitch_1e5
    const-string v0, "setRVFmodeStatus"

    return-object v0

    .line 1595
    :pswitch_1e8
    const-string v0, "getRVFModeStatus"

    return-object v0

    .line 1591
    :pswitch_1eb
    const-string v0, "getIndoorStatus"

    return-object v0

    .line 1587
    :pswitch_1ee
    const-string v0, "getWifiApLOHSState"

    return-object v0

    .line 1583
    :pswitch_1f1
    const-string v0, "getWifiApConnectedStationCount"

    return-object v0

    .line 1579
    :pswitch_1f4
    const-string v0, "isWifiApEnabled"

    return-object v0

    .line 1575
    :pswitch_1f7
    const-string v0, "isWifiSharingEnabled"

    return-object v0

    .line 1571
    :pswitch_1fa
    const-string v0, "getProvisionSuccess"

    return-object v0

    .line 1567
    :pswitch_1fd
    const-string v0, "setProvisionSuccess"

    return-object v0

    .line 1563
    :pswitch_200
    const-string v0, "setWifiSharingEnabled"

    return-object v0

    .line 1559
    :pswitch_203
    const-string v0, "runIptablesRulesCommand"

    return-object v0

    .line 1555
    :pswitch_206
    const-string v0, "getWifiApInterfaceName"

    return-object v0

    .line 1551
    :pswitch_209
    const-string v0, "setWifiApConfigurationToDefault"

    return-object v0

    .line 1547
    :pswitch_20c
    const-string v0, "getWifiApStaListDetail"

    return-object v0

    .line 1543
    :pswitch_20f
    const-string v0, "isWifiSharingLiteSupported"

    return-object v0

    .line 1539
    :pswitch_212
    const-string v0, "isWifiSharingSupported"

    return-object v0

    .line 1535
    :pswitch_215
    const-string v0, "getWifiApStaList"

    return-object v0

    .line 1531
    :pswitch_218
    const-string v0, "supportWifiAp6GBasedOnCountry"

    return-object v0

    .line 1527
    :pswitch_21b
    const-string v0, "supportWifiAp5GBasedOnCountry"

    return-object v0

    .line 1523
    :pswitch_21e
    const-string v0, "getWifiApMaxClient"

    return-object v0

    .line 1519
    :pswitch_221
    const-string v0, "getWifiApChannel"

    return-object v0

    .line 1515
    :pswitch_224
    const-string v0, "setMHSConfig"

    return-object v0

    .line 1511
    :pswitch_227
    const-string v0, "getMHSConfig"

    return-object v0

    .line 1507
    :pswitch_22a
    const-string v0, "setPowerSavingTime"

    return-object v0

    .line 1503
    :pswitch_22d
    const-string v0, "setAntMode"

    return-object v0

    .line 1499
    :pswitch_230
    const-string v0, "getHotspotAntMode"

    return-object v0

    .line 1495
    :pswitch_233
    const-string v0, "setHotspotAntMode"

    return-object v0

    .line 1491
    :pswitch_236
    const-string v0, "getWifiApFreq"

    return-object v0

    .line 1487
    :pswitch_239
    const-string v0, "getStationInfo"

    return-object v0

    .line 1483
    :pswitch_23c
    const-string v0, "setSoftApConfiguration"

    return-object v0

    .line 1479
    :pswitch_23f
    const-string v0, "getSoftApConfiguration"

    return-object v0

    .line 1475
    :pswitch_242
    const-string v0, "setLocalOnlyHotspotEnabled"

    return-object v0

    .line 1471
    :pswitch_245
    const-string v0, "setWifiApEnabled"

    return-object v0

    .line 1467
    :pswitch_248
    const-string v0, "isWifiApWpa3Supported"

    return-object v0

    .line 1463
    :pswitch_24b
    const-string v0, "getSmartD2DClientConnectedStatus"

    return-object v0

    .line 1459
    :pswitch_24e
    const-string v0, "connectToSmartD2DClient"

    return-object v0

    .line 1455
    :pswitch_251
    const-string v0, "wifiApBleD2DMhsRole"

    return-object v0

    .line 1451
    :pswitch_254
    const-string v0, "wifiApBleD2DClientRole"

    return-object v0

    .line 1447
    :pswitch_257
    const-string v0, "getWifiApBleD2DScanDetail"

    return-object v0

    .line 1443
    :pswitch_25a
    const-string v0, "getSmartApConnectedStatusFromScanResult"

    return-object v0

    .line 1439
    :pswitch_25d
    const-string v0, "unRegisterWifiApDataUsageCallback"

    return-object v0

    .line 1435
    :pswitch_260
    const-string v0, "registerWifiApDataUsageCallback"

    return-object v0

    .line 1431
    :pswitch_263
    const-string v0, "unregisterWifiApSmartCallback"

    return-object v0

    .line 1427
    :pswitch_266
    const-string v0, "registerWifiApSmartCallback"

    return-object v0

    .line 1423
    :pswitch_269
    const-string v0, "getSmartApConnectedStatus"

    return-object v0

    .line 1419
    :pswitch_26c
    const-string v0, "requestStopAutohotspotAdvertisement"

    return-object v0

    .line 1415
    :pswitch_26f
    const-string v0, "connectToSmartMHS"

    return-object v0

    .line 1411
    :pswitch_272
    const-string v0, "wifiApBleMhsRole"

    return-object v0

    .line 1407
    :pswitch_275
    const-string v0, "wifiApBleClientRole"

    return-object v0

    .line 1403
    :pswitch_278
    const-string v0, "getWifiApBleScanDetail"

    return-object v0

    .line 1399
    :pswitch_27b
    const-string v0, "isClientAcceptedWifiProfileSharing"

    return-object v0

    .line 1395
    :pswitch_27e
    const-string v0, "setSmartMHSLocked"

    return-object v0

    .line 1391
    :pswitch_281
    const-string v0, "canSmartMHSLocked"

    return-object v0

    .line 1387
    :pswitch_284
    const-string v0, "getSmartMHSLockStatus"

    return-object v0

    .line 1383
    :pswitch_287
    const-string v0, "sendReassociationRequestFrame"

    return-object v0

    .line 1379
    :pswitch_28a
    const-string v0, "sendVendorSpecificActionFrame"

    return-object v0

    .line 1375
    :pswitch_28d
    const-string v0, "setWesModeEnabled"

    return-object v0

    .line 1371
    :pswitch_290
    const-string v0, "isWesModeEnabled"

    return-object v0

    .line 1367
    :pswitch_293
    const-string v0, "setRoamScanChannels"

    return-object v0

    .line 1363
    :pswitch_296
    const-string v0, "setRoamScanEnabled"

    return-object v0

    .line 1359
    :pswitch_299
    const-string v0, "setNCHOModeEnabled"

    return-object v0

    .line 1355
    :pswitch_29c
    const-string v0, "isNCHOModeEnabled"

    return-object v0

    .line 1351
    :pswitch_29f
    const-string v0, "getCountryCode"

    return-object v0

    .line 1347
    :pswitch_2a2
    const-string v0, "getCountryRev"

    return-object v0

    .line 1343
    :pswitch_2a5
    const-string v0, "setCountryRev"

    return-object v0

    .line 1339
    :pswitch_2a8
    const-string v0, "getRoamBand"

    return-object v0

    .line 1335
    :pswitch_2ab
    const-string v0, "setRoamBand"

    return-object v0

    .line 1331
    :pswitch_2ae
    const-string v0, "getRoamScanPeriod"

    return-object v0

    .line 1327
    :pswitch_2b1
    const-string v0, "setRoamScanPeriod"

    return-object v0

    .line 1323
    :pswitch_2b4
    const-string v0, "getRoamDelta"

    return-object v0

    .line 1319
    :pswitch_2b7
    const-string v0, "setRoamDelta"

    return-object v0

    .line 1315
    :pswitch_2ba
    const-string v0, "getRoamTrigger"

    return-object v0

    .line 1311
    :pswitch_2bd
    const-string v0, "setRoamTrigger"

    return-object v0

    .line 1307
    :pswitch_2c0
    const-string v0, "getChannelUtilization"

    return-object v0

    .line 1303
    :pswitch_2c3
    const-string v0, "setAdvancedAutohotspotLCDSettings"

    return-object v0

    .line 1299
    :pswitch_2c6
    const-string v0, "clearAutoHotspotLists"

    return-object v0

    .line 1295
    :pswitch_2c9
    const-string v0, "getWifiApWarningActivityRunningState"

    return-object v0

    .line 1291
    :pswitch_2cc
    const-string v0, "setWifiApWarningActivityRunning"

    return-object v0

    .line 1287
    :pswitch_2cf
    const-string v0, "setWifiSettingsForegroundState"

    return-object v0

    .line 1283
    :pswitch_2d2
    const-string v0, "getAdvancedAutohotspotLCDSettings"

    return-object v0

    .line 1279
    :pswitch_2d5
    const-string v0, "setAdvancedAutohotspotConnectSettings"

    return-object v0

    .line 1275
    :pswitch_2d8
    const-string v0, "getAdvancedAutohotspotConnectSettings"

    return-object v0

    .line 1271
    :pswitch_2db
    const-string v0, "isUploadModeEnabled"

    return-object v0

    .line 1267
    :pswitch_2de
    const-string v0, "setUploadModeEnabled"

    return-object v0

    .line 1263
    :pswitch_2e1
    const-string v0, "set5GmmWaveSarBackoffEnabled"

    return-object v0

    .line 1259
    :pswitch_2e4
    const-string v0, "triggerBackoffRoutine"

    return-object v0

    .line 1255
    :pswitch_2e7
    const-string v0, "isGripSensorMonitorEnabled"

    return-object v0

    .line 1251
    :pswitch_2ea
    const-string v0, "setGripSensorMonitorEnabled"

    return-object v0

    .line 1247
    :pswitch_2ed
    const-string v0, "getDailyUsageInfo"

    return-object v0

    .line 1243
    :pswitch_2f0
    const-string v0, "getNetworkUsageInfo"

    return-object v0

    .line 1239
    :pswitch_2f3
    const-string v0, "getCurrentStateAndEnterTime"

    return-object v0

    .line 1235
    :pswitch_2f6
    const-string v0, "getNetworkLastUpdatedTimeMap"

    return-object v0

    .line 1231
    :pswitch_2f9
    const-string v0, "getWifiRouterInfoPresentable"

    return-object v0

    .line 1227
    :pswitch_2fc
    const-string v0, "getWifiRouterInfoBestEffort"

    return-object v0

    .line 1223
    :pswitch_2ff
    const-string v0, "getWifiRouterInfo"

    return-object v0

    .line 1219
    :pswitch_302
    const-string v0, "getCurrentWifiRouterInfo"

    return-object v0

    .line 1215
    :pswitch_305
    const-string v0, "getDcxoCalibrationData"

    return-object v0

    .line 1211
    :pswitch_308
    const-string v0, "setDcxoCalibrationData"

    return-object v0

    .line 1207
    :pswitch_30b
    const-string v0, "setFrameburstInfo"

    return-object v0

    .line 1203
    :pswitch_30e
    const-string v0, "setAntInfo"

    return-object v0

    .line 1199
    :pswitch_311
    const-string v0, "setPsmInfo"

    return-object v0

    .line 1195
    :pswitch_314
    const-string v0, "setFccChannelBackoffEnabled"

    return-object v0

    .line 1191
    :pswitch_317
    const-string v0, "setFactoryMacAddress"

    return-object v0

    .line 1187
    :pswitch_31a
    const-string v0, "removeFactoryMacAddress"

    return-object v0

    .line 1183
    :pswitch_31d
    const-string v0, "setVendorWlanDriverProp"

    return-object v0

    .line 1179
    :pswitch_320
    const-string v0, "getVendorWlanDriverProp"

    return-object v0

    .line 1175
    :pswitch_323
    const-string v0, "getWifiSupportedFeatureSet"

    return-object v0

    .line 1171
    :pswitch_326
    const-string v0, "getPsmInfo"

    return-object v0

    .line 1167
    :pswitch_329
    const-string v0, "getFrameburstInfo"

    return-object v0

    .line 1163
    :pswitch_32c
    const-string v0, "getAntInfo"

    return-object v0

    .line 1159
    :pswitch_32f
    const-string v0, "getFactoryMacAddress"

    return-object v0

    .line 1155
    :pswitch_332
    const-string v0, "getWifiVersions"

    return-object v0

    .line 1151
    :pswitch_335
    const-string v0, "getWifiCid"

    return-object v0

    .line 1147
    :pswitch_338
    const-string v0, "getWifiFirmwareVersion"

    return-object v0

    .line 1143
    :pswitch_33b
    const-string v0, "isWifiDeveloperModeEnabled"

    return-object v0

    .line 1139
    :pswitch_33e
    const-string v0, "setWifiDeveloperModeEnabled"

    return-object v0

    .line 1135
    :pswitch_341
    const-string v0, "blockFccChannelBackoff"

    return-object v0

    .line 1131
    :pswitch_344
    const-string v0, "setVerboseLoggingEnabled"

    return-object v0

    .line 1127
    :pswitch_347
    const-string v0, "setDtimInSuspendMode"

    return-object v0

    .line 1123
    :pswitch_34a
    const-string v0, "setMaxDtimInSuspendMode"

    return-object v0

    nop

    :pswitch_data_34e
    .packed-switch 0x1
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

.method static synthetic lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 4155
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4156
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4157
    return-void
.end method

.method private onTransact$connectToMcfMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 18
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9579
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 9581
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 9583
    .local v9, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9585
    .local v10, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9587
    .local v11, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9589
    .local v12, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 9591
    .local v13, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 9592
    .local v14, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9593
    move-object v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v12

    move-object v6, v13

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 9594
    .local v0, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9595
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9596
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$connectToSmartMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 20
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9478
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 9480
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9482
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9484
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 9486
    .local v12, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 9488
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 9490
    .local v14, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 9492
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 9493
    .local v16, "_arg7":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9494
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v15

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    .line 9495
    .local v0, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9496
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9497
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$linkQosQuery$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9726
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 9728
    .local v10, "_arg0":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 9730
    .local v12, "_arg1":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 9732
    .local v14, "_arg2":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 9734
    .local v16, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 9735
    .local v17, "_arg4":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9736
    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move-wide v5, v14

    move/from16 v7, v16

    move-wide/from16 v8, v17

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->linkQosQuery(JJJIJ)Z

    move-result v0

    .line 9737
    .local v0, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9738
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9739
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$registerClientListDataUsageCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9628
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 9630
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;

    move-result-object v7

    .line 9632
    .local v7, "_arg1":Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9634
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 9636
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9637
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9638
    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V

    .line 9639
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 9640
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$setWifiAiServiceNsdResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9746
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 9748
    .local v0, "_arg0":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 9750
    .local v1, "_arg1":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 9752
    .local v2, "_arg2":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 9753
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9754
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V

    .line 9755
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1114
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 9779
    const/16 v0, 0x117

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 2250
    invoke-static {p1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2254
    const-string v0, "com.samsung.android.wifi.ISemWifiManager"

    .line 2255
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 2256
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    :cond_d
    packed-switch p1, :pswitch_data_10d2

    .line 2266
    packed-switch p1, :pswitch_data_10d8

    .line 4683
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 2262
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2263
    return v1

    .line 4676
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSwitchToMobileDataDefaultOff()Z

    move-result v2

    .line 4677
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4678
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4679
    goto/16 :goto_10d0

    .line 4669
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/wifi/SemTasPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/SemTasPolicyListener;

    move-result-object v2

    .line 4670
    .local v2, "_arg0":Lcom/samsung/android/wifi/SemTasPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4671
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    .line 4672
    goto/16 :goto_10d0

    .line 4661
    .end local v2    # "_arg0":Lcom/samsung/android/wifi/SemTasPolicyListener;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/wifi/SemTasPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/SemTasPolicyListener;

    move-result-object v2

    .line 4662
    .restart local v2    # "_arg0":Lcom/samsung/android/wifi/SemTasPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4663
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    .line 4664
    goto/16 :goto_10d0

    .line 4649
    .end local v2    # "_arg0":Lcom/samsung/android/wifi/SemTasPolicyListener;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4651
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4652
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4653
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTasPolicy(II)Ljava/util/Map;

    move-result-object v4

    .line 4654
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4655
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 4656
    goto/16 :goto_10d0

    .line 4641
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/Map;
    :pswitch_5f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTasAverage()Ljava/util/Map;

    move-result-object v2

    .line 4642
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4643
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 4644
    goto/16 :goto_10d0

    .line 4635
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_6b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetTotalPriorityDataConsumedValues()V

    .line 4636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4637
    goto/16 :goto_10d0

    .line 4628
    :pswitch_73
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDataConsumedValues()[J

    move-result-object v2

    .line 4629
    .local v2, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4630
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 4631
    goto/16 :goto_10d0

    .line 4621
    .end local v2    # "_result":[J
    :pswitch_7f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNRTTrafficbandwidth()I

    move-result v2

    .line 4622
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4623
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4624
    goto/16 :goto_10d0

    .line 4614
    .end local v2    # "_result":I
    :pswitch_8b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMHSClientTrafficDetails()Ljava/util/List;

    move-result-object v2

    .line 4615
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4616
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4617
    goto/16 :goto_10d0

    .line 4607
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_97
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNumOfTdlsSession()I

    move-result v2

    .line 4608
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4609
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4610
    goto/16 :goto_10d0

    .line 4600
    .end local v2    # "_result":I
    :pswitch_a3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMaxTdlsSession()I

    move-result v2

    .line 4601
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4602
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4603
    goto/16 :goto_10d0

    .line 4591
    .end local v2    # "_result":I
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4592
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4593
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTdlsEnabled(Z)Z

    move-result v3

    .line 4594
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4595
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4596
    goto/16 :goto_10d0

    .line 4583
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_c2
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWiderBandwidthTdlsSupported()Z

    move-result v2

    .line 4584
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4585
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4586
    goto/16 :goto_10d0

    .line 4576
    .end local v2    # "_result":Z
    :pswitch_ce
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isAvailableTdls()Z

    move-result v2

    .line 4577
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4578
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4579
    goto/16 :goto_10d0

    .line 4567
    .end local v2    # "_result":Z
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4568
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4569
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object v3

    .line 4570
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4571
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4572
    goto/16 :goto_10d0

    .line 4559
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_ed
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isIndividualAppSupported()Z

    move-result v2

    .line 4560
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4561
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4562
    goto/16 :goto_10d0

    .line 4550
    .end local v2    # "_result":Z
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4551
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4552
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object v3

    .line 4553
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4554
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4555
    goto/16 :goto_10d0

    .line 4540
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4541
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4542
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object v3

    .line 4543
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4544
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4545
    goto/16 :goto_10d0

    .line 4530
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4531
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4532
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object v3

    .line 4533
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4534
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4535
    goto/16 :goto_10d0

    .line 4525
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_132
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiAiServiceNsdResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4514
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4516
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 4518
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 4519
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4520
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiAiServiceState(Z[I[I)V

    .line 4521
    goto/16 :goto_10d0

    .line 4509
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[I
    :pswitch_14b
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$linkQosQuery$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4502
    :pswitch_150
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCtlFeatureState()Ljava/util/Map;

    move-result-object v2

    .line 4503
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4504
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 4505
    goto/16 :goto_10d0

    .line 4495
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_15c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTWTParams()[I

    move-result-object v2

    .line 4496
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4497
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4498
    goto/16 :goto_10d0

    .line 4485
    .end local v2    # "_result":[I
    :pswitch_168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4487
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4488
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4489
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->externalTwtInterface(ILjava/lang/String;)V

    .line 4490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4491
    goto/16 :goto_10d0

    .line 4472
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_17b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4474
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4476
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4477
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4478
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTCRule(ZLjava/lang/String;I)V

    .line 4479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4480
    goto/16 :goto_10d0

    .line 4463
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4464
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4465
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->checkAppForWiFiOffloading(Ljava/lang/String;)V

    .line 4466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4467
    goto/16 :goto_10d0

    .line 4456
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1a1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startTimerForWifiOffload()V

    .line 4457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4458
    goto/16 :goto_10d0

    .line 4449
    :pswitch_1a9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNumOfWifiAnt()I

    move-result v2

    .line 4450
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4451
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4452
    goto/16 :goto_10d0

    .line 4442
    .end local v2    # "_result":I
    :pswitch_1b5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiStaInfo()Ljava/lang/String;

    move-result-object v2

    .line 4443
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4444
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4445
    goto/16 :goto_10d0

    .line 4433
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4434
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4435
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRssi(Ljava/lang/String;)I

    move-result v3

    .line 4436
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4437
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4438
    goto/16 :goto_10d0

    .line 4425
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1d4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->saveFwDump()Z

    move-result v2

    .line 4426
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4427
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4428
    goto/16 :goto_10d0

    .line 4414
    .end local v2    # "_result":Z
    :pswitch_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4416
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4417
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4418
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4419
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4420
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4421
    goto/16 :goto_10d0

    .line 4402
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4404
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4405
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4406
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4407
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4408
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4409
    goto/16 :goto_10d0

    .line 4390
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4392
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4393
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4394
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result v4

    .line 4395
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4396
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4397
    goto/16 :goto_10d0

    .line 4378
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4380
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4381
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4382
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiUwbCoexEnabled(IZ)I

    move-result v4

    .line 4383
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4384
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4385
    goto/16 :goto_10d0

    .line 4370
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_23c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 4371
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4372
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setLoopbackTestSettings(Landroid/os/Bundle;)V

    .line 4373
    goto/16 :goto_10d0

    .line 4362
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_24c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getServiceDetectionResult()[I

    move-result-object v2

    .line 4363
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4364
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4365
    goto/16 :goto_10d0

    .line 4355
    .end local v2    # "_result":[I
    :pswitch_258
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getOptimizerState()[I

    move-result-object v2

    .line 4356
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4357
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4358
    goto/16 :goto_10d0

    .line 4348
    .end local v2    # "_result":[I
    :pswitch_264
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getOptimizerForceControlMode()I

    move-result v2

    .line 4349
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4350
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4351
    goto/16 :goto_10d0

    .line 4339
    .end local v2    # "_result":I
    :pswitch_270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4340
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4341
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setOptimizerForceControlMode(I)Z

    move-result v3

    .line 4342
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4343
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4344
    goto/16 :goto_10d0

    .line 4329
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_283
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4330
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4331
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->disconnectApBlockAutojoin(Z)Z

    move-result v3

    .line 4332
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4334
    goto/16 :goto_10d0

    .line 4320
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4321
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4322
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setIWCMockAction(I)V

    .line 4323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4324
    goto/16 :goto_10d0

    .line 4311
    .end local v2    # "_arg0":I
    :pswitch_2a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4312
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4313
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateIWCHintCard(J)V

    .line 4314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    goto/16 :goto_10d0

    .line 4302
    .end local v2    # "_arg0":J
    :pswitch_2b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4303
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4304
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setIWCQTables(Ljava/lang/String;)V

    .line 4305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4306
    goto/16 :goto_10d0

    .line 4294
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2c3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIWCQTables()Ljava/lang/String;

    move-result-object v2

    .line 4295
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4296
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4297
    goto/16 :goto_10d0

    .line 4284
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4286
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4287
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4288
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->restoreIWCSettingsValue(II)V

    .line 4289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4290
    goto/16 :goto_10d0

    .line 4271
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4273
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4275
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4276
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4277
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setConnectionAttemptInfo(IZLjava/lang/String;)V

    .line 4278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4279
    goto/16 :goto_10d0

    .line 4262
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_2f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4263
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4264
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V

    .line 4265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4266
    goto/16 :goto_10d0

    .line 4254
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_308
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->retrieveSemWifiConfigsBackupData()Ljava/lang/String;

    move-result-object v2

    .line 4255
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4256
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4257
    goto/16 :goto_10d0

    .line 4246
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4247
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4248
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeExcludedNetwork(I)V

    .line 4249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4250
    goto/16 :goto_10d0

    .line 4238
    .end local v2    # "_arg0":I
    :pswitch_323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4239
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4240
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnectionBigData(I)V

    .line 4241
    goto/16 :goto_10d0

    .line 4228
    .end local v2    # "_arg0":I
    :pswitch_32f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4230
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4231
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4232
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnection(ZZ)V

    .line 4233
    goto/16 :goto_10d0

    .line 4220
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_33f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4221
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4222
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnectionAlways(Z)V

    .line 4223
    goto/16 :goto_10d0

    .line 4211
    .end local v2    # "_arg0":Z
    :pswitch_34b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4212
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4213
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setConnectivityCheckDisabled(Z)V

    .line 4214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4215
    goto/16 :goto_10d0

    .line 4204
    .end local v2    # "_arg0":Z
    :pswitch_35a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->notifyReachabilityLost()V

    .line 4205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4206
    goto/16 :goto_10d0

    .line 4197
    :pswitch_362
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getValidState()I

    move-result v2

    .line 4198
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4200
    goto/16 :goto_10d0

    .line 4190
    .end local v2    # "_result":I
    :pswitch_36e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCurrentStatusMode()I

    move-result v2

    .line 4191
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4193
    goto/16 :goto_10d0

    .line 4183
    .end local v2    # "_result":I
    :pswitch_37a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiIconVisibility()I

    move-result v2

    .line 4184
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4186
    goto/16 :goto_10d0

    .line 4176
    .end local v2    # "_result":I
    :pswitch_386
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWcmEverQualityTested()I

    move-result v2

    .line 4177
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4179
    goto/16 :goto_10d0

    .line 4169
    .end local v2    # "_result":I
    :pswitch_392
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4170
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4171
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setImsCallEstablished(Z)V

    .line 4172
    goto/16 :goto_10d0

    .line 4163
    .end local v2    # "_arg0":Z
    :pswitch_39e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->disableRandomMac()V

    .line 4164
    goto/16 :goto_10d0

    .line 4148
    :pswitch_3a3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getEasySetupScanSettings()Ljava/util/Map;

    move-result-object v2

    .line 4149
    .local v2, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4150
    if-nez v2, :cond_3b2

    .line 4151
    const/4 v3, -0x1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10d0

    .line 4153
    :cond_3b2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4154
    new-instance v3, Lcom/samsung/android/wifi/ISemWifiManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4159
    goto/16 :goto_10d0

    .line 4139
    .end local v2    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;>;"
    :pswitch_3c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4141
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 4142
    .local v3, "_arg1":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4143
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V

    .line 4144
    goto/16 :goto_10d0

    .line 4129
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    :pswitch_3d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4130
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4131
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startScan(Ljava/lang/String;)Z

    move-result v3

    .line 4132
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4134
    goto/16 :goto_10d0

    .line 4121
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3ea
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isScanningEnabled()Z

    move-result v2

    .line 4122
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4123
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4124
    goto/16 :goto_10d0

    .line 4112
    .end local v2    # "_result":Z
    :pswitch_3f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4114
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4115
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4116
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAllowWifiScan(ZLjava/lang/String;)V

    .line 4117
    goto/16 :goto_10d0

    .line 4102
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4104
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 4105
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4106
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTestSettings(ILandroid/os/Bundle;)V

    .line 4107
    goto/16 :goto_10d0

    .line 4092
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_41a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4093
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4094
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result v3

    .line 4095
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4096
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4097
    goto/16 :goto_10d0

    .line 4084
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_42d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConfiguredNetworkLocations()Ljava/util/Map;

    move-result-object v2

    .line 4085
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4086
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 4087
    goto/16 :goto_10d0

    .line 4077
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_439
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAutoWifiDump()Ljava/lang/String;

    move-result-object v2

    .line 4078
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4079
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4080
    goto/16 :goto_10d0

    .line 4070
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_445
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isAvailableAutoWifiScan()Z

    move-result v2

    .line 4071
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4072
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4073
    goto/16 :goto_10d0

    .line 4063
    .end local v2    # "_result":Z
    :pswitch_451
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedAutoWifi()Z

    move-result v2

    .line 4064
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4065
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4066
    goto/16 :goto_10d0

    .line 4056
    .end local v2    # "_result":Z
    :pswitch_45d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4057
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4058
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->runAutoShareForCurrent(Ljava/util/List;)V

    .line 4059
    goto/16 :goto_10d0

    .line 4048
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_469
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAutoShareDump()Ljava/lang/String;

    move-result-object v2

    .line 4049
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4050
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4051
    goto/16 :goto_10d0

    .line 4041
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_475
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getProfileShareDump()Ljava/lang/String;

    move-result-object v2

    .line 4042
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4043
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4044
    goto/16 :goto_10d0

    .line 4034
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_481
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedProfileRequest()Z

    move-result v2

    .line 4035
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4036
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4037
    goto/16 :goto_10d0

    .line 4027
    .end local v2    # "_result":Z
    :pswitch_48d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedQoSProvider()Z

    move-result v2

    .line 4028
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4029
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4030
    goto/16 :goto_10d0

    .line 4018
    .end local v2    # "_result":Z
    :pswitch_499
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4020
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4021
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4022
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setUserConfirmForSharingPassword(ZLjava/lang/String;)V

    .line 4023
    goto/16 :goto_10d0

    .line 4010
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4011
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4012
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->requestPassword(Z)V

    .line 4013
    goto/16 :goto_10d0

    .line 4002
    .end local v2    # "_arg0":Z
    :pswitch_4b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    move-result-object v2

    .line 4003
    .local v2, "_arg0":Lcom/samsung/android/wifi/ISemSharedPasswordCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4004
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    .line 4005
    goto/16 :goto_10d0

    .line 3992
    .end local v2    # "_arg0":Lcom/samsung/android/wifi/ISemSharedPasswordCallback;
    :pswitch_4c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3994
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    move-result-object v3

    .line 3995
    .local v3, "_arg1":Lcom/samsung/android/wifi/ISemSharedPasswordCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3996
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    .line 3997
    goto/16 :goto_10d0

    .line 3982
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/ISemSharedPasswordCallback;
    :pswitch_4d9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3983
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3984
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 3985
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3986
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3987
    goto/16 :goto_10d0

    .line 3972
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Ljava/util/Map;
    :pswitch_4ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3973
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3974
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3975
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3976
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3977
    goto/16 :goto_10d0

    .line 3962
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3963
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3964
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSilentRoamingDump(I)Ljava/lang/String;

    move-result-object v3

    .line 3965
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3966
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3967
    goto/16 :goto_10d0

    .line 3954
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_512
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3955
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3956
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startIssueMonitoring(Landroid/os/Bundle;)V

    .line 3957
    goto/16 :goto_10d0

    .line 3946
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_522
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDiagnosisResults()Ljava/util/List;

    move-result-object v2

    .line 3947
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3948
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3949
    goto/16 :goto_10d0

    .line 3939
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_52e
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3940
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3941
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateGuiderFeature(Landroid/os/Bundle;)V

    .line 3942
    goto/16 :goto_10d0

    .line 3929
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_53e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3931
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3932
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3933
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportIssue(ILandroid/os/Bundle;)V

    .line 3934
    goto/16 :goto_10d0

    .line 3919
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3920
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3921
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object v3

    .line 3922
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3923
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3924
    goto/16 :goto_10d0

    .line 3909
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_565
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3911
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3912
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3913
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->allowAutojoinPasspoint(Ljava/lang/String;Z)V

    .line 3914
    goto/16 :goto_10d0

    .line 3901
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_575
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 3902
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3903
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3904
    goto/16 :goto_10d0

    .line 3896
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_581
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetDeveloperOptionsSettings()V

    .line 3897
    goto/16 :goto_10d0

    .line 3891
    :pswitch_586
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->factoryReset()V

    .line 3892
    goto/16 :goto_10d0

    .line 3882
    :pswitch_58b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3883
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3884
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeNetwork(Ljava/lang/String;)Z

    move-result v3

    .line 3885
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3886
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3887
    goto/16 :goto_10d0

    .line 3872
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_59e
    sget-object v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 3873
    .local v2, "_arg0":Lcom/samsung/android/wifi/SemWifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3874
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v3

    .line 3875
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3876
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3877
    goto/16 :goto_10d0

    .line 3864
    .end local v2    # "_arg0":Lcom/samsung/android/wifi/SemWifiConfiguration;
    .end local v3    # "_result":Z
    :pswitch_5b5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiEnableHistory()Ljava/lang/String;

    move-result-object v2

    .line 3865
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3867
    goto/16 :goto_10d0

    .line 3855
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3857
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3858
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3859
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->addOrUpdateWifiControlHistory(Ljava/lang/String;Z)V

    .line 3860
    goto/16 :goto_10d0

    .line 3845
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_5d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3847
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3848
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3849
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    goto/16 :goto_10d0

    .line 3836
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_5e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3837
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3838
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterClientDataUsageCallback(I)V

    .line 3839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3840
    goto/16 :goto_10d0

    .line 3821
    .end local v2    # "_arg0":I
    :pswitch_5f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3823
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;

    move-result-object v3

    .line 3825
    .local v3, "_arg1":Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3827
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3828
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3829
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V

    .line 3830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3831
    goto/16 :goto_10d0

    .line 3812
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_60f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3813
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3814
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterClientListDataUsageCallback(I)V

    .line 3815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3816
    goto/16 :goto_10d0

    .line 3807
    .end local v2    # "_arg0":I
    :pswitch_61e
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$registerClientListDataUsageCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3798
    :pswitch_623
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3799
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3800
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApGuestClient(Ljava/lang/String;)Z

    move-result v3

    .line 3801
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3802
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3803
    goto/16 :goto_10d0

    .line 3789
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_636
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3790
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3791
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestModeIsolationEnabled(Z)V

    .line 3792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3793
    goto/16 :goto_10d0

    .line 3781
    .end local v2    # "_arg0":Z
    :pswitch_645
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApGuestModeIsolationEnabled()Z

    move-result v2

    .line 3782
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3783
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3784
    goto/16 :goto_10d0

    .line 3773
    .end local v2    # "_result":Z
    :pswitch_651
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3774
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3775
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestModeEnabled(Z)V

    .line 3776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3777
    goto/16 :goto_10d0

    .line 3765
    .end local v2    # "_arg0":Z
    :pswitch_660
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApGuestModeEnabled()Z

    move-result v2

    .line 3766
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3767
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3768
    goto/16 :goto_10d0

    .line 3758
    .end local v2    # "_result":Z
    :pswitch_66c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object v2

    .line 3759
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3760
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3761
    goto/16 :goto_10d0

    .line 3750
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3751
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3752
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestPassword(Ljava/lang/String;)V

    .line 3753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3754
    goto/16 :goto_10d0

    .line 3741
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_687
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3742
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3743
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApRestoreDailyHotspotDataLimit(J)V

    .line 3744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3745
    goto/16 :goto_10d0

    .line 3732
    .end local v2    # "_arg0":J
    :pswitch_696
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3733
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3734
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    .line 3735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3736
    goto/16 :goto_10d0

    .line 3724
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6a5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object v2

    .line 3725
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3726
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3727
    goto/16 :goto_10d0

    .line 3717
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_6b1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isOverAllMhsDataLimitSet()Z

    move-result v2

    .line 3718
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3719
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3720
    goto/16 :goto_10d0

    .line 3710
    .end local v2    # "_result":Z
    :pswitch_6bd
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isOverAllMhsDataLimitReached()Z

    move-result v2

    .line 3711
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3712
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3713
    goto/16 :goto_10d0

    .line 3703
    .end local v2    # "_result":Z
    :pswitch_6c9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object v2

    .line 3704
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3705
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3706
    goto/16 :goto_10d0

    .line 3692
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3694
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 3695
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3696
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object v6

    .line 3697
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3698
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3699
    goto/16 :goto_10d0

    .line 3684
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6ec
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApDailyDataLimit()J

    move-result-wide v2

    .line 3685
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3686
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3687
    goto/16 :goto_10d0

    .line 3677
    .end local v2    # "_result":J
    :pswitch_6f8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApTodaysTotalDataUsage()J

    move-result-wide v2

    .line 3678
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3679
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3680
    goto/16 :goto_10d0

    .line 3666
    .end local v2    # "_result":J
    :pswitch_704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3668
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3669
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3670
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object v4

    .line 3671
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3672
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3673
    goto/16 :goto_10d0

    .line 3654
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_71b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3656
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3657
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3658
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object v4

    .line 3659
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApClientDetails;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3660
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3661
    goto/16 :goto_10d0

    .line 3644
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApClientDetails;>;"
    :pswitch_732
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3645
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3646
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object v3

    .line 3647
    .local v3, "_result":Lcom/samsung/android/wifi/SemWifiApClientDetails;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3648
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3649
    goto/16 :goto_10d0

    .line 3635
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/samsung/android/wifi/SemWifiApClientDetails;
    :pswitch_745
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3636
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApDailyDataLimit(J)V

    .line 3638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    goto/16 :goto_10d0

    .line 3624
    .end local v2    # "_arg0":J
    :pswitch_754
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3626
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3627
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3628
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3630
    goto/16 :goto_10d0

    .line 3613
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_767
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3615
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3616
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3617
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    .line 3618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3619
    goto/16 :goto_10d0

    .line 3602
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_77a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3604
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 3605
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3606
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientTimeLimit(Ljava/lang/String;J)V

    .line 3607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3608
    goto/16 :goto_10d0

    .line 3591
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_78d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3593
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 3594
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3595
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V

    .line 3596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3597
    goto/16 :goto_10d0

    .line 3581
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_7a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3582
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3583
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v3

    .line 3584
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3585
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3586
    goto/16 :goto_10d0

    .line 3571
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_7b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3572
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3573
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfConnectedStatus(Ljava/lang/String;)I

    move-result v3

    .line 3574
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3575
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3576
    goto/16 :goto_10d0

    .line 3566
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_7c6
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$connectToMcfMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3557
    :pswitch_7cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3558
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3559
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startMcfMHSAdvertisement(Z)I

    move-result v3

    .line 3560
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3561
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3562
    goto/16 :goto_10d0

    .line 3547
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_7de
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3548
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3549
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startMcfClientMHSDiscovery(Z)I

    move-result v3

    .line 3550
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3551
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3552
    goto/16 :goto_10d0

    .line 3539
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_7f1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfScanDetail()Ljava/util/List;

    move-result-object v2

    .line 3540
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3541
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3542
    goto/16 :goto_10d0

    .line 3532
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    :pswitch_7fd
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isMCFClientAutohotspotSupported()Z

    move-result v2

    .line 3533
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3534
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3535
    goto/16 :goto_10d0

    .line 3524
    .end local v2    # "_result":Z
    :pswitch_809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3525
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3526
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAutohotspotToastMessage(I)V

    .line 3527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3528
    goto/16 :goto_10d0

    .line 3516
    .end local v2    # "_arg0":I
    :pswitch_818
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isP2pConnected()Z

    move-result v2

    .line 3517
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3518
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3519
    goto/16 :goto_10d0

    .line 3509
    .end local v2    # "_result":Z
    :pswitch_824
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->canAutoHotspotBeEnabled()Z

    move-result v2

    .line 3510
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3511
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3512
    goto/16 :goto_10d0

    .line 3502
    .end local v2    # "_result":Z
    :pswitch_830
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApBands()[I

    move-result-object v2

    .line 3503
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3504
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3505
    goto/16 :goto_10d0

    .line 3492
    .end local v2    # "_result":[I
    :pswitch_83c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3494
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3495
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3496
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->notifyConnect(ILjava/lang/String;)V

    .line 3497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3498
    goto/16 :goto_10d0

    .line 3483
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_84f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3484
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3485
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->enableHotspotTsfInfo(Z)V

    .line 3486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3487
    goto/16 :goto_10d0

    .line 3474
    .end local v2    # "_arg0":Z
    :pswitch_85e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3475
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3476
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setArdkPowerSaveMode(Z)V

    .line 3477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3478
    goto/16 :goto_10d0

    .line 3466
    .end local v2    # "_arg0":Z
    :pswitch_86d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApEnabledWithDualBand()Z

    move-result v2

    .line 3467
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3468
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3469
    goto/16 :goto_10d0

    .line 3459
    .end local v2    # "_result":Z
    :pswitch_879
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApState()I

    move-result v2

    .line 3460
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3461
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3462
    goto/16 :goto_10d0

    .line 3451
    .end local v2    # "_result":I
    :pswitch_885
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3452
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3453
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3455
    goto/16 :goto_10d0

    .line 3442
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_894
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3443
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3444
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMacAclEnable(Z)V

    .line 3445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3446
    goto/16 :goto_10d0

    .line 3434
    .end local v2    # "_arg0":Z
    :pswitch_8a3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApMacAclEnabled()Z

    move-result v2

    .line 3435
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3436
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3437
    goto/16 :goto_10d0

    .line 3426
    .end local v2    # "_result":Z
    :pswitch_8af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3427
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3428
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMacAclMode(I)V

    .line 3429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3430
    goto/16 :goto_10d0

    .line 3418
    .end local v2    # "_arg0":I
    :pswitch_8be
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMacAclMode()I

    move-result v2

    .line 3419
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3420
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3421
    goto/16 :goto_10d0

    .line 3409
    .end local v2    # "_result":I
    :pswitch_8ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3410
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3411
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->readWifiApMacAclList(I)Ljava/util/List;

    move-result-object v3

    .line 3412
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3413
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3414
    goto/16 :goto_10d0

    .line 3393
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3395
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3397
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3399
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3400
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3401
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .line 3402
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3403
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3404
    goto/16 :goto_10d0

    .line 3384
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_8fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3385
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3386
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateHostapdMacList(I)V

    .line 3387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3388
    goto/16 :goto_10d0

    .line 3376
    .end local v2    # "_arg0":I
    :pswitch_90b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApIsolate()Z

    move-result v2

    .line 3377
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3378
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3379
    goto/16 :goto_10d0

    .line 3368
    .end local v2    # "_result":Z
    :pswitch_917
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3369
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3370
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApIsolate(Z)V

    .line 3371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3372
    goto/16 :goto_10d0

    .line 3360
    .end local v2    # "_arg0":Z
    :pswitch_926
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApWpsPbc()Z

    move-result v2

    .line 3361
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3363
    goto/16 :goto_10d0

    .line 3352
    .end local v2    # "_result":Z
    :pswitch_932
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3353
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3354
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApWpsPbc(Z)V

    .line 3355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3356
    goto/16 :goto_10d0

    .line 3344
    .end local v2    # "_arg0":Z
    :pswitch_941
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMaxClientFromFramework()I

    move-result v2

    .line 3345
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3346
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3347
    goto/16 :goto_10d0

    .line 3336
    .end local v2    # "_result":I
    :pswitch_94d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3337
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3338
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMaxClientToFramework(I)V

    .line 3339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3340
    goto/16 :goto_10d0

    .line 3327
    .end local v2    # "_arg0":I
    :pswitch_95c
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 3328
    .local v2, "_arg0":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3329
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetSoftAp(Landroid/os/Message;)V

    .line 3330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3331
    goto/16 :goto_10d0

    .line 3318
    .end local v2    # "_arg0":Landroid/os/Message;
    :pswitch_96f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3319
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3320
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMaxClient(I)V

    .line 3321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3322
    goto/16 :goto_10d0

    .line 3309
    .end local v2    # "_arg0":I
    :pswitch_97e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3310
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3311
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApDisassocSta(Ljava/lang/String;)V

    .line 3312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3313
    goto/16 :goto_10d0

    .line 3300
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_98d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3301
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3302
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRVFmodeStatus(I)V

    .line 3303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3304
    goto/16 :goto_10d0

    .line 3292
    .end local v2    # "_arg0":I
    :pswitch_99c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRVFModeStatus()I

    move-result v2

    .line 3293
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3294
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3295
    goto/16 :goto_10d0

    .line 3285
    .end local v2    # "_result":I
    :pswitch_9a8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIndoorStatus()I

    move-result v2

    .line 3286
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3287
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3288
    goto/16 :goto_10d0

    .line 3278
    .end local v2    # "_result":I
    :pswitch_9b4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApLOHSState()I

    move-result v2

    .line 3279
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3280
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3281
    goto/16 :goto_10d0

    .line 3271
    .end local v2    # "_result":I
    :pswitch_9c0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApConnectedStationCount()I

    move-result v2

    .line 3272
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3273
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3274
    goto/16 :goto_10d0

    .line 3264
    .end local v2    # "_result":I
    :pswitch_9cc
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApEnabled()Z

    move-result v2

    .line 3265
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3267
    goto/16 :goto_10d0

    .line 3257
    .end local v2    # "_result":Z
    :pswitch_9d8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingEnabled()Z

    move-result v2

    .line 3258
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3259
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3260
    goto/16 :goto_10d0

    .line 3250
    .end local v2    # "_result":Z
    :pswitch_9e4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getProvisionSuccess()I

    move-result v2

    .line 3251
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3252
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3253
    goto/16 :goto_10d0

    .line 3241
    .end local v2    # "_result":I
    :pswitch_9f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3242
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3243
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setProvisionSuccess(Z)Z

    move-result v3

    .line 3244
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3245
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3246
    goto/16 :goto_10d0

    .line 3231
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_a03
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3232
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3233
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiSharingEnabled(Z)Z

    move-result v3

    .line 3234
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3236
    goto/16 :goto_10d0

    .line 3221
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_a16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3222
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3223
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3224
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3225
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3226
    goto/16 :goto_10d0

    .line 3213
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_a29
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 3214
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3215
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3216
    goto/16 :goto_10d0

    .line 3207
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a35
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApConfigurationToDefault()V

    .line 3208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3209
    goto/16 :goto_10d0

    .line 3200
    :pswitch_a3d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object v2

    .line 3201
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3202
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3203
    goto/16 :goto_10d0

    .line 3193
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a49
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingLiteSupported()Z

    move-result v2

    .line 3194
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3196
    goto/16 :goto_10d0

    .line 3186
    .end local v2    # "_result":Z
    :pswitch_a55
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingSupported()Z

    move-result v2

    .line 3187
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3189
    goto/16 :goto_10d0

    .line 3179
    .end local v2    # "_result":Z
    :pswitch_a61
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v2

    .line 3180
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3182
    goto/16 :goto_10d0

    .line 3172
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a6d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->supportWifiAp6GBasedOnCountry()Z

    move-result v2

    .line 3173
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3174
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3175
    goto/16 :goto_10d0

    .line 3165
    .end local v2    # "_result":Z
    :pswitch_a79
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->supportWifiAp5GBasedOnCountry()Z

    move-result v2

    .line 3166
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3168
    goto/16 :goto_10d0

    .line 3158
    .end local v2    # "_result":Z
    :pswitch_a85
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMaxClient()I

    move-result v2

    .line 3159
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3161
    goto/16 :goto_10d0

    .line 3151
    .end local v2    # "_result":I
    :pswitch_a91
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApChannel()I

    move-result v2

    .line 3152
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3154
    goto/16 :goto_10d0

    .line 3142
    .end local v2    # "_result":I
    :pswitch_a9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3143
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3144
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3145
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3146
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3147
    goto/16 :goto_10d0

    .line 3132
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_ab0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3133
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3134
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3135
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3136
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3137
    goto/16 :goto_10d0

    .line 3123
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_ac3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3124
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3125
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPowerSavingTime(I)V

    .line 3126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3127
    goto/16 :goto_10d0

    .line 3114
    .end local v2    # "_arg0":I
    :pswitch_ad2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3115
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3116
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAntMode(I)V

    .line 3117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3118
    goto/16 :goto_10d0

    .line 3106
    .end local v2    # "_arg0":I
    :pswitch_ae1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getHotspotAntMode()I

    move-result v2

    .line 3107
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3109
    goto/16 :goto_10d0

    .line 3098
    .end local v2    # "_result":I
    :pswitch_aed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3099
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3100
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setHotspotAntMode(I)V

    .line 3101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3102
    goto/16 :goto_10d0

    .line 3090
    .end local v2    # "_arg0":I
    :pswitch_afc
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApFreq()I

    move-result v2

    .line 3091
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3092
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3093
    goto/16 :goto_10d0

    .line 3081
    .end local v2    # "_result":I
    :pswitch_b08
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3082
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3083
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3084
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3085
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3086
    goto/16 :goto_10d0

    .line 3072
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_b1b
    sget-object v2, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApConfiguration;

    .line 3073
    .local v2, "_arg0":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3074
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 3075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3076
    goto/16 :goto_10d0

    .line 3064
    .end local v2    # "_arg0":Landroid/net/wifi/SoftApConfiguration;
    :pswitch_b2e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 3065
    .local v2, "_result":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3066
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3067
    goto/16 :goto_10d0

    .line 3049
    .end local v2    # "_result":Landroid/net/wifi/SoftApConfiguration;
    :pswitch_b3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3051
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3053
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3055
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3056
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3057
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 3058
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3059
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3060
    goto/16 :goto_10d0

    .line 3037
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_b59
    sget-object v2, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApConfiguration;

    .line 3039
    .local v2, "_arg0":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3040
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3041
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result v4

    .line 3042
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3043
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3044
    goto/16 :goto_10d0

    .line 3029
    .end local v2    # "_arg0":Landroid/net/wifi/SoftApConfiguration;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_b74
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApWpa3Supported()Z

    move-result v2

    .line 3030
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3031
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3032
    goto/16 :goto_10d0

    .line 3020
    .end local v2    # "_result":Z
    :pswitch_b80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3021
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3022
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v3

    .line 3023
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3024
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3025
    goto/16 :goto_10d0

    .line 3006
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3008
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3010
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    move-result-object v4

    .line 3011
    .local v4, "_arg2":Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3012
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    move-result v5

    .line 3013
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3014
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3015
    goto/16 :goto_10d0

    .line 2996
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    .end local v5    # "_result":Z
    :pswitch_bb2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2997
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2998
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleD2DMhsRole(Z)Z

    move-result v3

    .line 2999
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3000
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3001
    goto/16 :goto_10d0

    .line 2986
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_bc5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2987
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2988
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleD2DClientRole(Z)Z

    move-result v3

    .line 2989
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2990
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2991
    goto/16 :goto_10d0

    .line 2978
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_bd8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object v2

    .line 2979
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2980
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2981
    goto/16 :goto_10d0

    .line 2969
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    :pswitch_be4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2970
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2971
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v3

    .line 2972
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2973
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2974
    goto/16 :goto_10d0

    .line 2960
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_bf7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2961
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2962
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unRegisterWifiApDataUsageCallback(I)V

    .line 2963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2964
    goto/16 :goto_10d0

    .line 2947
    .end local v2    # "_arg0":I
    :pswitch_c06
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2949
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;

    move-result-object v3

    .line 2951
    .local v3, "_arg1":Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2952
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2953
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V

    .line 2954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2955
    goto/16 :goto_10d0

    .line 2938
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;
    .end local v4    # "_arg2":I
    :pswitch_c21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2939
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2940
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterWifiApSmartCallback(I)V

    .line 2941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2942
    goto/16 :goto_10d0

    .line 2925
    .end local v2    # "_arg0":I
    :pswitch_c30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2927
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    move-result-object v3

    .line 2929
    .local v3, "_arg1":Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2930
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2931
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V

    .line 2932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2933
    goto/16 :goto_10d0

    .line 2915
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    .end local v4    # "_arg2":I
    :pswitch_c4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2916
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2917
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result v3

    .line 2918
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2919
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2920
    goto/16 :goto_10d0

    .line 2906
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_c5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2907
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2908
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->requestStopAutohotspotAdvertisement(Z)V

    .line 2909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2910
    goto/16 :goto_10d0

    .line 2901
    .end local v2    # "_arg0":Z
    :pswitch_c6d
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$connectToSmartMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2892
    :pswitch_c72
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2893
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2894
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleMhsRole(Z)Z

    move-result v3

    .line 2895
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2896
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2897
    goto/16 :goto_10d0

    .line 2882
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_c85
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2883
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2884
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleClientRole(Z)Z

    move-result v3

    .line 2885
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2886
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2887
    goto/16 :goto_10d0

    .line 2874
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_c98
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v2

    .line 2875
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2876
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2877
    goto/16 :goto_10d0

    .line 2866
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    :pswitch_ca4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2867
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2868
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isClientAcceptedWifiProfileSharing(Z)V

    .line 2869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2870
    goto/16 :goto_10d0

    .line 2856
    .end local v2    # "_arg0":Z
    :pswitch_cb3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2857
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2858
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setSmartMHSLocked(I)I

    move-result v3

    .line 2859
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2860
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2861
    goto/16 :goto_10d0

    .line 2848
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_cc6
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->canSmartMHSLocked()I

    move-result v2

    .line 2849
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2851
    goto/16 :goto_10d0

    .line 2841
    .end local v2    # "_result":I
    :pswitch_cd2
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartMHSLockStatus()I

    move-result v2

    .line 2842
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2843
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2844
    goto/16 :goto_10d0

    .line 2830
    .end local v2    # "_result":I
    :pswitch_cde
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2832
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2833
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2834
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    move-result v4

    .line 2835
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2836
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2837
    goto/16 :goto_10d0

    .line 2814
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_cf5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2816
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2818
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2820
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2821
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2822
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v6

    .line 2823
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2824
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2825
    goto/16 :goto_10d0

    .line 2804
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_d14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2805
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2806
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWesModeEnabled(Z)Z

    move-result v3

    .line 2807
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2808
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2809
    goto/16 :goto_10d0

    .line 2796
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_d27
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWesModeEnabled()Z

    move-result v2

    .line 2797
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2798
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2799
    goto/16 :goto_10d0

    .line 2787
    .end local v2    # "_result":Z
    :pswitch_d33
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2788
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2789
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanChannels([Ljava/lang/String;)Z

    move-result v3

    .line 2790
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2791
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2792
    goto/16 :goto_10d0

    .line 2777
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_d46
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2778
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2779
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanEnabled(Z)Z

    move-result v3

    .line 2780
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2781
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2782
    goto/16 :goto_10d0

    .line 2767
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_d59
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2768
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2769
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setNCHOModeEnabled(Z)Z

    move-result v3

    .line 2770
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2772
    goto/16 :goto_10d0

    .line 2759
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_d6c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isNCHOModeEnabled()Z

    move-result v2

    .line 2760
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2761
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2762
    goto/16 :goto_10d0

    .line 2752
    .end local v2    # "_result":Z
    :pswitch_d78
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 2753
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2754
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2755
    goto/16 :goto_10d0

    .line 2745
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_d84
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCountryRev()Ljava/lang/String;

    move-result-object v2

    .line 2746
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2747
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2748
    goto/16 :goto_10d0

    .line 2736
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_d90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2737
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2738
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setCountryRev(Ljava/lang/String;)Z

    move-result v3

    .line 2739
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2740
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2741
    goto/16 :goto_10d0

    .line 2728
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_da3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamBand()I

    move-result v2

    .line 2729
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2730
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2731
    goto/16 :goto_10d0

    .line 2719
    .end local v2    # "_result":I
    :pswitch_daf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2720
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2721
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamBand(I)Z

    move-result v3

    .line 2722
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2723
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2724
    goto/16 :goto_10d0

    .line 2711
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_dc2
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamScanPeriod()I

    move-result v2

    .line 2712
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2713
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2714
    goto/16 :goto_10d0

    .line 2702
    .end local v2    # "_result":I
    :pswitch_dce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2703
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2704
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v3

    .line 2705
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2706
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2707
    goto/16 :goto_10d0

    .line 2694
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_de1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamDelta()I

    move-result v2

    .line 2695
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2696
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    goto/16 :goto_10d0

    .line 2685
    .end local v2    # "_result":I
    :pswitch_ded
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2686
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2687
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamDelta(I)Z

    move-result v3

    .line 2688
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2689
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2690
    goto/16 :goto_10d0

    .line 2677
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e00
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamTrigger()I

    move-result v2

    .line 2678
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2679
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2680
    goto/16 :goto_10d0

    .line 2668
    .end local v2    # "_result":I
    :pswitch_e0c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2669
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2670
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v3

    .line 2671
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2672
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2673
    goto/16 :goto_10d0

    .line 2660
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e1f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getChannelUtilization()I

    move-result v2

    .line 2661
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2662
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2663
    goto/16 :goto_10d0

    .line 2652
    .end local v2    # "_result":I
    :pswitch_e2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2653
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2654
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAdvancedAutohotspotLCDSettings(I)V

    .line 2655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    goto/16 :goto_10d0

    .line 2645
    .end local v2    # "_arg0":I
    :pswitch_e3a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->clearAutoHotspotLists()V

    .line 2646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2647
    goto/16 :goto_10d0

    .line 2638
    :pswitch_e42
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApWarningActivityRunningState()I

    move-result v2

    .line 2639
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2640
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2641
    goto/16 :goto_10d0

    .line 2630
    .end local v2    # "_result":I
    :pswitch_e4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2631
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2632
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApWarningActivityRunning(I)V

    .line 2633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2634
    goto/16 :goto_10d0

    .line 2621
    .end local v2    # "_arg0":I
    :pswitch_e5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2622
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2623
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiSettingsForegroundState(I)V

    .line 2624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2625
    goto/16 :goto_10d0

    .line 2613
    .end local v2    # "_arg0":I
    :pswitch_e6c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAdvancedAutohotspotLCDSettings()I

    move-result v2

    .line 2614
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2615
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2616
    goto/16 :goto_10d0

    .line 2605
    .end local v2    # "_result":I
    :pswitch_e78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2606
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2607
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAdvancedAutohotspotConnectSettings(I)V

    .line 2608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2609
    goto/16 :goto_10d0

    .line 2597
    .end local v2    # "_arg0":I
    :pswitch_e87
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAdvancedAutohotspotConnectSettings()I

    move-result v2

    .line 2598
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2599
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2600
    goto/16 :goto_10d0

    .line 2590
    .end local v2    # "_result":I
    :pswitch_e93
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isUploadModeEnabled()Z

    move-result v2

    .line 2591
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2593
    goto/16 :goto_10d0

    .line 2581
    .end local v2    # "_result":Z
    :pswitch_e9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2582
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2583
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setUploadModeEnabled(Z)Z

    move-result v3

    .line 2584
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2585
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2586
    goto/16 :goto_10d0

    .line 2572
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_eb2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2573
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2574
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->set5GmmWaveSarBackoffEnabled(Z)V

    .line 2575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2576
    goto/16 :goto_10d0

    .line 2563
    .end local v2    # "_arg0":Z
    :pswitch_ec1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2564
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2565
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->triggerBackoffRoutine(Z)V

    .line 2566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    goto/16 :goto_10d0

    .line 2555
    .end local v2    # "_arg0":Z
    :pswitch_ed0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isGripSensorMonitorEnabled()Z

    move-result v2

    .line 2556
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2558
    goto/16 :goto_10d0

    .line 2547
    .end local v2    # "_result":Z
    :pswitch_edc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2548
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2549
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setGripSensorMonitorEnabled(Z)V

    .line 2550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2551
    goto/16 :goto_10d0

    .line 2537
    .end local v2    # "_arg0":Z
    :pswitch_eeb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2538
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2539
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 2540
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2541
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2542
    goto/16 :goto_10d0

    .line 2527
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_efe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2528
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2529
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNetworkUsageInfo(Ljava/lang/String;)[J

    move-result-object v3

    .line 2530
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2531
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2532
    goto/16 :goto_10d0

    .line 2519
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[J
    :pswitch_f11
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCurrentStateAndEnterTime()Ljava/lang/String;

    move-result-object v2

    .line 2520
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2522
    goto/16 :goto_10d0

    .line 2512
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_f1d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNetworkLastUpdatedTimeMap()Ljava/util/Map;

    move-result-object v2

    .line 2513
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2515
    goto/16 :goto_10d0

    .line 2503
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_f29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2504
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2505
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2506
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2507
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2508
    goto/16 :goto_10d0

    .line 2493
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2494
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2495
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2496
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2498
    goto/16 :goto_10d0

    .line 2483
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2484
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2485
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2486
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2488
    goto/16 :goto_10d0

    .line 2475
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_f62
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCurrentWifiRouterInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 2476
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2477
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2478
    goto/16 :goto_10d0

    .line 2468
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_f6e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDcxoCalibrationData()Ljava/lang/String;

    move-result-object v2

    .line 2469
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2470
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2471
    goto/16 :goto_10d0

    .line 2459
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_f7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2460
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2461
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setDcxoCalibrationData(Ljava/lang/String;)Z

    move-result v3

    .line 2462
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2463
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2464
    goto/16 :goto_10d0

    .line 2449
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2450
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2451
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFrameburstInfo(Ljava/lang/String;)Z

    move-result v3

    .line 2452
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2453
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2454
    goto/16 :goto_10d0

    .line 2439
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_fa0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2440
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2441
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAntInfo(Ljava/lang/String;)Z

    move-result v3

    .line 2442
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2443
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2444
    goto/16 :goto_10d0

    .line 2429
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_fb3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2430
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2431
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPsmInfo(Ljava/lang/String;)Z

    move-result v3

    .line 2432
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2433
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2434
    goto/16 :goto_10d0

    .line 2418
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_fc6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2420
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2421
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2422
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFccChannelBackoffEnabled(Ljava/lang/String;Z)V

    .line 2423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2424
    goto/16 :goto_10d0

    .line 2408
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_fd9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2409
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2410
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFactoryMacAddress(Ljava/lang/String;)Z

    move-result v3

    .line 2411
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2412
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2413
    goto/16 :goto_10d0

    .line 2400
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_fec
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeFactoryMacAddress()Z

    move-result v2

    .line 2401
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2402
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2403
    goto/16 :goto_10d0

    .line 2389
    .end local v2    # "_result":Z
    :pswitch_ff8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2391
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2392
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2393
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 2394
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2395
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2396
    goto/16 :goto_10d0

    .line 2379
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_100f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2380
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2381
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2382
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2383
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2384
    goto/16 :goto_10d0

    .line 2371
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1022
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiSupportedFeatureSet()Ljava/lang/String;

    move-result-object v2

    .line 2372
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2373
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2374
    goto/16 :goto_10d0

    .line 2364
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_102e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getPsmInfo()Ljava/lang/String;

    move-result-object v2

    .line 2365
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2366
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2367
    goto/16 :goto_10d0

    .line 2357
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_103a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getFrameburstInfo()Ljava/lang/String;

    move-result-object v2

    .line 2358
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2360
    goto/16 :goto_10d0

    .line 2350
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1046
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAntInfo()Ljava/lang/String;

    move-result-object v2

    .line 2351
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2352
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2353
    goto/16 :goto_10d0

    .line 2343
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1052
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 2344
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2345
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2346
    goto/16 :goto_10d0

    .line 2336
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_105e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiVersions()Ljava/lang/String;

    move-result-object v2

    .line 2337
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2339
    goto :goto_10d0

    .line 2329
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1069
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiCid()Ljava/lang/String;

    move-result-object v2

    .line 2330
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2332
    goto :goto_10d0

    .line 2322
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1074
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    .line 2323
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2324
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2325
    goto :goto_10d0

    .line 2315
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_107f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiDeveloperModeEnabled()Z

    move-result v2

    .line 2316
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2318
    goto :goto_10d0

    .line 2307
    .end local v2    # "_result":Z
    :pswitch_108a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2308
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2309
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiDeveloperModeEnabled(Z)V

    .line 2310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2311
    goto :goto_10d0

    .line 2298
    .end local v2    # "_arg0":Z
    :pswitch_1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2299
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2300
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->blockFccChannelBackoff(Z)V

    .line 2301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2302
    goto :goto_10d0

    .line 2289
    .end local v2    # "_arg0":Z
    :pswitch_10a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2290
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2291
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setVerboseLoggingEnabled(Z)V

    .line 2292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2293
    goto :goto_10d0

    .line 2280
    .end local v2    # "_arg0":Z
    :pswitch_10b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2281
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2282
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setDtimInSuspendMode(I)V

    .line 2283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2284
    goto :goto_10d0

    .line 2271
    .end local v2    # "_arg0":I
    :pswitch_10c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2272
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2273
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMaxDtimInSuspendMode(Z)V

    .line 2274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2275
    nop

    .line 4686
    .end local v2    # "_arg0":Z
    :goto_10d0
    return v1

    nop

    :pswitch_data_10d2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_10d8
    .packed-switch 0x1
        :pswitch_10c2
        :pswitch_10b4
        :pswitch_10a6
        :pswitch_1098
        :pswitch_108a
        :pswitch_107f
        :pswitch_1074
        :pswitch_1069
        :pswitch_105e
        :pswitch_1052
        :pswitch_1046
        :pswitch_103a
        :pswitch_102e
        :pswitch_1022
        :pswitch_100f
        :pswitch_ff8
        :pswitch_fec
        :pswitch_fd9
        :pswitch_fc6
        :pswitch_fb3
        :pswitch_fa0
        :pswitch_f8d
        :pswitch_f7a
        :pswitch_f6e
        :pswitch_f62
        :pswitch_f4f
        :pswitch_f3c
        :pswitch_f29
        :pswitch_f1d
        :pswitch_f11
        :pswitch_efe
        :pswitch_eeb
        :pswitch_edc
        :pswitch_ed0
        :pswitch_ec1
        :pswitch_eb2
        :pswitch_e9f
        :pswitch_e93
        :pswitch_e87
        :pswitch_e78
        :pswitch_e6c
        :pswitch_e5d
        :pswitch_e4e
        :pswitch_e42
        :pswitch_e3a
        :pswitch_e2b
        :pswitch_e1f
        :pswitch_e0c
        :pswitch_e00
        :pswitch_ded
        :pswitch_de1
        :pswitch_dce
        :pswitch_dc2
        :pswitch_daf
        :pswitch_da3
        :pswitch_d90
        :pswitch_d84
        :pswitch_d78
        :pswitch_d6c
        :pswitch_d59
        :pswitch_d46
        :pswitch_d33
        :pswitch_d27
        :pswitch_d14
        :pswitch_cf5
        :pswitch_cde
        :pswitch_cd2
        :pswitch_cc6
        :pswitch_cb3
        :pswitch_ca4
        :pswitch_c98
        :pswitch_c85
        :pswitch_c72
        :pswitch_c6d
        :pswitch_c5e
        :pswitch_c4b
        :pswitch_c30
        :pswitch_c21
        :pswitch_c06
        :pswitch_bf7
        :pswitch_be4
        :pswitch_bd8
        :pswitch_bc5
        :pswitch_bb2
        :pswitch_b93
        :pswitch_b80
        :pswitch_b74
        :pswitch_b59
        :pswitch_b3a
        :pswitch_b2e
        :pswitch_b1b
        :pswitch_b08
        :pswitch_afc
        :pswitch_aed
        :pswitch_ae1
        :pswitch_ad2
        :pswitch_ac3
        :pswitch_ab0
        :pswitch_a9d
        :pswitch_a91
        :pswitch_a85
        :pswitch_a79
        :pswitch_a6d
        :pswitch_a61
        :pswitch_a55
        :pswitch_a49
        :pswitch_a3d
        :pswitch_a35
        :pswitch_a29
        :pswitch_a16
        :pswitch_a03
        :pswitch_9f0
        :pswitch_9e4
        :pswitch_9d8
        :pswitch_9cc
        :pswitch_9c0
        :pswitch_9b4
        :pswitch_9a8
        :pswitch_99c
        :pswitch_98d
        :pswitch_97e
        :pswitch_96f
        :pswitch_95c
        :pswitch_94d
        :pswitch_941
        :pswitch_932
        :pswitch_926
        :pswitch_917
        :pswitch_90b
        :pswitch_8fc
        :pswitch_8dd
        :pswitch_8ca
        :pswitch_8be
        :pswitch_8af
        :pswitch_8a3
        :pswitch_894
        :pswitch_885
        :pswitch_879
        :pswitch_86d
        :pswitch_85e
        :pswitch_84f
        :pswitch_83c
        :pswitch_830
        :pswitch_824
        :pswitch_818
        :pswitch_809
        :pswitch_7fd
        :pswitch_7f1
        :pswitch_7de
        :pswitch_7cb
        :pswitch_7c6
        :pswitch_7b3
        :pswitch_7a0
        :pswitch_78d
        :pswitch_77a
        :pswitch_767
        :pswitch_754
        :pswitch_745
        :pswitch_732
        :pswitch_71b
        :pswitch_704
        :pswitch_6f8
        :pswitch_6ec
        :pswitch_6d5
        :pswitch_6c9
        :pswitch_6bd
        :pswitch_6b1
        :pswitch_6a5
        :pswitch_696
        :pswitch_687
        :pswitch_678
        :pswitch_66c
        :pswitch_660
        :pswitch_651
        :pswitch_645
        :pswitch_636
        :pswitch_623
        :pswitch_61e
        :pswitch_60f
        :pswitch_5f0
        :pswitch_5e1
        :pswitch_5d1
        :pswitch_5c1
        :pswitch_5b5
        :pswitch_59e
        :pswitch_58b
        :pswitch_586
        :pswitch_581
        :pswitch_575
        :pswitch_565
        :pswitch_552
        :pswitch_53e
        :pswitch_52e
        :pswitch_522
        :pswitch_512
        :pswitch_4ff
        :pswitch_4ec
        :pswitch_4d9
        :pswitch_4c5
        :pswitch_4b5
        :pswitch_4a9
        :pswitch_499
        :pswitch_48d
        :pswitch_481
        :pswitch_475
        :pswitch_469
        :pswitch_45d
        :pswitch_451
        :pswitch_445
        :pswitch_439
        :pswitch_42d
        :pswitch_41a
        :pswitch_406
        :pswitch_3f6
        :pswitch_3ea
        :pswitch_3d7
        :pswitch_3c3
        :pswitch_3a3
        :pswitch_39e
        :pswitch_392
        :pswitch_386
        :pswitch_37a
        :pswitch_36e
        :pswitch_362
        :pswitch_35a
        :pswitch_34b
        :pswitch_33f
        :pswitch_32f
        :pswitch_323
        :pswitch_314
        :pswitch_308
        :pswitch_2f9
        :pswitch_2e2
        :pswitch_2cf
        :pswitch_2c3
        :pswitch_2b4
        :pswitch_2a5
        :pswitch_296
        :pswitch_283
        :pswitch_270
        :pswitch_264
        :pswitch_258
        :pswitch_24c
        :pswitch_23c
        :pswitch_225
        :pswitch_20e
        :pswitch_1f7
        :pswitch_1e0
        :pswitch_1d4
        :pswitch_1c1
        :pswitch_1b5
        :pswitch_1a9
        :pswitch_1a1
        :pswitch_192
        :pswitch_17b
        :pswitch_168
        :pswitch_15c
        :pswitch_150
        :pswitch_14b
        :pswitch_137
        :pswitch_132
        :pswitch_11f
        :pswitch_10c
        :pswitch_f9
        :pswitch_ed
        :pswitch_da
        :pswitch_ce
        :pswitch_c2
        :pswitch_af
        :pswitch_a3
        :pswitch_97
        :pswitch_8b
        :pswitch_7f
        :pswitch_73
        :pswitch_6b
        :pswitch_5f
        :pswitch_48
        :pswitch_38
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
