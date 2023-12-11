.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addKeyguardLockedStateListener:I = 0x22

.field static final TRANSACTION_addShellRoot:I = 0x15

.field static final TRANSACTION_addToSurfaceSyncGroup:I = 0x97

.field static final TRANSACTION_addWindowToken:I = 0x12

.field static final TRANSACTION_attachToDisplayContent:I = 0x7f

.field static final TRANSACTION_attachWindowContextToDisplayArea:I = 0x7d

.field static final TRANSACTION_attachWindowContextToWindowToken:I = 0x7e

.field static final TRANSACTION_captureDisplay:I = 0x95

.field static final TRANSACTION_changeDisplayScale:I = 0xaa

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xe

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearForcedDisplaySizeDensity:I = 0x8f

.field static final TRANSACTION_clearKeyCustomizationInfoByAction:I = 0xb5

.field static final TRANSACTION_clearKeyCustomizationInfoByKeyCode:I = 0xb4

.field static final TRANSACTION_clearTaskTransitionSpec:I = 0x87

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x4d

.field static final TRANSACTION_closeSystemDialogs:I = 0x25

.field static final TRANSACTION_closeSystemDialogsInDisplay:I = 0x26

.field static final TRANSACTION_createInputConsumer:I = 0x54

.field static final TRANSACTION_destroyInputConsumer:I = 0x55

.field static final TRANSACTION_detachWindowContextFromWindowContainer:I = 0x80

.field static final TRANSACTION_disableKeyguard:I = 0x1c

.field static final TRANSACTION_dismissKeyguard:I = 0x21

.field static final TRANSACTION_dispatchSPenGestureEvent:I = 0xad

.field static final TRANSACTION_dispatchSmartClipRemoteRequest:I = 0xc1

.field static final TRANSACTION_endProlongedAnimations:I = 0x19

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x1e

.field static final TRANSACTION_freezeDisplayRotation:I = 0x3a

.field static final TRANSACTION_freezeRotation:I = 0x37

.field static final TRANSACTION_getAnimationScale:I = 0x27

.field static final TRANSACTION_getAnimationScales:I = 0x28

.field static final TRANSACTION_getAppContinuityMode:I = 0xbd

.field static final TRANSACTION_getBackupKeyCustomizationInfoList:I = 0xb6

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x2b

.field static final TRANSACTION_getCurrentImeTouchRegion:I = 0x56

.field static final TRANSACTION_getDefaultDisplayRotation:I = 0x32

.field static final TRANSACTION_getDisplayIdByUniqueId:I = 0xc

.field static final TRANSACTION_getDisplayImePolicy:I = 0x6b

.field static final TRANSACTION_getDockedStackSide:I = 0x4f

.field static final TRANSACTION_getFullScreenAppsSupportMode:I = 0xa9

.field static final TRANSACTION_getImeDisplayId:I = 0x84

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getKeyCustomizationInfo:I = 0xaf

.field static final TRANSACTION_getKeyCustomizationInfoByPackage:I = 0xb0

.field static final TRANSACTION_getLastKeyCustomizationInfo:I = 0xb1

.field static final TRANSACTION_getLetterboxBackgroundColorInArgb:I = 0x93

.field static final TRANSACTION_getMaxAspectRatioPolicy:I = 0xa5

.field static final TRANSACTION_getMaxAspectRatioPolicyByComponent:I = 0xa4

.field static final TRANSACTION_getPossibleDisplayInfo:I = 0x74

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x36

.field static final TRANSACTION_getRemoveContentMode:I = 0x65

.field static final TRANSACTION_getRotationLockOrientation:I = 0xb8

.field static final TRANSACTION_getStableInsets:I = 0x52

.field static final TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x7a

.field static final TRANSACTION_getSupportsFlexPanel:I = 0xa7

.field static final TRANSACTION_getTopFocusedDisplayId:I = 0x9a

.field static final TRANSACTION_getUserDisplayDensity:I = 0x8e

.field static final TRANSACTION_getUserDisplaySize:I = 0x8d

.field static final TRANSACTION_getVisibleWindowInfoList:I = 0x8c

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x4e

.field static final TRANSACTION_getWindowInsets:I = 0x73

.field static final TRANSACTION_getWindowingMode:I = 0x63

.field static final TRANSACTION_hasNavigationBar:I = 0x4a

.field static final TRANSACTION_hideTransientBars:I = 0x46

.field static final TRANSACTION_holdLock:I = 0x79

.field static final TRANSACTION_isDisplayRotationFrozen:I = 0x3c

.field static final TRANSACTION_isFolded:I = 0xba

.field static final TRANSACTION_isGlobalKey:I = 0x96

.field static final TRANSACTION_isInTouchMode:I = 0x2e

.field static final TRANSACTION_isKeyguardLocked:I = 0x1f

.field static final TRANSACTION_isKeyguardSecure:I = 0x20

.field static final TRANSACTION_isKeyguardShowingAndNotOccluded:I = 0xbf

.field static final TRANSACTION_isLayerTracing:I = 0x6e

.field static final TRANSACTION_isLetterboxBackgroundMultiColored:I = 0x94

.field static final TRANSACTION_isMetaKeyEventRequested:I = 0xa1

.field static final TRANSACTION_isRotationFrozen:I = 0x39

.field static final TRANSACTION_isSafeModeEnabled:I = 0x4c

.field static final TRANSACTION_isSystemKeyEventRequested:I = 0x9d

.field static final TRANSACTION_isTableMode:I = 0xbb

.field static final TRANSACTION_isTaskSnapshotSupported:I = 0x83

.field static final TRANSACTION_isTransitionTraceEnabled:I = 0x62

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_isWindowToken:I = 0x11

.field static final TRANSACTION_isWindowTraceEnabled:I = 0x5e

.field static final TRANSACTION_lockNow:I = 0x4b

.field static final TRANSACTION_markSurfaceSyncGroupReady:I = 0x98

.field static final TRANSACTION_mirrorDisplay:I = 0x70

.field static final TRANSACTION_mirrorWallpaperSurface:I = 0x40

.field static final TRANSACTION_moveDisplayToTop:I = 0x9b

.field static final TRANSACTION_notifyScreenshotListeners:I = 0x99

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x17

.field static final TRANSACTION_overridePendingAppTransitionRemote:I = 0x18

.field static final TRANSACTION_putKeyCustomizationInfo:I = 0xae

.field static final TRANSACTION_reenableKeyguard:I = 0x1d

.field static final TRANSACTION_refreshScreenCaptureDisabled:I = 0x31

.field static final TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x81

.field static final TRANSACTION_registerDisplayFoldListener:I = 0x57

.field static final TRANSACTION_registerDisplayWindowListener:I = 0x59

.field static final TRANSACTION_registerOneHandOpWatcher:I = 0xab

.field static final TRANSACTION_registerPinnedTaskListener:I = 0x50

.field static final TRANSACTION_registerProposedRotationListener:I = 0x35

.field static final TRANSACTION_registerShortcutKey:I = 0x53

.field static final TRANSACTION_registerSystemGestureExclusionListener:I = 0x43

.field static final TRANSACTION_registerSystemKeyEvent:I = 0x9e

.field static final TRANSACTION_registerTaskFpsCallback:I = 0x88

.field static final TRANSACTION_registerWallpaperVisibilityListener:I = 0x41

.field static final TRANSACTION_removeKeyCustomizationInfo:I = 0xb2

.field static final TRANSACTION_removeKeyCustomizationInfoByPackage:I = 0xb3

.field static final TRANSACTION_removeKeyguardLockedStateListener:I = 0x23

.field static final TRANSACTION_removeRotationWatcher:I = 0x34

.field static final TRANSACTION_removeWindowToken:I = 0x13

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x51

.field static final TRANSACTION_requestAssistScreenshot:I = 0x45

.field static final TRANSACTION_requestMetaKeyEvent:I = 0xa0

.field static final TRANSACTION_requestScrollCapture:I = 0x78

.field static final TRANSACTION_requestSystemKeyEvent:I = 0x9c

.field static final TRANSACTION_restoreKeyCustomizationInfo:I = 0xb7

.field static final TRANSACTION_saveWindowTraceToFile:I = 0x5d

.field static final TRANSACTION_screenshotWallpaper:I = 0x3f

.field static final TRANSACTION_setActiveTransactionTracing:I = 0x77

.field static final TRANSACTION_setAnimationScale:I = 0x29

.field static final TRANSACTION_setAnimationScales:I = 0x2a

.field static final TRANSACTION_setAppContinuityMode:I = 0xbe

.field static final TRANSACTION_setDeadzoneHole:I = 0xa3

.field static final TRANSACTION_setDisplayChangeWindowController:I = 0x14

.field static final TRANSACTION_setDisplayColorToSystemProperties:I = 0xb9

.field static final TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x7c

.field static final TRANSACTION_setDisplayImePolicy:I = 0x6c

.field static final TRANSACTION_setDisplayWindowInsetsController:I = 0x71

.field static final TRANSACTION_setDragSurfaceToOverlay:I = 0xc2

.field static final TRANSACTION_setEventDispatching:I = 0x10

.field static final TRANSACTION_setFixedToUserRotation:I = 0x3d

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xf

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setForcedDisplaySizeDensity:I = 0x90

.field static final TRANSACTION_setForcedDisplaySizeDensityWithInfo:I = 0x91

.field static final TRANSACTION_setIgnoreOrientationRequest:I = 0x3e

.field static final TRANSACTION_setInTouchMode:I = 0x2c

.field static final TRANSACTION_setInTouchModeOnAllDisplays:I = 0x2d

.field static final TRANSACTION_setLayerTracing:I = 0x6f

.field static final TRANSACTION_setLayerTracingFlags:I = 0x76

.field static final TRANSACTION_setMaxAspectRatioPolicy:I = 0xa6

.field static final TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x49

