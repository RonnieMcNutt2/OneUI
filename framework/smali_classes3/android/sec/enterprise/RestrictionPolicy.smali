.class public Landroid/sec/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final ACTION_RESTRICTION_DISABLE_WFD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RESTRICTION_DISABLE_WFD_INTERNAL"

.field public static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field public static final LOCKSCREEN_MULTIPLE_WIDGET_VIEW:I = 0x1

.field public static final LOCKSCREEN_SHORTCUTS_VIEW:I = 0x2

.field public static final SVOICE_PACKAGE1:Ljava/lang/String; = "com.vlingo.midas"

.field public static final SVOICE_PACKAGE2:Ljava/lang/String; = "com.samsung.voiceserviceplatform"

.field private static TAG:Ljava/lang/String;

.field public static final settingsExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 28

    .line 54
    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 64
    const-string v1, "com.android.settings.ActivityPicker"

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    const-string v4, "com.android.settings.ChooseLockAdditionalPin"

    const-string v5, "com.android.settings.ChooseLockFaceWarning"

    const-string v6, "com.android.settings.ChooseLockGeneric"

    const-string v7, "com.android.settings.ChooseLockMotion"

    const-string v8, "com.android.settings.ChooseLockPassword"

    const-string v9, "com.android.settings.ChooseLockPattern"

    const-string v10, "com.android.settings.ConfirmLockPassword"

    const-string v11, "com.android.settings.ConfirmLockPattern"

    const-string v12, "com.android.settings.DeviceAdminAdd"

    const-string v13, "com.android.settings.bluetooth.DevicePickerActivity"

    const-string v14, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    const-string v15, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    const-string v16, "com.android.settings.wfd.WfdPickerActivity"

    const-string v17, "com.android.settings.bluetooth.BluetoothPairingDialog"

    const-string v18, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    const-string v19, "com.android.settings.bluetooth.BluetoothEnableActivity"

    const-string v20, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    const-string v21, "com.android.settings.fingerprint.FingerprintLockSettings"

    const-string v22, "com.android.settings.fingerprint.RegisterFingerprint"

    const-string v23, "com.android.settings.KnoxSetLockFingerprintPassword"

    const-string v24, "com.android.settings.KnoxChooseLockFingerprintPassword"

    const-string v25, "com.android.settings.notification.RedactionInterstitial"

    const-string v26, "com.android.settings.KnoxFingerprintNotice"

    const-string v27, "com.samsung.settings.PRIVATEBOX_SETTINGS"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAudioRecordAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .line 175
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 176
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 177
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isAudioRecordAllowed(Z)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 181
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_d

    .line 179
    :catch_c
    move-exception v0

    .line 182
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public isBackupAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .line 144
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 145
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 146
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isBackupAllowed(Z)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 150
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_14

    .line 148
    :catch_c
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBackupAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x1

    return v0
.end method

.method public isClipboardAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .line 103
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 104
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 105
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardAllowed(Z)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 109
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_14

    .line 107
    :catch_c
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isClipboardAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x1

    return v0
.end method

.method public isClipboardShareAllowed()Z
    .registers 3

    .line 208
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 209
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 210
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isClipboardShareAllowed()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 214
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_d

    .line 212
    :catch_c
    move-exception v0

    .line 215
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public isFactoryResetAllowed()Z
    .registers 4

    .line 159
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 160
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 161
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isFactoryResetAllowed()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 165
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_14

    .line 163
    :catch_c
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isFactoryResetAllowed returning default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x1

    return v0
.end method

.method public isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 230
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 231
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 232
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 235
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_d

    .line 234
    :catch_c
    move-exception v0

    .line 236
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .line 124
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 125
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 126
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isMicrophoneEnabled(Z)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 130
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_d

    .line 128
    :catch_c
    move-exception v0

    .line 131
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public isMockLocationEnabled()Z
    .registers 3

    .line 220
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 221
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 222
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isMockLocationEnabled()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 225
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_d

    .line 224
    :catch_c
    move-exception v0

    .line 226
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoRecordAllowed(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .line 190
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 191
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 192
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isVideoRecordAllowed(Z)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 196
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_d

    .line 194
    :catch_c
    move-exception v0

    .line 197
    :goto_d
    const/4 v0, 0x1

    return v0
.end method