.field static final TRANSACTION_setPendingIntentAfterUnlock:I = 0xa2

.field static final TRANSACTION_setRecentsAppBehindSystemBars:I = 0x8b

.field static final TRANSACTION_setRecentsVisibility:I = 0x47

.field static final TRANSACTION_setRemoveContentMode:I = 0x66

.field static final TRANSACTION_setShellRootAccessibilityWindow:I = 0x16

.field static final TRANSACTION_setShouldShowSystemDecors:I = 0x6a

.field static final TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x68

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x30

.field static final TRANSACTION_setSupportsFlexPanel:I = 0xa8

.field static final TRANSACTION_setSwitchingUser:I = 0x24

.field static final TRANSACTION_setTableModeEnabled:I = 0xbc

.field static final TRANSACTION_setTaskSnapshotEnabled:I = 0x85

.field static final TRANSACTION_setTaskTransitionSpec:I = 0x86

.field static final TRANSACTION_setWindowingMode:I = 0x64

.field static final TRANSACTION_shouldShowSystemDecors:I = 0x69

.field static final TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x67

.field static final TRANSACTION_showGlobalActions:I = 0x75

.field static final TRANSACTION_showStrictModeViolation:I = 0x2f

.field static final TRANSACTION_snapshotTaskForRecents:I = 0x8a

.field static final TRANSACTION_startFreezingScreen:I = 0x1a

.field static final TRANSACTION_startLockscreenFingerprintAuth:I = 0xc0

.field static final TRANSACTION_startSurfaceAnimation:I = 0x5f

.field static final TRANSACTION_startTransitionTrace:I = 0x60

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_startWindowTrace:I = 0x5b

.field static final TRANSACTION_stopFreezingScreen:I = 0x1b

.field static final TRANSACTION_stopTransitionTrace:I = 0x61

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_stopWindowTrace:I = 0x5c

.field static final TRANSACTION_syncInputTransactions:I = 0x6d

.field static final TRANSACTION_takeScreenshotToTargetWindow:I = 0x92

.field static final TRANSACTION_thawDisplayRotation:I = 0x3b

.field static final TRANSACTION_thawRotation:I = 0x38

.field static final TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x82

.field static final TRANSACTION_unregisterDisplayFoldListener:I = 0x58

.field static final TRANSACTION_unregisterDisplayWindowListener:I = 0x5a

.field static final TRANSACTION_unregisterOneHandOpWatcher:I = 0xac

.field static final TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x44

.field static final TRANSACTION_unregisterSystemKeyEvent:I = 0x9f

.field static final TRANSACTION_unregisterTaskFpsCallback:I = 0x89

.field static final TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x42

.field static final TRANSACTION_updateDisplayWindowRequestedVisibleTypes:I = 0x72

.field static final TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x48

.field static final TRANSACTION_useBLAST:I = 0x5

.field static final TRANSACTION_verifyDisplayHash:I = 0x7b

.field static final TRANSACTION_watchRotation:I = 0x33


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1303
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1304
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1312
    if-nez p0, :cond_4

    .line 1313
    const/4 v0, 0x0

    return-object v0

    .line 1315
    :cond_4
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1316
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_14

    .line 1317
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    return-object v1

    .line 1319
    :cond_14
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1328
    packed-switch p0, :pswitch_data_2b6

    .line 2108
    const/4 v0, 0x0

    return-object v0

    .line 2104
    :pswitch_5
    const-string/jumbo v0, "setDragSurfaceToOverlay"

    return-object v0

    .line 2100
    :pswitch_9
    const-string v0, "dispatchSmartClipRemoteRequest"

    return-object v0

    .line 2096
    :pswitch_c
    const-string/jumbo v0, "startLockscreenFingerprintAuth"

    return-object v0

    .line 2092
    :pswitch_10
    const-string v0, "isKeyguardShowingAndNotOccluded"

    return-object v0

    .line 2088
    :pswitch_13
    const-string/jumbo v0, "setAppContinuityMode"

    return-object v0

    .line 2084
    :pswitch_17
    const-string v0, "getAppContinuityMode"

    return-object v0

    .line 2080
    :pswitch_1a
    const-string/jumbo v0, "setTableModeEnabled"

    return-object v0

    .line 2076
    :pswitch_1e
    const-string v0, "isTableMode"

    return-object v0

    .line 2072
    :pswitch_21
    const-string v0, "isFolded"

    return-object v0

    .line 2068
    :pswitch_24
    const-string/jumbo v0, "setDisplayColorToSystemProperties"

    return-object v0

    .line 2064
    :pswitch_28
    const-string v0, "getRotationLockOrientation"

    return-object v0

    .line 2060
    :pswitch_2b
    const-string/jumbo v0, "restoreKeyCustomizationInfo"

    return-object v0

    .line 2056
    :pswitch_2f
    const-string v0, "getBackupKeyCustomizationInfoList"

    return-object v0

    .line 2052
    :pswitch_32
    const-string v0, "clearKeyCustomizationInfoByAction"

    return-object v0

    .line 2048
    :pswitch_35
    const-string v0, "clearKeyCustomizationInfoByKeyCode"

    return-object v0

    .line 2044
    :pswitch_38
    const-string/jumbo v0, "removeKeyCustomizationInfoByPackage"

    return-object v0

    .line 2040
    :pswitch_3c
    const-string/jumbo v0, "removeKeyCustomizationInfo"

    return-object v0

    .line 2036
    :pswitch_40
    const-string v0, "getLastKeyCustomizationInfo"

    return-object v0

    .line 2032
    :pswitch_43
    const-string v0, "getKeyCustomizationInfoByPackage"

    return-object v0

    .line 2028
    :pswitch_46
    const-string v0, "getKeyCustomizationInfo"

    return-object v0

    .line 2024
    :pswitch_49
    const-string/jumbo v0, "putKeyCustomizationInfo"

    return-object v0

    .line 2020
    :pswitch_4d
    const-string v0, "dispatchSPenGestureEvent"

    return-object v0

    .line 2016
    :pswitch_50
    const-string/jumbo v0, "unregisterOneHandOpWatcher"

    return-object v0

    .line 2012
    :pswitch_54
    const-string/jumbo v0, "registerOneHandOpWatcher"

    return-object v0

    .line 2008
    :pswitch_58
    const-string v0, "changeDisplayScale"

    return-object v0

    .line 2004
    :pswitch_5b
    const-string v0, "getFullScreenAppsSupportMode"

    return-object v0

    .line 2000
    :pswitch_5e
    const-string/jumbo v0, "setSupportsFlexPanel"

    return-object v0

    .line 1996
    :pswitch_62
    const-string v0, "getSupportsFlexPanel"

    return-object v0

    .line 1992
    :pswitch_65
    const-string/jumbo v0, "setMaxAspectRatioPolicy"

    return-object v0

    .line 1988
    :pswitch_69
    const-string v0, "getMaxAspectRatioPolicy"

    return-object v0

    .line 1984
    :pswitch_6c
    const-string v0, "getMaxAspectRatioPolicyByComponent"

    return-object v0

    .line 1980
    :pswitch_6f
    const-string/jumbo v0, "setDeadzoneHole"

    return-object v0

    .line 1976
    :pswitch_73
    const-string/jumbo v0, "setPendingIntentAfterUnlock"

    return-object v0

    .line 1972
    :pswitch_77
    const-string v0, "isMetaKeyEventRequested"

    return-object v0

    .line 1968
    :pswitch_7a
    const-string/jumbo v0, "requestMetaKeyEvent"

    return-object v0

    .line 1964
    :pswitch_7e
    const-string/jumbo v0, "unregisterSystemKeyEvent"

    return-object v0

    .line 1960
    :pswitch_82
    const-string/jumbo v0, "registerSystemKeyEvent"

    return-object v0

    .line 1956
    :pswitch_86
    const-string v0, "isSystemKeyEventRequested"

    return-object v0

    .line 1952
    :pswitch_89
    const-string/jumbo v0, "requestSystemKeyEvent"

    return-object v0

    .line 1948
    :pswitch_8d
    const-string/jumbo v0, "moveDisplayToTop"

    return-object v0

    .line 1944
    :pswitch_91
    const-string v0, "getTopFocusedDisplayId"

    return-object v0

    .line 1940
    :pswitch_94
    const-string/jumbo v0, "notifyScreenshotListeners"

    return-object v0

    .line 1936
    :pswitch_98
    const-string/jumbo v0, "markSurfaceSyncGroupReady"

    return-object v0

    .line 1932
    :pswitch_9c
    const-string v0, "addToSurfaceSyncGroup"

    return-object v0

    .line 1928
    :pswitch_9f
    const-string v0, "isGlobalKey"

    return-object v0

    .line 1924
    :pswitch_a2
    const-string v0, "captureDisplay"

    return-object v0

    .line 1920
    :pswitch_a5
    const-string v0, "isLetterboxBackgroundMultiColored"

    return-object v0

    .line 1916
    :pswitch_a8
    const-string v0, "getLetterboxBackgroundColorInArgb"

    return-object v0

    .line 1912
    :pswitch_ab
    const-string/jumbo v0, "takeScreenshotToTargetWindow"

    return-object v0

    .line 1908
    :pswitch_af
    const-string/jumbo v0, "setForcedDisplaySizeDensityWithInfo"

    return-object v0

    .line 1904
    :pswitch_b3
    const-string/jumbo v0, "setForcedDisplaySizeDensity"

    return-object v0

    .line 1900
    :pswitch_b7
    const-string v0, "clearForcedDisplaySizeDensity"

    return-object v0

    .line 1896
    :pswitch_ba
    const-string v0, "getUserDisplayDensity"

    return-object v0

    .line 1892
    :pswitch_bd
    const-string v0, "getUserDisplaySize"

    return-object v0

    .line 1888
    :pswitch_c0
    const-string v0, "getVisibleWindowInfoList"

    return-object v0

    .line 1884
    :pswitch_c3
    const-string/jumbo v0, "setRecentsAppBehindSystemBars"

    return-object v0

    .line 1880
    :pswitch_c7
    const-string/jumbo v0, "snapshotTaskForRecents"

    return-object v0

    .line 1876
    :pswitch_cb
    const-string/jumbo v0, "unregisterTaskFpsCallback"

    return-object v0

    .line 1872
    :pswitch_cf
    const-string/jumbo v0, "registerTaskFpsCallback"

    return-object v0

    .line 1868
    :pswitch_d3
    const-string v0, "clearTaskTransitionSpec"

    return-object v0

    .line 1864
    :pswitch_d6
    const-string/jumbo v0, "setTaskTransitionSpec"

    return-object v0

    .line 1860
    :pswitch_da
    const-string/jumbo v0, "setTaskSnapshotEnabled"

    return-object v0

    .line 1856
    :pswitch_de
    const-string v0, "getImeDisplayId"

    return-object v0

    .line 1852
    :pswitch_e1
    const-string v0, "isTaskSnapshotSupported"

    return-object v0

    .line 1848
    :pswitch_e4
    const-string/jumbo v0, "unregisterCrossWindowBlurEnabledListener"

    return-object v0

    .line 1844
    :pswitch_e8
    const-string/jumbo v0, "registerCrossWindowBlurEnabledListener"

    return-object v0

    .line 1840
    :pswitch_ec
    const-string v0, "detachWindowContextFromWindowContainer"

    return-object v0

    .line 1836
    :pswitch_ef
    const-string v0, "attachToDisplayContent"

    return-object v0

    .line 1832
    :pswitch_f2
    const-string v0, "attachWindowContextToWindowToken"

    return-object v0

    .line 1828
    :pswitch_f5
    const-string v0, "attachWindowContextToDisplayArea"

    return-object v0

    .line 1824
    :pswitch_f8
    const-string/jumbo v0, "setDisplayHashThrottlingEnabled"

    return-object v0

    .line 1820
    :pswitch_fc
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    .line 1816
    :pswitch_100
    const-string v0, "getSupportedDisplayHashAlgorithms"

    return-object v0

    .line 1812
    :pswitch_103
    const-string v0, "holdLock"

    return-object v0

    .line 1808
    :pswitch_106
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 1804
    :pswitch_10a
    const-string/jumbo v0, "setActiveTransactionTracing"

    return-object v0

    .line 1800
    :pswitch_10e
    const-string/jumbo v0, "setLayerTracingFlags"

    return-object v0

    .line 1796
    :pswitch_112
    const-string/jumbo v0, "showGlobalActions"

    return-object v0

    .line 1792
    :pswitch_116
    const-string v0, "getPossibleDisplayInfo"

    return-object v0

    .line 1788
    :pswitch_119
    const-string v0, "getWindowInsets"

    return-object v0

    .line 1784
    :pswitch_11c
    const-string/jumbo v0, "updateDisplayWindowRequestedVisibleTypes"

    return-object v0

    .line 1780
    :pswitch_120
    const-string/jumbo v0, "setDisplayWindowInsetsController"

    return-object v0

    .line 1776
    :pswitch_124
    const-string/jumbo v0, "mirrorDisplay"

    return-object v0

    .line 1772
    :pswitch_128
    const-string/jumbo v0, "setLayerTracing"

    return-object v0

    .line 1768
    :pswitch_12c
    const-string v0, "isLayerTracing"

    return-object v0

    .line 1764
    :pswitch_12f
    const-string/jumbo v0, "syncInputTransactions"

    return-object v0

    .line 1760
    :pswitch_133
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    .line 1756
    :pswitch_137
    const-string v0, "getDisplayImePolicy"

    return-object v0

    .line 1752
    :pswitch_13a
    const-string/jumbo v0, "setShouldShowSystemDecors"

    return-object v0

    .line 1748
    :pswitch_13e
    const-string/jumbo v0, "shouldShowSystemDecors"

    return-object v0

    .line 1744
    :pswitch_142
    const-string/jumbo v0, "setShouldShowWithInsecureKeyguard"

    return-object v0

    .line 1740
    :pswitch_146
    const-string/jumbo v0, "shouldShowWithInsecureKeyguard"

    return-object v0

    .line 1736
    :pswitch_14a
    const-string/jumbo v0, "setRemoveContentMode"

    return-object v0

    .line 1732
    :pswitch_14e
    const-string v0, "getRemoveContentMode"

    return-object v0

    .line 1728
    :pswitch_151
    const-string/jumbo v0, "setWindowingMode"

    return-object v0

    .line 1724
    :pswitch_155
    const-string v0, "getWindowingMode"

    return-object v0

    .line 1720
    :pswitch_158
    const-string v0, "isTransitionTraceEnabled"

    return-object v0

    .line 1716
    :pswitch_15b
    const-string/jumbo v0, "stopTransitionTrace"

    return-object v0

    .line 1712
    :pswitch_15f
    const-string/jumbo v0, "startTransitionTrace"

    return-object v0

    .line 1708
    :pswitch_163
    const-string/jumbo v0, "startSurfaceAnimation"

    return-object v0

    .line 1704
    :pswitch_167
    const-string v0, "isWindowTraceEnabled"

    return-object v0

    .line 1700
    :pswitch_16a
    const-string/jumbo v0, "saveWindowTraceToFile"

    return-object v0

    .line 1696
    :pswitch_16e
    const-string/jumbo v0, "stopWindowTrace"

    return-object v0

    .line 1692
    :pswitch_172
    const-string/jumbo v0, "startWindowTrace"

    return-object v0

    .line 1688
    :pswitch_176
    const-string/jumbo v0, "unregisterDisplayWindowListener"

    return-object v0

    .line 1684
    :pswitch_17a
    const-string/jumbo v0, "registerDisplayWindowListener"

    return-object v0

    .line 1680
    :pswitch_17e
    const-string/jumbo v0, "unregisterDisplayFoldListener"

    return-object v0

    .line 1676
    :pswitch_182
    const-string/jumbo v0, "registerDisplayFoldListener"

    return-object v0

    .line 1672
    :pswitch_186
    const-string v0, "getCurrentImeTouchRegion"

    return-object v0

    .line 1668
    :pswitch_189
    const-string v0, "destroyInputConsumer"

    return-object v0

    .line 1664
    :pswitch_18c
    const-string v0, "createInputConsumer"

    return-object v0

    .line 1660
    :pswitch_18f
    const-string/jumbo v0, "registerShortcutKey"

    return-object v0

    .line 1656
    :pswitch_193
    const-string v0, "getStableInsets"

    return-object v0

    .line 1652
    :pswitch_196
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 1648
    :pswitch_19a
    const-string/jumbo v0, "registerPinnedTaskListener"

    return-object v0

    .line 1644
    :pswitch_19e
    const-string v0, "getDockedStackSide"

    return-object v0

    .line 1640
    :pswitch_1a1
    const-string v0, "getWindowContentFrameStats"

    return-object v0

    .line 1636
    :pswitch_1a4
    const-string v0, "clearWindowContentFrameStats"

    return-object v0

    .line 1632
    :pswitch_1a7
    const-string v0, "isSafeModeEnabled"

    return-object v0

    .line 1628
    :pswitch_1aa
    const-string v0, "lockNow"

    return-object v0

    .line 1624
    :pswitch_1ad
    const-string v0, "hasNavigationBar"

    return-object v0

    .line 1620
    :pswitch_1b0
    const-string/jumbo v0, "setNavBarVirtualKeyHapticFeedbackEnabled"

    return-object v0

    .line 1616
    :pswitch_1b4
    const-string/jumbo v0, "updateStaticPrivacyIndicatorBounds"

    return-object v0

    .line 1612
    :pswitch_1b8
    const-string/jumbo v0, "setRecentsVisibility"

    return-object v0

    .line 1608
    :pswitch_1bc
    const-string v0, "hideTransientBars"

    return-object v0

    .line 1604
    :pswitch_1bf
    const-string/jumbo v0, "requestAssistScreenshot"

    return-object v0

    .line 1600
    :pswitch_1c3
    const-string/jumbo v0, "unregisterSystemGestureExclusionListener"

    return-object v0

    .line 1596
    :pswitch_1c7
    const-string/jumbo v0, "registerSystemGestureExclusionListener"

    return-object v0

    .line 1592
    :pswitch_1cb
    const-string/jumbo v0, "unregisterWallpaperVisibilityListener"

    return-object v0

    .line 1588
    :pswitch_1cf
    const-string/jumbo v0, "registerWallpaperVisibilityListener"

    return-object v0

    .line 1584
    :pswitch_1d3
    const-string/jumbo v0, "mirrorWallpaperSurface"

    return-object v0

    .line 1580
    :pswitch_1d7
    const-string/jumbo v0, "screenshotWallpaper"

    return-object v0

    .line 1576
    :pswitch_1db
    const-string/jumbo v0, "setIgnoreOrientationRequest"

    return-object v0

    .line 1572
    :pswitch_1df
    const-string/jumbo v0, "setFixedToUserRotation"

    return-object v0

    .line 1568
    :pswitch_1e3
    const-string v0, "isDisplayRotationFrozen"

    return-object v0

    .line 1564
    :pswitch_1e6
    const-string/jumbo v0, "thawDisplayRotation"

    return-object v0

    .line 1560
    :pswitch_1ea
    const-string v0, "freezeDisplayRotation"

    return-object v0

    .line 1556
    :pswitch_1ed
    const-string v0, "isRotationFrozen"

    return-object v0

    .line 1552
    :pswitch_1f0
    const-string/jumbo v0, "thawRotation"

    return-object v0

    .line 1548
    :pswitch_1f4
    const-string v0, "freezeRotation"

    return-object v0

    .line 1544
    :pswitch_1f7
    const-string v0, "getPreferredOptionsPanelGravity"

    return-object v0

    .line 1540
    :pswitch_1fa
    const-string/jumbo v0, "registerProposedRotationListener"

    return-object v0

    .line 1536
    :pswitch_1fe
    const-string/jumbo v0, "removeRotationWatcher"

    return-object v0

    .line 1532
    :pswitch_202
    const-string/jumbo v0, "watchRotation"

    return-object v0

    .line 1528
    :pswitch_206
    const-string v0, "getDefaultDisplayRotation"

    return-object v0

    .line 1524
    :pswitch_209
    const-string/jumbo v0, "refreshScreenCaptureDisabled"

    return-object v0

    .line 1520
    :pswitch_20d
    const-string/jumbo v0, "setStrictModeVisualIndicatorPreference"

    return-object v0

    .line 1516
    :pswitch_211
    const-string/jumbo v0, "showStrictModeViolation"

    return-object v0

    .line 1512
    :pswitch_215
    const-string v0, "isInTouchMode"

    return-object v0

    .line 1508
    :pswitch_218
    const-string/jumbo v0, "setInTouchModeOnAllDisplays"

    return-object v0

    .line 1504
    :pswitch_21c
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 1500
    :pswitch_220
    const-string v0, "getCurrentAnimatorScale"

    return-object v0

    .line 1496
    :pswitch_223
    const-string/jumbo v0, "setAnimationScales"

    return-object v0

    .line 1492
    :pswitch_227
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 1488
    :pswitch_22b
    const-string v0, "getAnimationScales"

    return-object v0

    .line 1484
    :pswitch_22e
    const-string v0, "getAnimationScale"

    return-object v0

    .line 1480
    :pswitch_231
    const-string v0, "closeSystemDialogsInDisplay"

    return-object v0

    .line 1476
    :pswitch_234
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1472
    :pswitch_237
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 1468
    :pswitch_23b
    const-string/jumbo v0, "removeKeyguardLockedStateListener"

    return-object v0

    .line 1464
    :pswitch_23f
    const-string v0, "addKeyguardLockedStateListener"

    return-object v0

    .line 1460
    :pswitch_242
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 1456
    :pswitch_245
    const-string v0, "isKeyguardSecure"

    return-object v0

    .line 1452
    :pswitch_248
    const-string v0, "isKeyguardLocked"

    return-object v0

    .line 1448
    :pswitch_24b
    const-string v0, "exitKeyguardSecurely"

    return-object v0

    .line 1444
    :pswitch_24e
    const-string/jumbo v0, "reenableKeyguard"

    return-object v0

    .line 1440
    :pswitch_252
    const-string v0, "disableKeyguard"

    return-object v0

    .line 1436
    :pswitch_255
    const-string/jumbo v0, "stopFreezingScreen"

    return-object v0

    .line 1432
    :pswitch_259
    const-string/jumbo v0, "startFreezingScreen"

    return-object v0

    .line 1428
    :pswitch_25d
    const-string v0, "endProlongedAnimations"

    return-object v0

    .line 1424
    :pswitch_260
    const-string/jumbo v0, "overridePendingAppTransitionRemote"

    return-object v0

    .line 1420
    :pswitch_264
    const-string/jumbo v0, "overridePendingAppTransitionMultiThumbFuture"

    return-object v0

    .line 1416
    :pswitch_268
    const-string/jumbo v0, "setShellRootAccessibilityWindow"

    return-object v0

    .line 1412
    :pswitch_26c
    const-string v0, "addShellRoot"

    return-object v0

    .line 1408
    :pswitch_26f
    const-string/jumbo v0, "setDisplayChangeWindowController"

    return-object v0

    .line 1404
    :pswitch_273
    const-string/jumbo v0, "removeWindowToken"

    return-object v0

    .line 1400
    :pswitch_277
    const-string v0, "addWindowToken"

    return-object v0

    .line 1396
    :pswitch_27a
    const-string v0, "isWindowToken"

    return-object v0

    .line 1392
    :pswitch_27d
    const-string/jumbo v0, "setEventDispatching"

    return-object v0

    .line 1388
    :pswitch_281
    const-string/jumbo v0, "setForcedDisplayScalingMode"

    return-object v0

    .line 1384
    :pswitch_285
    const-string v0, "clearForcedDisplayDensityForUser"

    return-object v0

    .line 1380
    :pswitch_288
    const-string/jumbo v0, "setForcedDisplayDensityForUser"

    return-object v0

    .line 1376
    :pswitch_28c
    const-string v0, "getDisplayIdByUniqueId"

    return-object v0

    .line 1372
    :pswitch_28f
    const-string v0, "getBaseDisplayDensity"

    return-object v0

    .line 1368
    :pswitch_292
    const-string v0, "getInitialDisplayDensity"

    return-object v0

    .line 1364
    :pswitch_295
    const-string v0, "clearForcedDisplaySize"

    return-object v0

    .line 1360
    :pswitch_298
    const-string/jumbo v0, "setForcedDisplaySize"

    return-object v0

    .line 1356
    :pswitch_29c
    const-string v0, "getBaseDisplaySize"

    return-object v0

    .line 1352
    :pswitch_29f
    const-string v0, "getInitialDisplaySize"

    return-object v0

    .line 1348
    :pswitch_2a2
    const-string/jumbo v0, "useBLAST"

    return-object v0

    .line 1344
    :pswitch_2a6
    const-string/jumbo v0, "openSession"

    return-object v0

    .line 1340
    :pswitch_2aa
    const-string v0, "isViewServerRunning"

    return-object v0

    .line 1336
    :pswitch_2ad
    const-string/jumbo v0, "stopViewServer"

    return-object v0

    .line 1332
    :pswitch_2b1
    const-string/jumbo v0, "startViewServer"

    return-object v0

    nop

    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_2b1
        :pswitch_2ad
        :pswitch_2aa
        :pswitch_2a6
        :pswitch_2a2
        :pswitch_29f
        :pswitch_29c
        :pswitch_298
        :pswitch_295
        :pswitch_292
        :pswitch_28f
        :pswitch_28c
        :pswitch_288
        :pswitch_285
        :pswitch_281
        :pswitch_27d
        :pswitch_27a
        :pswitch_277
        :pswitch_273
        :pswitch_26f
        :pswitch_26c
        :pswitch_268
        :pswitch_264
        :pswitch_260
        :pswitch_25d
        :pswitch_259
        :pswitch_255
        :pswitch_252
        :pswitch_24e
        :pswitch_24b
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23b
        :pswitch_237
        :pswitch_234
        :pswitch_231
        :pswitch_22e
        :pswitch_22b
        :pswitch_227
        :pswitch_223
        :pswitch_220
        :pswitch_21c
        :pswitch_218
        :pswitch_215
        :pswitch_211
        :pswitch_20d
        :pswitch_209
        :pswitch_206
        :pswitch_202
        :pswitch_1fe
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f0
        :pswitch_1ed
        :pswitch_1ea
        :pswitch_1e6
        :pswitch_1e3
        :pswitch_1df
        :pswitch_1db
        :pswitch_1d7
        :pswitch_1d3
        :pswitch_1cf
        :pswitch_1cb
        :pswitch_1c7
        :pswitch_1c3
        :pswitch_1bf
        :pswitch_1bc
        :pswitch_1b8
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1ad
        :pswitch_1aa
        :pswitch_1a7
        :pswitch_1a4
        :pswitch_1a1
        :pswitch_19e
        :pswitch_19a
        :pswitch_196
        :pswitch_193
        :pswitch_18f
        :pswitch_18c
        :pswitch_189
        :pswitch_186
        :pswitch_182
        :pswitch_17e
        :pswitch_17a
        :pswitch_176
        :pswitch_172
        :pswitch_16e
        :pswitch_16a
        :pswitch_167
        :pswitch_163
        :pswitch_15f
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_151
        :pswitch_14e
        :pswitch_14a
        :pswitch_146
        :pswitch_142
        :pswitch_13e
        :pswitch_13a
        :pswitch_137
        :pswitch_133
        :pswitch_12f
        :pswitch_12c
        :pswitch_128
        :pswitch_124
        :pswitch_120
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_112
        :pswitch_10e
        :pswitch_10a
        :pswitch_106
        :pswitch_103
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_da
        :pswitch_d6
        :pswitch_d3
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1323
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 8156
    const/16 v0, 0xc1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 2115
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 2119
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.view.IWindowManager"

    .line 2120
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_15

    const v0, 0xffffff

    if-gt v10, v0, :cond_15

    .line 2121
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2123
    :cond_15
    packed-switch v10, :pswitch_data_eb4

    .line 2131
    packed-switch v10, :pswitch_data_eba

    .line 4090
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2127
    :pswitch_20
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2128
    return v14

    .line 4082
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4083
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4084
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDragSurfaceToOverlay(Z)V

    .line 4085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4086
    goto/16 :goto_eb2

    .line 4067
    .end local v0    # "_arg0":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4069
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4071
    .local v1, "_arg1":I
    sget-object v2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 4073
    .local v2, "_arg2":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 4074
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4075
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 4076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4077
    goto/16 :goto_eb2

    .line 4060
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :pswitch_52
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->startLockscreenFingerprintAuth()V

    .line 4061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4062
    goto/16 :goto_eb2

    .line 4053
    :pswitch_5a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 4054
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4055
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4056
    goto/16 :goto_eb2

    .line 4041
    .end local v0    # "_result":Z
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4043
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4045
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4046
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4047
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppContinuityMode(ILjava/lang/String;Z)V

    .line 4048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4049
    goto/16 :goto_eb2

    .line 4027
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4029
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4031
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 4032
    .local v2, "_arg2":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4033
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getAppContinuityMode(ILjava/lang/String;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    .line 4034
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4035
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4036
    goto/16 :goto_eb2

    .line 4018
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_result":I
    :pswitch_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4019
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4020
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setTableModeEnabled(Z)V

    .line 4021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4022
    goto/16 :goto_eb2

    .line 4010
    .end local v0    # "_arg0":Z
    :pswitch_ab
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isTableMode()Z

    move-result v0

    .line 4011
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4012
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4013
    goto/16 :goto_eb2

    .line 4003
    .end local v0    # "_result":Z
    :pswitch_b7
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isFolded()Z

    move-result v0

    .line 4004
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4005
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4006
    goto/16 :goto_eb2

    .line 3995
    .end local v0    # "_result":Z
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3996
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3997
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDisplayColorToSystemProperties(I)V

    .line 3998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3999
    goto/16 :goto_eb2

    .line 3985
    .end local v0    # "_arg0":I
    :pswitch_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3986
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3987
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getRotationLockOrientation(I)I

    move-result v1

    .line 3988
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3989
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3990
    goto/16 :goto_eb2

    .line 3976
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e5
    sget-object v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3977
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3978
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->restoreKeyCustomizationInfo(Ljava/util/List;)V

    .line 3979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3980
    goto/16 :goto_eb2

    .line 3968
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;>;"
    :pswitch_f6
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getBackupKeyCustomizationInfoList()Ljava/util/List;

    move-result-object v0

    .line 3969
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3970
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3971
    goto/16 :goto_eb2

    .line 3956
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;>;"
    :pswitch_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3958
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3960
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3961
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3962
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->clearKeyCustomizationInfoByAction(III)V

    .line 3963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3964
    goto/16 :goto_eb2

    .line 3945
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3947
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3948
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3949
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->clearKeyCustomizationInfoByKeyCode(II)V

    .line 3950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3951
    goto/16 :goto_eb2

    .line 3932
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_12c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3934
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3936
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3937
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3938
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V

    .line 3939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3940
    goto/16 :goto_eb2

    .line 3919
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3921
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3923
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3924
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3925
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->removeKeyCustomizationInfo(III)V

    .line 3926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3927
    goto/16 :goto_eb2

    .line 3907
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_15a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3909
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3910
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3911
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v2

    .line 3912
    .local v2, "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3913
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3914
    goto/16 :goto_eb2

    .line 3893
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    :pswitch_171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3895
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3897
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3898
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3899
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    .line 3900
    .local v3, "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3901
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3902
    goto/16 :goto_eb2

    .line 3879
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    :pswitch_18c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3881
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3883
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3884
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3885
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    .line 3886
    .restart local v3    # "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3887
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3888
    goto/16 :goto_eb2

    .line 3870
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    :pswitch_1a7
    sget-object v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 3871
    .local v0, "_arg0":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3872
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 3873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3874
    goto/16 :goto_eb2

    .line 3855
    .end local v0    # "_arg0":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    :pswitch_1ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3857
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3859
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/InputEvent;

    .line 3861
    .local v2, "_arg2":[Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3862
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3863
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->dispatchSPenGestureEvent(II[Landroid/view/InputEvent;Landroid/os/IBinder;)V

    .line 3864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3865
    goto/16 :goto_eb2

    .line 3846
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Landroid/view/InputEvent;
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :pswitch_1d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    move-result-object v0

    .line 3847
    .local v0, "_arg0":Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3848
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    .line 3849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3850
    goto/16 :goto_eb2

    .line 3837
    .end local v0    # "_arg0":Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :pswitch_1ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    move-result-object v0

    .line 3838
    .restart local v0    # "_arg0":Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3839
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->registerOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    .line 3840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3841
    goto/16 :goto_eb2

    .line 3824
    .end local v0    # "_arg0":Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :pswitch_1ff
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 3826
    .local v0, "_arg0":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3828
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IInputFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;

    move-result-object v2

    .line 3829
    .local v2, "_arg2":Landroid/view/IInputFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3830
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->changeDisplayScale(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V

    .line 3831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3832
    goto/16 :goto_eb2

    .line 3816
    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/view/IInputFilter;
    :pswitch_21e
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getFullScreenAppsSupportMode()I

    move-result v0

    .line 3817
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3818
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3819
    goto/16 :goto_eb2

    .line 3804
    .end local v0    # "_result":I
    :pswitch_22a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3806
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3808
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3809
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3810
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setSupportsFlexPanel(ILjava/lang/String;Z)V

    .line 3811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3812
    goto/16 :goto_eb2

    .line 3792
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3794
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3795
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3796
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v2

    .line 3797
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3798
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3799
    goto/16 :goto_eb2

    .line 3777
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3779
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3781
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3783
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3784
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3785
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V

    .line 3786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3787
    goto/16 :goto_eb2

    .line 3765
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3767
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3768
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3769
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result v2

    .line 3770
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3771
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3772
    goto/16 :goto_eb2

    .line 3753
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_28a
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3755
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3756
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3757
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getMaxAspectRatioPolicyByComponent(Landroid/content/ComponentName;I)I

    move-result v2

    .line 3758
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3759
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3760
    goto/16 :goto_eb2

    .line 3744
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_2a5
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3745
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3746
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDeadzoneHole(Landroid/os/Bundle;)V

    .line 3747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3748
    goto/16 :goto_eb2

    .line 3733
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_2b8
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 3735
    .local v0, "_arg0":Landroid/app/PendingIntent;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 3736
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3737
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 3738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3739
    goto/16 :goto_eb2

    .line 3723
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_2d3
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3724
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3725
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v1

    .line 3726
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3727
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3728
    goto/16 :goto_eb2

    .line 3712
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_2ea
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3714
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3715
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3716
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    .line 3717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3718
    goto/16 :goto_eb2

    .line 3701
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :pswitch_301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3703
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3704
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3705
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->unregisterSystemKeyEvent(ILandroid/content/ComponentName;)V

    .line 3706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3707
    goto/16 :goto_eb2

    .line 3688
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :pswitch_318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3690
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3692
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3693
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3694
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->registerSystemKeyEvent(ILandroid/content/ComponentName;I)V

    .line 3695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3696
    goto/16 :goto_eb2

    .line 3676
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    :pswitch_333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3678
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3679
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3680
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v2

    .line 3681
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3682
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3683
    goto/16 :goto_eb2

    .line 3662
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_34e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3664
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3666
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3667
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3668
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v3

    .line 3669
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3670
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3671
    goto/16 :goto_eb2

    .line 3652
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_36d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3654
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3655
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3656
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->moveDisplayToTop(ILjava/lang/String;)V

    .line 3657
    goto/16 :goto_eb2

    .line 3644
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_37d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getTopFocusedDisplayId()I

    move-result v0

    .line 3645
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3646
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3647
    goto/16 :goto_eb2

    .line 3635
    .end local v0    # "_result":I
    :pswitch_389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3636
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->notifyScreenshotListeners(I)Ljava/util/List;

    move-result-object v1

    .line 3638
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3640
    goto/16 :goto_eb2

    .line 3627
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_39c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3628
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3629
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->markSurfaceSyncGroupReady(Landroid/os/IBinder;)V

    .line 3630
    goto/16 :goto_eb2

    .line 3610
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_3a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3612
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3614
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ISurfaceSyncGroupCompletedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ISurfaceSyncGroupCompletedListener;

    move-result-object v2

    .line 3616
    .local v2, "_arg2":Landroid/window/ISurfaceSyncGroupCompletedListener;
    new-instance v3, Landroid/window/AddToSurfaceSyncGroupResult;

    invoke-direct {v3}, Landroid/window/AddToSurfaceSyncGroupResult;-><init>()V

    .line 3617
    .local v3, "_arg3":Landroid/window/AddToSurfaceSyncGroupResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3618
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->addToSurfaceSyncGroup(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;Landroid/window/AddToSurfaceSyncGroupResult;)Z

    move-result v4

    .line 3619
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3620
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3621
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3622
    goto/16 :goto_eb2

    .line 3600
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/window/ISurfaceSyncGroupCompletedListener;
    .end local v3    # "_arg3":Landroid/window/AddToSurfaceSyncGroupResult;
    .end local v4    # "_result":Z
    :pswitch_3cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3601
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3602
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isGlobalKey(I)Z

    move-result v1

    .line 3603
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3604
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3605
    goto/16 :goto_eb2

    .line 3588
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3590
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/window/ScreenCapture$CaptureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ScreenCapture$CaptureArgs;

    .line 3592
    .local v1, "_arg1":Landroid/window/ScreenCapture$CaptureArgs;
    sget-object v2, Landroid/window/ScreenCapture$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 3593
    .local v2, "_arg2":Landroid/window/ScreenCapture$ScreenCaptureListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3594
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V

    .line 3595
    goto/16 :goto_eb2

    .line 3580
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/window/ScreenCapture$CaptureArgs;
    .end local v2    # "_arg2":Landroid/window/ScreenCapture$ScreenCaptureListener;
    :pswitch_3fe
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isLetterboxBackgroundMultiColored()Z

    move-result v0

    .line 3581
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3582
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3583
    goto/16 :goto_eb2

    .line 3573
    .end local v0    # "_result":Z
    :pswitch_40a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getLetterboxBackgroundColorInArgb()I

    move-result v0

    .line 3574
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3575
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3576
    goto/16 :goto_eb2

    .line 3550
    .end local v0    # "_result":I
    :pswitch_416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3552
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3554
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 3556
    .local v17, "_arg2":Z
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Rect;

    .line 3558
    .local v18, "_arg3":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3560
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3562
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 3564
    .local v21, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 3565
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3566
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowManager$Stub;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Lcom/samsung/android/view/ScreenshotResult;

    move-result-object v0

    .line 3567
    .local v0, "_result":Lcom/samsung/android/view/ScreenshotResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3568
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3569
    goto/16 :goto_eb2

    .line 3541
    .end local v0    # "_result":Lcom/samsung/android/view/ScreenshotResult;
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":Landroid/graphics/Rect;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Z
    :pswitch_45c
    sget-object v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    .line 3542
    .local v0, "_arg0":Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3543
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySizeDensityWithInfo(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V

    .line 3544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3545
    goto/16 :goto_eb2

    .line 3522
    .end local v0    # "_arg0":Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    :pswitch_46f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3524
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3526
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3528
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3530
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 3532
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 3533
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3534
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySizeDensity(IIIIZI)V

    .line 3535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3536
    goto/16 :goto_eb2

    .line 3513
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":I
    :pswitch_49d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3514
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3515
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySizeDensity(I)V

    .line 3516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3517
    goto/16 :goto_eb2

    .line 3505
    .end local v0    # "_arg0":I
    :pswitch_4ac
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getUserDisplayDensity()I

    move-result v0

    .line 3506
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3507
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3508
    goto/16 :goto_eb2

    .line 3496
    .end local v0    # "_result":I
    :pswitch_4b8
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3497
    .local v0, "_arg0":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3498
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getUserDisplaySize(Landroid/graphics/Point;)V

    .line 3499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3500
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3501
    goto/16 :goto_eb2

    .line 3488
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :pswitch_4cb
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getVisibleWindowInfoList()Ljava/util/List;

    move-result-object v0

    .line 3489
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3490
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3491
    goto/16 :goto_eb2

    .line 3480
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    :pswitch_4d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3481
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3482
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setRecentsAppBehindSystemBars(Z)V

    .line 3483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3484
    goto/16 :goto_eb2

    .line 3470
    .end local v0    # "_arg0":Z
    :pswitch_4e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3471
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3472
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3473
    .local v1, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3474
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3475
    goto/16 :goto_eb2

    .line 3461
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Bitmap;
    :pswitch_4f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v0

    .line 3462
    .local v0, "_arg0":Landroid/window/ITaskFpsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3463
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V

    .line 3464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3465
    goto/16 :goto_eb2

    .line 3450
    .end local v0    # "_arg0":Landroid/window/ITaskFpsCallback;
    :pswitch_50c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3452
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v1

    .line 3453
    .local v1, "_arg1":Landroid/window/ITaskFpsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3454
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V

    .line 3455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3456
    goto/16 :goto_eb2

    .line 3443
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/window/ITaskFpsCallback;
    :pswitch_523
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->clearTaskTransitionSpec()V

    .line 3444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3445
    goto/16 :goto_eb2

    .line 3435
    :pswitch_52b
    sget-object v0, Landroid/view/TaskTransitionSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TaskTransitionSpec;

    .line 3436
    .local v0, "_arg0":Landroid/view/TaskTransitionSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3437
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V

    .line 3438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3439
    goto/16 :goto_eb2

    .line 3426
    .end local v0    # "_arg0":Landroid/view/TaskTransitionSpec;
    :pswitch_53e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3427
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3428
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setTaskSnapshotEnabled(Z)V

    .line 3429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3430
    goto/16 :goto_eb2

    .line 3418
    .end local v0    # "_arg0":Z
    :pswitch_54d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result v0

    .line 3419
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3420
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3421
    goto/16 :goto_eb2

    .line 3411
    .end local v0    # "_result":I
    :pswitch_559
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result v0

    .line 3412
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3413
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3414
    goto/16 :goto_eb2

    .line 3403
    .end local v0    # "_result":Z
    :pswitch_565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v0

    .line 3404
    .local v0, "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3405
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 3406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3407
    goto/16 :goto_eb2

    .line 3393
    .end local v0    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    :pswitch_578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v0

    .line 3394
    .restart local v0    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3395
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v1

    .line 3396
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3397
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3398
    goto/16 :goto_eb2

    .line 3384
    .end local v0    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    .end local v1    # "_result":Z
    :pswitch_58f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3385
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3386
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V

    .line 3387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3388
    goto/16 :goto_eb2

    .line 3372
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_59e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3374
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3375
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3376
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 3377
    .local v2, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3378
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3379
    goto/16 :goto_eb2

    .line 3361
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/res/Configuration;
    :pswitch_5b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3363
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3364
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3365
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 3366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3367
    goto/16 :goto_eb2

    .line 3345
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_5c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3347
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3349
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3351
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3352
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3353
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object v4

    .line 3354
    .local v4, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3355
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3356
    goto/16 :goto_eb2

    .line 3336
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/content/res/Configuration;
    :pswitch_5eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3337
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3338
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    .line 3339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3340
    goto/16 :goto_eb2

    .line 3326
    .end local v0    # "_arg0":Z
    :pswitch_5fa
    sget-object v0, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/displayhash/DisplayHash;

    .line 3327
    .local v0, "_arg0":Landroid/view/displayhash/DisplayHash;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3328
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v1

    .line 3329
    .local v1, "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3330
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3331
    goto/16 :goto_eb2

    .line 3318
    .end local v0    # "_arg0":Landroid/view/displayhash/DisplayHash;
    .end local v1    # "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    :pswitch_611
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v0

    .line 3319
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3320
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3321
    goto/16 :goto_eb2

    .line 3308
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_61d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3310
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3311
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3312
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 3313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3314
    goto/16 :goto_eb2

    .line 3293
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3295
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3297
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3299
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v3

    .line 3300
    .local v3, "_arg3":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3301
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    .line 3302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3303
    goto/16 :goto_eb2

    .line 3284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_64f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3285
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3286
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setActiveTransactionTracing(Z)V

    .line 3287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3288
    goto/16 :goto_eb2

    .line 3275
    .end local v0    # "_arg0":Z
    :pswitch_65e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3276
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3277
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    .line 3278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3279
    goto/16 :goto_eb2

    .line 3268
    .end local v0    # "_arg0":I
    :pswitch_66d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    .line 3269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3270
    goto/16 :goto_eb2

    .line 3259
    :pswitch_675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3260
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3261
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getPossibleDisplayInfo(I)Ljava/util/List;

    move-result-object v1

    .line 3262
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3263
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3264
    goto/16 :goto_eb2

    .line 3244
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    :pswitch_688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3246
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3248
    .local v1, "_arg1":Landroid/os/IBinder;
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    .line 3249
    .local v2, "_arg2":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3250
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)Z

    move-result v3

    .line 3251
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3252
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3253
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3254
    goto/16 :goto_eb2

    .line 3233
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/view/InsetsState;
    .end local v3    # "_result":Z
    :pswitch_6a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3235
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3236
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3237
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibleTypes(II)V

    .line 3238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3239
    goto/16 :goto_eb2

    .line 3222
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_6ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3224
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v1

    .line 3225
    .local v1, "_arg1":Landroid/view/IDisplayWindowInsetsController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3226
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    .line 3227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3228
    goto/16 :goto_eb2

    .line 3209
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/IDisplayWindowInsetsController;
    :pswitch_6d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3211
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/view/SurfaceControl;

    invoke-direct {v1}, Landroid/view/SurfaceControl;-><init>()V

    .line 3212
    .local v1, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3213
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v2

    .line 3214
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3215
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3216
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3217
    goto/16 :goto_eb2

    .line 3200
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/SurfaceControl;
    .end local v2    # "_result":Z
    :pswitch_6ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3201
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3202
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    .line 3203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3204
    goto/16 :goto_eb2

    .line 3192
    .end local v0    # "_arg0":Z
    :pswitch_6fb
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result v0

    .line 3193
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3194
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3195
    goto/16 :goto_eb2

    .line 3184
    .end local v0    # "_result":Z
    :pswitch_707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3185
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3186
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    .line 3187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3188
    goto/16 :goto_eb2

    .line 3173
    .end local v0    # "_arg0":Z
    :pswitch_716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3175
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3176
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3177
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    .line 3178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3179
    goto/16 :goto_eb2

    .line 3163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3164
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3165
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result v1

    .line 3166
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3167
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3168
    goto/16 :goto_eb2

    .line 3152
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_73c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3154
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3155
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3156
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setShouldShowSystemDecors(IZ)V

    .line 3157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3158
    goto/16 :goto_eb2

    .line 3142
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_74f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3143
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3144
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result v1

    .line 3145
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3146
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3147
    goto/16 :goto_eb2

    .line 3131
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3133
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3134
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3135
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 3136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3137
    goto/16 :goto_eb2

    .line 3121
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3122
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3123
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result v1

    .line 3124
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3125
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3126
    goto/16 :goto_eb2

    .line 3110
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3112
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3113
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3114
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    .line 3115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3116
    goto/16 :goto_eb2

    .line 3100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_79b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3101
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3102
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result v1

    .line 3103
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3104
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3105
    goto/16 :goto_eb2

    .line 3089
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3091
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3092
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3093
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    .line 3094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3095
    goto/16 :goto_eb2

    .line 3079
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3080
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3081
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result v1

    .line 3082
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3083
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3084
    goto/16 :goto_eb2

    .line 3071
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7d4
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isTransitionTraceEnabled()Z

    move-result v0

    .line 3072
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3073
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3074
    goto/16 :goto_eb2

    .line 3065
    .end local v0    # "_result":Z
    :pswitch_7e0
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopTransitionTrace()V

    .line 3066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3067
    goto/16 :goto_eb2

    .line 3059
    :pswitch_7e8
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->startTransitionTrace()V

    .line 3060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3061
    goto/16 :goto_eb2

    .line 3050
    :pswitch_7f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3052
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3053
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3054
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->startSurfaceAnimation(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3055
    goto/16 :goto_eb2

    .line 3042
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_800
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result v0

    .line 3043
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3044
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3045
    goto/16 :goto_eb2

    .line 3036
    .end local v0    # "_result":Z
    :pswitch_80c
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->saveWindowTraceToFile()V

    .line 3037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    goto/16 :goto_eb2

    .line 3030
    :pswitch_814
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 3031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3032
    goto/16 :goto_eb2

    .line 3024
    :pswitch_81c
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 3025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3026
    goto/16 :goto_eb2

    .line 3016
    :pswitch_824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v0

    .line 3017
    .local v0, "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3018
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 3019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3020
    goto/16 :goto_eb2

    .line 3006
    .end local v0    # "_arg0":Landroid/view/IDisplayWindowListener;
    :pswitch_837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v0

    .line 3007
    .restart local v0    # "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3008
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v1

    .line 3009
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3010
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3011
    goto/16 :goto_eb2

    .line 2997
    .end local v0    # "_arg0":Landroid/view/IDisplayWindowListener;
    .end local v1    # "_result":[I
    :pswitch_84e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v0

    .line 2998
    .local v0, "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2999
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3001
    goto/16 :goto_eb2

    .line 2988
    .end local v0    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v0

    .line 2989
    .restart local v0    # "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2990
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2992
    goto/16 :goto_eb2

    .line 2980
    .end local v0    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_874
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 2981
    .local v0, "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2983
    goto/16 :goto_eb2

    .line 2969
    .end local v0    # "_result":Landroid/graphics/Region;
    :pswitch_880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2971
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2972
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2973
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Ljava/lang/String;I)Z

    move-result v2

    .line 2974
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2975
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2976
    goto/16 :goto_eb2

    .line 2953
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2955
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2957
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2959
    .local v2, "_arg2":I
    new-instance v3, Landroid/view/InputChannel;

    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    .line 2960
    .local v3, "_arg3":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2961
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    .line 2962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2963
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2964
    goto/16 :goto_eb2

    .line 2942
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/InputChannel;
    :pswitch_8b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2944
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v2

    .line 2945
    .local v2, "_arg1":Lcom/android/internal/policy/IShortcutService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2946
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 2947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2948
    goto/16 :goto_eb2

    .line 2930
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :pswitch_8cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2932
    .local v0, "_arg0":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2933
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2934
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 2935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2936
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2937
    goto/16 :goto_eb2

    .line 2919
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :pswitch_8e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 2921
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2922
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2923
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2924
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2925
    goto/16 :goto_eb2

    .line 2908
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "_arg1":I
    :pswitch_8fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2910
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object v1

    .line 2911
    .local v1, "_arg1":Landroid/view/IPinnedTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2912
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    .line 2913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2914
    goto/16 :goto_eb2

    .line 2900
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/IPinnedTaskListener;
    :pswitch_912
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v0

    .line 2901
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2902
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2903
    goto/16 :goto_eb2

    .line 2891
    .end local v0    # "_result":I
    :pswitch_91e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2892
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2893
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v1

    .line 2894
    .local v1, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2895
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2896
    goto/16 :goto_eb2

    .line 2881
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/view/WindowContentFrameStats;
    :pswitch_931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2882
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2883
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v1

    .line 2884
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2885
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2886
    goto/16 :goto_eb2

    .line 2873
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_944
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v0

    .line 2874
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2875
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2876
    goto/16 :goto_eb2

    .line 2865
    .end local v0    # "_result":Z
    :pswitch_950
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2866
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2867
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 2868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2869
    goto/16 :goto_eb2

    .line 2855
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2856
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2857
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result v1

    .line 2858
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2859
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2860
    goto/16 :goto_eb2

    .line 2846
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2847
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2848
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 2849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    goto/16 :goto_eb2

    .line 2836
    .end local v0    # "_arg0":Z
    :pswitch_985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2838
    .local v0, "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    .line 2839
    .local v1, "_arg1":[Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2840
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    .line 2841
    goto/16 :goto_eb2

    .line 2828
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/graphics/Rect;
    :pswitch_999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2829
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2830
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 2831
    goto/16 :goto_eb2

    .line 2820
    .end local v0    # "_arg0":Z
    :pswitch_9a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2821
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2822
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    .line 2823
    goto/16 :goto_eb2

    .line 2810
    .end local v0    # "_arg0":I
    :pswitch_9b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 2811
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2812
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result v1

    .line 2813
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2814
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2815
    goto/16 :goto_eb2

    .line 2799
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_result":Z
    :pswitch_9c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v0

    .line 2801
    .local v0, "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2802
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2803
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2805
    goto/16 :goto_eb2

    .line 2788
    .end local v0    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v1    # "_arg1":I
    :pswitch_9df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v0

    .line 2790
    .restart local v0    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2791
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2792
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2794
    goto/16 :goto_eb2

    .line 2777
    .end local v0    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v1    # "_arg1":I
    :pswitch_9f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v0

    .line 2779
    .local v0, "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2780
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2781
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 2782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2783
    goto/16 :goto_eb2

    .line 2765
    .end local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v1    # "_arg1":I
    :pswitch_a0d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v0

    .line 2767
    .restart local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2768
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2769
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v2

    .line 2770
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2772
    goto/16 :goto_eb2

    .line 2755
    .end local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_a28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2756
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2757
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2758
    .local v1, "_result":Landroid/view/SurfaceControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2759
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2760
    goto/16 :goto_eb2

    .line 2747
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/SurfaceControl;
    :pswitch_a3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2748
    .local v0, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2750
    goto/16 :goto_eb2

    .line 2737
    .end local v0    # "_result":Landroid/graphics/Bitmap;
    :pswitch_a47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2739
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2740
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2741
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    .line 2742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2743
    goto/16 :goto_eb2

    .line 2726
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_a5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2728
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2729
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2730
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    .line 2731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2732
    goto/16 :goto_eb2

    .line 2716
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_a6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2717
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2718
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result v1

    .line 2719
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2720
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2721
    goto/16 :goto_eb2

    .line 2707
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2708
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2709
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(I)V

    .line 2710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2711
    goto/16 :goto_eb2

    .line 2696
    .end local v0    # "_arg0":I
    :pswitch_a8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2698
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2699
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2700
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(II)V

    .line 2701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2702
    goto/16 :goto_eb2

    .line 2688
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_aa2
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v0

    .line 2689
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2690
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2691
    goto/16 :goto_eb2

    .line 2682
    .end local v0    # "_result":Z
    :pswitch_aae
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 2683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    goto/16 :goto_eb2

    .line 2674
    :pswitch_ab6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2675
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2676
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 2677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2678
    goto/16 :goto_eb2

    .line 2664
    .end local v0    # "_arg0":I
    :pswitch_ac5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2665
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2666
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result v1

    .line 2667
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2668
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    goto/16 :goto_eb2

    .line 2652
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_ad8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2654
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v1

    .line 2655
    .local v1, "_arg1":Landroid/view/IRotationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2656
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)I

    move-result v2

    .line 2657
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2658
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2659
    goto/16 :goto_eb2

    .line 2643
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/view/IRotationWatcher;
    .end local v2    # "_result":I
    :pswitch_af3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v0

    .line 2644
    .local v0, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2645
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 2646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2647
    goto/16 :goto_eb2

    .line 2631
    .end local v0    # "_arg0":Landroid/view/IRotationWatcher;
    :pswitch_b06
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v0

    .line 2633
    .restart local v0    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2634
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2635
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v2

    .line 2636
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2637
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2638
    goto/16 :goto_eb2

    .line 2623
    .end local v0    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_b21
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v0

    .line 2624
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2625
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2626
    goto/16 :goto_eb2

    .line 2617
    .end local v0    # "_result":I
    :pswitch_b2d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled()V

    .line 2618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2619
    goto/16 :goto_eb2

    .line 2609
    :pswitch_b35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2610
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2611
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 2612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    goto/16 :goto_eb2

    .line 2600
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2601
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2602
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 2603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2604
    goto/16 :goto_eb2

    .line 2590
    .end local v0    # "_arg0":Z
    :pswitch_b53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2591
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2592
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isInTouchMode(I)Z

    move-result v1

    .line 2593
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2594
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2595
    goto/16 :goto_eb2

    .line 2581
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2582
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2583
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setInTouchModeOnAllDisplays(Z)V

    .line 2584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2585
    goto/16 :goto_eb2

    .line 2570
    .end local v0    # "_arg0":Z
    :pswitch_b75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2572
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2573
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2574
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(ZI)V

    .line 2575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2576
    goto/16 :goto_eb2

    .line 2562
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_b88
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v0

    .line 2563
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2564
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2565
    goto/16 :goto_eb2

    .line 2554
    .end local v0    # "_result":F
    :pswitch_b94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 2555
    .local v0, "_arg0":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2556
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 2557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2558
    goto/16 :goto_eb2

    .line 2543
    .end local v0    # "_arg0":[F
    :pswitch_ba3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2545
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 2546
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2547
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 2548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2549
    goto/16 :goto_eb2

    .line 2535
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_bb6
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v0

    .line 2536
    .local v0, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2537
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2538
    goto/16 :goto_eb2

    .line 2526
    .end local v0    # "_result":[F
    :pswitch_bc2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2527
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2528
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v1

    .line 2529
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2531
    goto/16 :goto_eb2

    .line 2515
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_bd5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2518
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2519
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogsInDisplay(Ljava/lang/String;I)V

    .line 2520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    goto/16 :goto_eb2

    .line 2506
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_be8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2507
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2508
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 2509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2510
    goto/16 :goto_eb2

    .line 2497
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_bf7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2498
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2499
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 2500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2501
    goto/16 :goto_eb2

    .line 2488
    .end local v0    # "_arg0":Z
    :pswitch_c06
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v0

    .line 2489
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2490
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2492
    goto/16 :goto_eb2

    .line 2479
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_c19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v0

    .line 2480
    .restart local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2481
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2483
    goto/16 :goto_eb2

    .line 2468
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_c2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v0

    .line 2470
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 2471
    .local v1, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2472
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 2473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2474
    goto/16 :goto_eb2

    .line 2458
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_c47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2459
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2460
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result v1

    .line 2461
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2462
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2463
    goto/16 :goto_eb2

    .line 2450
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c5a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v0

    .line 2451
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2452
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2453
    goto/16 :goto_eb2

    .line 2442
    .end local v0    # "_result":Z
    :pswitch_c66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v0

    .line 2443
    .local v0, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2444
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 2445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2446
    goto/16 :goto_eb2

    .line 2431
    .end local v0    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :pswitch_c79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2433
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2434
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2435
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 2436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2437
    goto/16 :goto_eb2

    .line 2418
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_c8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2420
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2422
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2423
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2424
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2426
    goto/16 :goto_eb2

    .line 2411
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_ca3
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 2412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2413
    goto/16 :goto_eb2

    .line 2401
    :pswitch_cab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2403
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2404
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2405
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 2406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2407
    goto/16 :goto_eb2

    .line 2394
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_cbe
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 2395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2396
    goto/16 :goto_eb2

    .line 2384
    :pswitch_cc6
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    .line 2386
    .local v0, "_arg0":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2387
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2388
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    .line 2389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2390
    goto/16 :goto_eb2

    .line 2369
    .end local v0    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    .end local v1    # "_arg1":I
    :pswitch_cdd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    .line 2371
    .local v0, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 2373
    .local v1, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2375
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2376
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2377
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    .line 2378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2379
    goto/16 :goto_eb2

    .line 2356
    .end local v0    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v1    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_d00
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2358
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2360
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 2361
    .local v2, "_arg2":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2362
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    .line 2363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2364
    goto/16 :goto_eb2

    .line 2342
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/view/IWindow;
    :pswitch_d1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2344
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 2346
    .local v1, "_arg1":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2347
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2348
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 2349
    .local v3, "_result":Landroid/view/SurfaceControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2351
    goto/16 :goto_eb2

    .line 2333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/IWindow;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/view/SurfaceControl;
    :pswitch_d3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayChangeWindowController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayChangeWindowController;

    move-result-object v0

    .line 2334
    .local v0, "_arg0":Landroid/view/IDisplayChangeWindowController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2335
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDisplayChangeWindowController(Landroid/view/IDisplayChangeWindowController;)V

    .line 2336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2337
    goto/16 :goto_eb2

    .line 2322
    .end local v0    # "_arg0":Landroid/view/IDisplayChangeWindowController;
    :pswitch_d4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2324
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2325
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2326
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 2327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2328
    goto/16 :goto_eb2

    .line 2307
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_d60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2309
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2311
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2313
    .restart local v2    # "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 2314
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2315
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 2316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    goto/16 :goto_eb2

    .line 2297
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_d7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2298
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2299
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result v1

    .line 2300
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2301
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2302
    goto/16 :goto_eb2

    .line 2288
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_d92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2289
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2290
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 2291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2292
    goto/16 :goto_eb2

    .line 2277
    .end local v0    # "_arg0":Z
    :pswitch_da1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2279
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2280
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2281
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 2282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2283
    goto/16 :goto_eb2

    .line 2266
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_db4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2268
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2269
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2270
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 2271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2272
    goto/16 :goto_eb2

    .line 2253
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_dc7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2255
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2257
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2258
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2259
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 2260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2261
    goto/16 :goto_eb2

    .line 2243
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_dde
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2244
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2245
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getDisplayIdByUniqueId(Ljava/lang/String;)I

    move-result v1

    .line 2246
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2247
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    goto/16 :goto_eb2

    .line 2233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_df1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2235
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v1

    .line 2236
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    goto/16 :goto_eb2

    .line 2223
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e04
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2224
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2225
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v1

    .line 2226
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2227
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    goto/16 :goto_eb2

    .line 2214
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2215
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2216
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 2217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2218
    goto/16 :goto_eb2

    .line 2201
    .end local v0    # "_arg0":I
    :pswitch_e26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2203
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2205
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2206
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2207
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 2208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2209
    goto/16 :goto_eb2

    .line 2189
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_e3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2191
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2192
    .local v1, "_arg1":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2193
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 2194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2196
    goto :goto_eb2

    .line 2177
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :pswitch_e53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2179
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2180
    .restart local v1    # "_arg1":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2181
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 2182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2184
    goto :goto_eb2

    .line 2169
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :pswitch_e69
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->useBLAST()Z

    move-result v0

    .line 2170
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2171
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2172
    goto :goto_eb2

    .line 2160
    .end local v0    # "_result":Z
    :pswitch_e74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v0

    .line 2161
    .local v0, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2162
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v1

    .line 2163
    .local v1, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2164
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2165
    goto :goto_eb2

    .line 2152
    .end local v0    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v1    # "_result":Landroid/view/IWindowSession;
    :pswitch_e8a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v0

    .line 2153
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2154
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2155
    goto :goto_eb2

    .line 2145
    .end local v0    # "_result":Z
    :pswitch_e95
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v0

    .line 2146
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2147
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2148
    goto :goto_eb2

    .line 2136
    .end local v0    # "_result":Z
    :pswitch_ea0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2137
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2138
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v1

    .line 2139
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2140
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2141
    nop

    .line 4093
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :goto_eb2
    return v14

    nop

    :pswitch_data_eb4
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_eba
    .packed-switch 0x1
        :pswitch_ea0
        :pswitch_e95
        :pswitch_e8a
        :pswitch_e74
        :pswitch_e69
        :pswitch_e53
        :pswitch_e3d
        :pswitch_e26
        :pswitch_e17
        :pswitch_e04
        :pswitch_df1
        :pswitch_dde
        :pswitch_dc7
        :pswitch_db4
        :pswitch_da1
        :pswitch_d92
        :pswitch_d7f
        :pswitch_d60
        :pswitch_d4d
        :pswitch_d3a
        :pswitch_d1b
        :pswitch_d00
        :pswitch_cdd
        :pswitch_cc6
        :pswitch_cbe
        :pswitch_cab
        :pswitch_ca3
        :pswitch_c8c
        :pswitch_c79
        :pswitch_c66
        :pswitch_c5a
        :pswitch_c47
        :pswitch_c2c
        :pswitch_c19
        :pswitch_c06
        :pswitch_bf7
        :pswitch_be8
        :pswitch_bd5
        :pswitch_bc2
        :pswitch_bb6
        :pswitch_ba3
        :pswitch_b94
        :pswitch_b88
        :pswitch_b75
        :pswitch_b66
        :pswitch_b53
        :pswitch_b44
        :pswitch_b35
        :pswitch_b2d
        :pswitch_b21
        :pswitch_b06
        :pswitch_af3
        :pswitch_ad8
        :pswitch_ac5
        :pswitch_ab6
        :pswitch_aae
        :pswitch_aa2
        :pswitch_a8f
        :pswitch_a80
        :pswitch_a6d
        :pswitch_a5a
        :pswitch_a47
        :pswitch_a3b
        :pswitch_a28
        :pswitch_a0d
        :pswitch_9f6
        :pswitch_9df
        :pswitch_9c8
        :pswitch_9b1
        :pswitch_9a5
        :pswitch_999
        :pswitch_985
        :pswitch_976
        :pswitch_963
        :pswitch_950
        :pswitch_944
        :pswitch_931
        :pswitch_91e
        :pswitch_912
        :pswitch_8fb
        :pswitch_8e4
        :pswitch_8cd
        :pswitch_8b6
        :pswitch_897
        :pswitch_880
        :pswitch_874
        :pswitch_861
        :pswitch_84e
        :pswitch_837
        :pswitch_824
        :pswitch_81c
        :pswitch_814
        :pswitch_80c
        :pswitch_800
        :pswitch_7f0
        :pswitch_7e8
        :pswitch_7e0
        :pswitch_7d4
        :pswitch_7c1
        :pswitch_7ae
        :pswitch_79b
        :pswitch_788
        :pswitch_775
        :pswitch_762
        :pswitch_74f
        :pswitch_73c
        :pswitch_729
        :pswitch_716
        :pswitch_707
        :pswitch_6fb
        :pswitch_6ec
        :pswitch_6d1
        :pswitch_6ba
        :pswitch_6a7
        :pswitch_688
        :pswitch_675
        :pswitch_66d
        :pswitch_65e
        :pswitch_64f
        :pswitch_630
        :pswitch_61d
        :pswitch_611
        :pswitch_5fa
        :pswitch_5eb
        :pswitch_5c8
        :pswitch_5b5
        :pswitch_59e
        :pswitch_58f
        :pswitch_578
        :pswitch_565
        :pswitch_559
        :pswitch_54d
        :pswitch_53e
        :pswitch_52b
        :pswitch_523
        :pswitch_50c
        :pswitch_4f9
        :pswitch_4e6
        :pswitch_4d7
        :pswitch_4cb
        :pswitch_4b8
        :pswitch_4ac
        :pswitch_49d
        :pswitch_46f
        :pswitch_45c
        :pswitch_416
        :pswitch_40a
        :pswitch_3fe
        :pswitch_3e2
        :pswitch_3cf
        :pswitch_3a8
        :pswitch_39c
        :pswitch_389
        :pswitch_37d
        :pswitch_36d
        :pswitch_34e
        :pswitch_333
        :pswitch_318
        :pswitch_301
        :pswitch_2ea
        :pswitch_2d3
        :pswitch_2b8
        :pswitch_2a5
        :pswitch_28a
        :pswitch_273
        :pswitch_258
        :pswitch_241
        :pswitch_22a
        :pswitch_21e
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1ba
        :pswitch_1a7
        :pswitch_18c
        :pswitch_171
        :pswitch_15a
        :pswitch_143
        :pswitch_12c
        :pswitch_119
        :pswitch_102
        :pswitch_f6
        :pswitch_e5
        :pswitch_d2
        :pswitch_c3
        :pswitch_b7
        :pswitch_ab
        :pswitch_9c
        :pswitch_7d
        :pswitch_66
        :pswitch_5a
        :pswitch_52
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method
