.class public Lcom/samsung/android/wifi/SemWifiManager;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;,
        Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;,
        Lcom/samsung/android/wifi/SemWifiManager$WifiUwbCoexStatusCode;,
        Lcom/samsung/android/wifi/SemWifiManager$OptimizerMode;,
        Lcom/samsung/android/wifi/SemWifiManager$IWC;,
        Lcom/samsung/android/wifi/SemWifiManager$BandType;,
        Lcom/samsung/android/wifi/SemWifiManager$HotspotAntennaMode;,
        Lcom/samsung/android/wifi/SemWifiManager$TestModuleId;,
        Lcom/samsung/android/wifi/SemWifiManager$TasPolicy;
    }
.end annotation


# static fields
.field public static final ACTION_AUTO_WIFI_BUBBLE_TIP:Ljava/lang/String; = "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

.field public static final ACTION_AUTO_WIFI_SCAN_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.wifi.AUTO_WIFI_SCAN_STATE_CHANGED"

.field public static final ACTION_DIAGNOSIS_RESULT_AVAILABLE:Ljava/lang/String; = "com.samsung.android.net.wifi.wifiguider.DIAGNOSIS_RESULT_AVAILABLE"

.field public static final ACTION_ISSUE_DETECTED:Ljava/lang/String; = "com.samsung.android.net.wifi.ISSUE_DETECTED"

.field public static final ACTION_NETWORK_CONNECT_FAILED:Ljava/lang/String; = "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

.field public static final ACTION_WIFI_AP_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final ACTION_WIFI_AP_STA_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

.field public static final BAND_2GHZ:I = 0x2

.field public static final BAND_5GHZ:I = 0x5

.field public static final BAND_6GHZ:I = 0x6

.field public static final BASE_ASSOC_REJECT_REASON:I = 0x2710

.field public static final BUSY:I = 0x2

.field private static final DEFAULT_MAX_CLIENT:I = 0xa

.field public static final DEFAULT_PROVISION_VALUE:I = 0x0

.field public static final ERROR:I = 0x0

.field public static final ERROR_AUTH_FAILURE_EAP_CA_CERTIFICATION:I = 0x4

.field public static final ERROR_AUTH_FAILURE_EAP_DOMAIN_MISMATCH:I = 0x5

.field public static final ERROR_AUTH_FAILURE_EAP_FAILURE:I = 0x3

.field public static final ERROR_AUTH_FAILURE_NONE:I = 0x0

.field public static final ERROR_AUTH_FAILURE_TIMEOUT:I = 0x1

.field public static final ERROR_AUTH_FAILURE_WRONG_PSWD:I = 0x2

.field public static final ERROR_DHCP:I = 0x4e20

.field public static final EXTRA_AUTO_WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "autoWifiScanAvailable"

.field public static final EXTRA_BIGDATA_FEATURE:Ljava/lang/String; = "bigdataFeature"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field public static final EXTRA_CATEGORY_ID:Ljava/lang/String; = "categoryId"

.field public static final EXTRA_NET_ID:Ljava/lang/String; = "networkId"

.field public static final EXTRA_PATTERN_ID:Ljava/lang/String; = "patternId"

.field public static final EXTRA_REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_AP_STA_COUNT:Ljava/lang/String; = "STA_COUNT"

.field public static final HOTSPOT_MODE_MIMO:I = 0x1

.field public static final HOTSPOT_MODE_SISO:I = 0x2

.field public static final INTERWORKING_DISABLED_BY_DEVICE:I = 0x2

.field public static final INTERWORKING_DISABLED_BY_USER:I = 0x0

.field public static final INTERWORKING_ENABLED_BY_DEVICE:I = 0x3

.field public static final INTERWORKING_ENABLED_BY_USER:I = 0x1

.field public static final INTERWORKING_INVALID_VALUE:I = -0x1

.field public static final IN_PROGRESS:I = 0x1

.field public static final KEY_GEO_LOCATION_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_GEO_LOCATION_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final MAX_CLIENT:I

.field public static final MHSDBG:Z

.field public static final OPTIMIZER_MODE_DEFAULT:I = 0x0

.field public static final OPTIMIZER_MODE_FORCE_DISABLE:I = 0x2

.field public static final OPTIMIZER_MODE_FORCE_ENABLE:I = 0x1

.field public static final PROVISION_FAILED:I = 0x2

.field public static final PROVISION_SUCCESS:I = 0x1

.field public static final STATUS_WIFI_UWB_COEX_ERROR_INVALID:I = 0x2

.field public static final STATUS_WIFI_UWB_COEX_ERROR_REJECT:I = 0x1

.field public static final STATUS_WIFI_UWB_COEX_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemWifiManager"

.field public static final TAS_POLICY_HIGH:I = 0x2

.field public static final TAS_POLICY_LOW:I = 0x0

.field public static final TAS_POLICY_MID:I = 0x1

.field public static final TAS_POLICY_UNKNOWN:I = -0x1

.field public static final TEST_MODULE_ID_AUTO_WIFI:I = 0x1

.field public static final TEST_MODULE_ID_BACK_OFF_CONTROLLER:I = 0x6

.field public static final TEST_MODULE_ID_MAX:I = 0x7

.field public static final TEST_MODULE_ID_QOS_PROFILE_SHARE:I = 0x2

.field public static final TEST_MODULE_ID_SCPM_MONITOR:I = 0x4

.field public static final TEST_MODULE_ID_SILENT_ROAMING_TEST:I = 0x5

.field public static final TEST_MODULE_ID_WLAN_AUTO_TEST:I = 0x3

.field public static final WIFI_AP_DRIVER_STATE_HANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_AP_STA_DHCPACK_EVENT:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

.field public static final WIFI_CONNECTIVITY_HIDE_ICON_ACTION:Ljava/lang/String; = "com.sec.android.WIFI_ICON_HIDE_ACTION"

.field public static final WIFI_CONNECTIVITY_TEST_REPORT_ACTION:Ljava/lang/String; = "com.sec.android.WIFI_CONNECTIVITY_ACTION"

.field public static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field public static final WIFI_DIALOG_ENABLING_HOTSPOT:I = 0x2

.field public static final WIFI_TCP_MONITOR_ACTION_SETTINGS:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

.field public static final WIFI_TCP_MONITOR_ACTION_USE_MOBILE_DATA:Ljava/lang/String; = "com.samsung.android.net.wifi.TCP_MONITOR_ACTION_USE_MOBILE_DATA"

.field public static final WIFI_TCP_MONITOR_DELETE_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

.field public static final WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED"

.field public static final WIFI_WCM_CONFIGURATION_CHANGED:Ljava/lang/String; = "com.sec.android.WIFI_WCM_CONFIGURATION_CHANGED"

.field public static final WIFI_WCM_ICON_INVALID_FORCED:I = 0x0

.field public static final WIFI_WCM_ICON_NOT_FORCED:I = -0x1

.field public static final WIFI_WCM_ICON_VALID_FORCED:I = 0x1

.field public static final WIFI_WCM_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.sec.android.WIFI_WCM_STATE_CHANGED_ACTION"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/wifi/ISemWifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 189
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 190
    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    sput-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 199
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_MaxClient4MobileAp"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/wifi/SemWifiManager;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifi/ISemWifiManager;Landroid/os/Looper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/wifi/ISemWifiManager;
    .param p3, "ignore"    # Landroid/os/Looper;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    .line 652
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    .line 653
    return-void
.end method

.method private insertHotSpotEnabledHistory(Ljava/lang/String;)V
    .registers 13
    .param p1, "apiSignature"    # Ljava/lang/String;

    .line 2145
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setwifiap packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    sget-boolean v1, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v1, :cond_32

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_32
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2151
    .local v2, "args":Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 2152
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    .line 2153
    .local v4, "callerElement":Ljava/lang/StackTraceElement;
    nop

    .line 2154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2153
    const-string v7, "yy/MM/dd kk:mm:ss "

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2155
    .local v5, "dateTime":Ljava/lang/CharSequence;
    const-string v6, "]\n"

    const-string v7, ":"

    const-string v8, "["

    const-string v9, " setwifiap "

    const-string v10, "extra_log"

    if-eqz v1, :cond_a1

    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2158
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2159
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "():"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2160
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2156
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d9

    .line 2162
    :cond_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2164
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2165
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2162
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    :goto_d9
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 2168
    return-void
.end method


# virtual methods
.method public addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 4
    .param p1, "config"    # Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 3098
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 3100
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 3101
    :catch_b
    move-exception v0

    .line 3102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public allowAutojoinPasspoint(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "allowAutojoin"    # Z

    .line 3181
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3184
    nop

    .line 3185
    return-void

    .line 3182
    :catch_7
    move-exception v0

    .line 3183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blockFccChannelBackoff(Z)V
    .registers 4
    .param p1, "choice"    # Z

    .line 3037
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->blockFccChannelBackoff(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3040
    nop

    .line 3041
    return-void

    .line 3038
    :catch_7
    move-exception v0

    .line 3039
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public canAutoHotspotBeEnabled()Z
    .registers 3

    .line 1983
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->canAutoHotspotBeEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1984
    :catch_7
    move-exception v0

    .line 1985
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public canSmartMHSLocked()I
    .registers 3

    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->canSmartMHSLocked()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1255
    :catch_7
    move-exception v0

    .line 1256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkAppForWiFiOffloading(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4542
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->checkAppForWiFiOffloading(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4545
    nop

    .line 4546
    return-void

    .line 4543
    :catch_7
    move-exception v0

    .line 4544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearAutoHotspotLists()V
    .registers 2

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->clearAutoHotspotLists()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 890
    goto :goto_7

    .line 889
    :catch_6
    move-exception v0

    .line 891
    :goto_7
    return-void
.end method

.method public connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .registers 16
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "mhidden"    # I
    .param p4, "mSecurity"    # I
    .param p5, "mhs_mac"    # Ljava/lang/String;
    .param p6, "Username"    # Ljava/lang/String;
    .param p7, "ver"    # I

    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/wifi/ISemWifiManager;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 1406
    :catch_e
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)Z
    .registers 6
    .param p1, "bleaddr"    # Ljava/lang/String;
    .param p2, "client_mac"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 961
    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    .line 962
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    .line 963
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return v1

    .line 964
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    :catch_14
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .registers 20
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "mhidden"    # I
    .param p4, "mSecurity"    # I
    .param p5, "mhs_mac"    # Ljava/lang/String;
    .param p6, "user_name"    # Ljava/lang/String;
    .param p7, "ver"    # I
    .param p8, "wifiprofileshare"    # Z

    .line 792
    move-object v1, p0

    :try_start_1
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/wifi/ISemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    return v0

    .line 793
    :catch_14
    move-exception v0

    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public disableRandomMac()V
    .registers 3

    .line 3656
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->disableRandomMac()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3659
    nop

    .line 3660
    return-void

    .line 3657
    :catch_7
    move-exception v0

    .line 3658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disconnectApBlockAutojoin(Z)Z
    .registers 4
    .param p1, "block"    # Z

    .line 4284
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->disconnectApBlockAutojoin(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4285
    :catch_7
    move-exception v0

    .line 4286
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public enableHotspotTsfInfo(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 4653
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->enableHotspotTsfInfo(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4656
    nop

    .line 4657
    return-void

    .line 4654
    :catch_7
    move-exception v0

    .line 4655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public externalTwtInterface(ILjava/lang/String;)V
    .registers 5
    .param p1, "cmdId"    # I
    .param p2, "cmdLine"    # Ljava/lang/String;

    .line 4571
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->externalTwtInterface(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4574
    nop

    .line 4575
    return-void

    .line 4572
    :catch_7
    move-exception v0

    .line 4573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public factoryReset()V
    .registers 3

    .line 3132
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->factoryReset()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3135
    nop

    .line 3136
    return-void

    .line 3133
    :catch_7
    move-exception v0

    .line 3134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAdvancedAutohotspotConnectSettings()I
    .registers 3

    .line 816
    const/4 v0, -0x1

    .line 818
    .local v0, "val":I
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getAdvancedAutohotspotConnectSettings()I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 820
    goto :goto_a

    .line 819
    :catch_9
    move-exception v1

    .line 821
    :goto_a
    return v0
.end method

.method public getAdvancedAutohotspotLCDSettings()I
    .registers 3

    .line 852
    const/4 v0, -0x1

    .line 854
    .local v0, "val":I
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getAdvancedAutohotspotLCDSettings()I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 856
    goto :goto_a

    .line 855
    :catch_9
    move-exception v1

    .line 857
    :goto_a
    return v0
.end method

.method public getAntInfo()Ljava/lang/String;
    .registers 3

    .line 2177
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAntInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2178
    :catch_7
    move-exception v0

    .line 2179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAutoShareDump()Ljava/lang/String;
    .registers 3

    .line 3435
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAutoShareDump()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3436
    :catch_7
    move-exception v0

    .line 3437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAutoWifiDump()Ljava/lang/String;
    .registers 3

    .line 3491
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAutoWifiDump()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3492
    :catch_7
    move-exception v0

    .line 3493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getChannelUtilization()I
    .registers 3

    .line 3783
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getChannelUtilization()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3784
    :catch_7
    move-exception v0

    .line 3785
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConfiguredNetworkLocations()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 3508
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getConfiguredNetworkLocations()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3509
    :catch_7
    move-exception v0

    .line 3510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 3160
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    .line 3161
    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3162
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lcom/samsung/android/wifi/SemWifiConfiguration;>;"
    if-nez v0, :cond_d

    .line 3163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3165
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 3166
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lcom/samsung/android/wifi/SemWifiConfiguration;>;"
    :catch_12
    move-exception v0

    .line 3167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "category"    # Ljava/lang/String;

    .line 3266
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3267
    :catch_7
    move-exception v0

    .line 3268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 3

    .line 3948
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3949
    :catch_7
    move-exception v0

    .line 3950
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 3

    .line 3933
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCountryRev()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3934
    :catch_7
    move-exception v0

    .line 3935
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCtlFeatureState()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4595
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCtlFeatureState()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4596
    :catch_7
    move-exception v0

    .line 4597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentStateAndEnterTime()Ljava/lang/String;
    .registers 3

    .line 4943
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCurrentStateAndEnterTime()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4944
    :catch_7
    move-exception v0

    .line 4945
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentStatusMode()I
    .registers 3

    .line 3698
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCurrentStatusMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3699
    :catch_7
    move-exception v0

    .line 3700
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentWifiRouterInfo()Landroid/os/Bundle;
    .registers 3

    .line 4878
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCurrentWifiRouterInfo()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4879
    :catch_7
    move-exception v0

    .line 4880
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDailyUsageInfo(I)Ljava/lang/String;
    .registers 4
    .param p1, "daysAgo"    # I

    .line 4969
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4970
    :catch_7
    move-exception v0

    .line 4971
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDataConsumedValues()[J
    .registers 3

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getDataConsumedValues()[J

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 722
    :catch_7
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDcxoCalibrationData()Ljava/lang/String;
    .registers 3

    .line 4865
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getDcxoCalibrationData()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4866
    :catch_7
    move-exception v0

    .line 4867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDiagnosisResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3295
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getDiagnosisResults()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3296
    :catch_7
    move-exception v0

    .line 3297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEasySetupScanSettings()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation

    .line 3642
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getEasySetupScanSettings()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3643
    :catch_7
    move-exception v0

    .line 3644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getFactoryMacAddress()Ljava/lang/String;
    .registers 3

    .line 3006
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3007
    :catch_7
    move-exception v0

    .line 3008
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getFrameburstInfo()Ljava/lang/String;
    .registers 3

    .line 2190
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getFrameburstInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2191
    :catch_7
    move-exception v0

    .line 2192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getHotspotAntMode()I
    .registers 2

    .line 2537
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getHotspotAntMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2538
    :catch_7
    move-exception v0

    .line 2540
    const/4 v0, -0x1

    return v0
.end method

.method public getIWCQTables()Ljava/lang/String;
    .registers 3

    .line 4210
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getIWCQTables()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4211
    :catch_7
    move-exception v0

    .line 4212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIndoorStatus()I
    .registers 3

    .line 2830
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getIndoorStatus()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2831
    :catch_7
    move-exception v0

    .line 2832
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIssueDetectorDump(I)Ljava/lang/String;
    .registers 4
    .param p1, "maxCount"    # I

    .line 3213
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3214
    :catch_7
    move-exception v0

    .line 3215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMHSClientTrafficDetails()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMHSClientTrafficDetails()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 696
    :catch_7
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMHSConfig(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "aJson"    # Lorg/json/JSONObject;

    .line 2574
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->getMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 2575
    :catch_10
    move-exception v0

    .line 2577
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxTdlsSession()I
    .registers 3

    .line 4795
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMaxTdlsSession()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4796
    :catch_7
    move-exception v0

    .line 4797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMcfConnectedStatus(Ljava/lang/String;)I
    .registers 4
    .param p1, "mhs_mac"    # Ljava/lang/String;

    .line 1417
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1418
    :catch_7
    move-exception v0

    .line 1419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 1429
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1430
    :catch_7
    move-exception v0

    .line 1431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMcfScanDetail()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 1369
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1370
    :catch_7
    move-exception v0

    .line 1371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMonthlyDataUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1627
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1628
    :catch_7
    move-exception v0

    .line 1629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNRTTrafficbandwidth()I
    .registers 3

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNRTTrafficbandwidth()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 709
    :catch_7
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkLastUpdatedTimeMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4930
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNetworkLastUpdatedTimeMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4931
    :catch_7
    move-exception v0

    .line 4932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkUsageInfo(Ljava/lang/String;)[J
    .registers 4
    .param p1, "configKey"    # Ljava/lang/String;

    .line 4956
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getNetworkUsageInfo(Ljava/lang/String;)[J

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4957
    :catch_7
    move-exception v0

    .line 4958
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNumOfTdlsSession()I
    .registers 3

    .line 4810
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNumOfTdlsSession()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4811
    :catch_7
    move-exception v0

    .line 4812
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNumOfWifiAnt()I
    .registers 3

    .line 4840
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNumOfWifiAnt()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4841
    :catch_7
    move-exception v0

    .line 4842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOptimizerForceControlMode()I
    .registers 3

    .line 4354
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getOptimizerForceControlMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4355
    :catch_7
    move-exception v0

    .line 4356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOptimizerState()[I
    .registers 3

    .line 4368
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getOptimizerState()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4369
    :catch_7
    move-exception v0

    .line 4370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProfileShareDump()Ljava/lang/String;
    .registers 3

    .line 3421
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getProfileShareDump()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3422
    :catch_7
    move-exception v0

    .line 3423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProvisionSuccess()I
    .registers 3

    .line 2777
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getProvisionSuccess()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2778
    :catch_7
    move-exception v0

    .line 2779
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getPsmInfo()Ljava/lang/String;
    .registers 3

    .line 2203
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getPsmInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2204
    :catch_7
    move-exception v0

    .line 2205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getQoSScores(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 3310
    .local p1, "bssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3311
    :catch_7
    move-exception v0

    .line 3312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRVFModeStatus()I
    .registers 3

    .line 2842
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRVFModeStatus()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2843
    :catch_7
    move-exception v0

    .line 2844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRoamBand()I
    .registers 3

    .line 3903
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamBand()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3904
    :catch_7
    move-exception v0

    .line 3905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRoamDelta()I
    .registers 3

    .line 3843
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamDelta()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3844
    :catch_7
    move-exception v0

    .line 3845
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRoamScanPeriod()I
    .registers 3

    .line 3873
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamScanPeriod()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3874
    :catch_7
    move-exception v0

    .line 3875
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRoamTrigger()I
    .registers 3

    .line 3813
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamTrigger()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3814
    :catch_7
    move-exception v0

    .line 3815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRssi(Ljava/lang/String;)I
    .registers 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 4513
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getRssi(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4514
    :catch_7
    move-exception v0

    .line 4515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getServiceDetectionResult()[I
    .registers 3

    .line 4382
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getServiceDetectionResult()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4383
    :catch_7
    move-exception v0

    .line 4384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSilentRoamingDump(I)Ljava/lang/String;
    .registers 4
    .param p1, "maxCount"    # I

    .line 3228
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSilentRoamingDump(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3229
    :catch_7
    move-exception v0

    .line 3230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSmartApConnectedStatus(Ljava/lang/String;)I
    .registers 4
    .param p1, "mhs_mac"    # Ljava/lang/String;

    .line 1907
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1908
    :catch_7
    move-exception v0

    .line 1909
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .registers 4
    .param p1, "clientMAC"    # Ljava/lang/String;

    .line 1346
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1347
    :catch_7
    move-exception v0

    .line 1348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSmartD2DClientConnectedStatus(Ljava/lang/String;)I
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 976
    :catch_7
    move-exception v0

    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSmartMHSLockStatus()I
    .registers 3

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartMHSLockStatus()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1243
    :catch_7
    move-exception v0

    .line 1244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSoftApBands()[I
    .registers 3

    .line 1968
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApBands()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1969
    :catch_7
    move-exception v0

    .line 1970
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 3

    .line 1953
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1954
    :catch_7
    move-exception v0

    .line 1955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .line 2491
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2492
    :catch_7
    move-exception v0

    .line 2494
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTWTParams()[I
    .registers 3

    .line 4583
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getTWTParams()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4584
    :catch_7
    move-exception v0

    .line 4585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTasAverage()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4981
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getTasAverage()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4982
    :catch_7
    move-exception v0

    .line 4983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTcpMonitorAllSocketHistory(I)Ljava/lang/String;
    .registers 4
    .param p1, "count"    # I

    .line 4709
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4710
    :catch_7
    move-exception v0

    .line 4711
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTcpMonitorDnsHistory(I)Ljava/lang/String;
    .registers 4
    .param p1, "count"    # I

    .line 4681
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4682
    :catch_7
    move-exception v0

    .line 4683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;
    .registers 4
    .param p1, "count"    # I

    .line 4695
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4696
    :catch_7
    move-exception v0

    .line 4697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTopHotspotClientsToday(II)Ljava/util/List;
    .registers 5
    .param p1, "topConnectedAndDisconnected"    # I
    .param p2, "maxListLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1495
    :catch_7
    move-exception v0

    .line 1496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTopHotspotClientsTodayAsString(II)Ljava/lang/String;
    .registers 5
    .param p1, "topConnectedAndDisconnected"    # I
    .param p2, "maxListLength"    # I

    .line 1505
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1506
    :catch_7
    move-exception v0

    .line 1507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .registers 7
    .param p1, "timestampInMilliSecsDate1"    # J
    .param p3, "timestampInMilliSecsDate2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1616
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1617
    :catch_7
    move-exception v0

    .line 1618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getValidState()I
    .registers 3

    .line 3712
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getValidState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3713
    :catch_7
    move-exception v0

    .line 3714
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "propName"    # Ljava/lang/String;

    .line 2216
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2217
    :catch_7
    move-exception v0

    .line 2218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWcmEverQualityTested()I
    .registers 3

    .line 3670
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWcmEverQualityTested()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3671
    :catch_7
    move-exception v0

    .line 3672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApBleD2DScanDetail()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 925
    :catch_7
    move-exception v0

    .line 926
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApBleScanDetail()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 750
    :catch_7
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApChannel()I
    .registers 2

    .line 2478
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApChannel()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2479
    :catch_7
    move-exception v0

    .line 2481
    const/4 v0, -0x1

    return v0
.end method

.method public getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 1483
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1484
    :catch_7
    move-exception v0

    .line 1485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApConnectedStationCount()I
    .registers 3

    .line 2803
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApConnectedStationCount()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2804
    :catch_7
    move-exception v0

    .line 2805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApDailyDataLimit()J
    .registers 3

    .line 1528
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApDailyDataLimit()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1529
    :catch_7
    move-exception v0

    .line 1530
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApFreq()I
    .registers 2

    .line 2503
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApFreq()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2504
    :catch_7
    move-exception v0

    .line 2506
    const/4 v0, -0x1

    return v0
.end method

.method public getWifiApGuestPassword()Ljava/lang/String;
    .registers 3

    .line 1561
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1562
    :catch_7
    move-exception v0

    .line 1563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApInterfaceName()Ljava/lang/String;
    .registers 3

    .line 2729
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2730
    :catch_7
    move-exception v0

    .line 2731
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWifiApIsolate()Z
    .registers 3

    .line 2701
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApIsolate()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2702
    :catch_7
    move-exception v0

    .line 2703
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getWifiApLOHSState()I
    .registers 3

    .line 2818
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApLOHSState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2819
    :catch_7
    move-exception v0

    .line 2820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApMacAclMode()I
    .registers 3

    .line 2623
    const/4 v0, 0x0

    .line 2625
    .local v0, "retValue":I
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMacAclMode()I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 2628
    goto :goto_b

    .line 2626
    :catch_9
    move-exception v1

    .line 2627
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 2629
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_b
    return v0
.end method

.method public getWifiApMaxClient()I
    .registers 4

    .line 2338
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMaxClient()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2339
    :catch_7
    move-exception v0

    .line 2340
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWifiManager"

    const-string v2, "getWifiApMaxClient() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    .end local v0    # "e":Landroid/os/RemoteException;
    const/16 v0, 0xa

    return v0
.end method

.method public getWifiApMaxClientFromFramework()I
    .registers 3

    .line 2765
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2766
    :catch_7
    move-exception v0

    .line 2767
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/wifi/SemWifiManager;->MAX_CLIENT:I

    return v1
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 2

    .line 2439
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2440
    :catch_7
    move-exception v0

    .line 2442
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiApStaListDetail()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2464
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2465
    :catch_7
    move-exception v0

    .line 2467
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiApState()I
    .registers 3

    .line 1923
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1924
    :catch_7
    move-exception v0

    .line 1925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApTodaysTotalDataUsage()J
    .registers 3

    .line 1516
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApTodaysTotalDataUsage()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1517
    :catch_7
    move-exception v0

    .line 1518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApWarningActivityRunningState()I
    .registers 3

    .line 909
    const/4 v0, 0x0

    .line 911
    .local v0, "val":I
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApWarningActivityRunningState()I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 913
    goto :goto_a

    .line 912
    :catch_9
    move-exception v1

    .line 914
    :goto_a
    return v0
.end method

.method public getWifiApWpsPbc()Z
    .registers 3

    .line 2677
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApWpsPbc()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2678
    :catch_7
    move-exception v0

    .line 2679
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getWifiCid()Ljava/lang/String;
    .registers 3

    .line 2978
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiCid()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2979
    :catch_7
    move-exception v0

    .line 2980
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiEnableHistory()Ljava/lang/String;
    .registers 3

    .line 3083
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiEnableHistory()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3084
    :catch_7
    move-exception v0

    .line 3085
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiFirmwareVersion()Ljava/lang/String;
    .registers 3

    .line 2964
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2965
    :catch_7
    move-exception v0

    .line 2966
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiIconVisibility()I
    .registers 3

    .line 3684
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiIconVisibility()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3685
    :catch_7
    move-exception v0

    .line 3686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p1, "configKey"    # Ljava/lang/String;

    .line 4891
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4892
    :catch_7
    move-exception v0

    .line 4893
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configKey"    # Ljava/lang/String;

    .line 4904
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4905
    :catch_7
    move-exception v0

    .line 4906
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configKey"    # Ljava/lang/String;

    .line 4917
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4918
    :catch_7
    move-exception v0

    .line 4919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiStaInfo()Ljava/lang/String;
    .registers 3

    .line 4826
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiStaInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4827
    :catch_7
    move-exception v0

    .line 4828
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiSupportedFeatureSet()Ljava/lang/String;
    .registers 3

    .line 2026
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiSupportedFeatureSet()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2027
    :catch_7
    move-exception v0

    .line 2028
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiUsabilityStatsEntry(I)Ljava/lang/String;
    .registers 4
    .param p1, "size"    # I

    .line 4734
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4735
    :catch_7
    move-exception v0

    .line 4736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiVersions()Ljava/lang/String;
    .registers 3

    .line 2992
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiVersions()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2993
    :catch_7
    move-exception v0

    .line 2994
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasConfiguredNetworkLocations(Ljava/lang/String;)Z
    .registers 4
    .param p1, "wifiConfigKey"    # Ljava/lang/String;

    .line 3525
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3526
    :catch_7
    move-exception v0

    .line 3527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAvailableAutoWifiScan()Z
    .registers 3

    .line 3476
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isAvailableAutoWifiScan()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3477
    :catch_7
    move-exception v0

    .line 3478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAvailableTdls()Z
    .registers 3

    .line 4749
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isAvailableTdls()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4750
    :catch_7
    move-exception v0

    .line 4751
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isClientAcceptedWifiProfileSharing(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 1278
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->isClientAcceptedWifiProfileSharing(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1281
    nop

    .line 1282
    return-void

    .line 1279
    :catch_7
    move-exception v0

    .line 1280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isGripSensorMonitorEnabled()Z
    .registers 3

    .line 4113
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isGripSensorMonitorEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4114
    :catch_7
    move-exception v0

    .line 4115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isIndividualAppSupported()Z
    .registers 3

    .line 4723
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isIndividualAppSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4724
    :catch_7
    move-exception v0

    .line 4725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isMCFClientAutohotspotSupported()Z
    .registers 3

    .line 1357
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1358
    :catch_7
    move-exception v0

    .line 1359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isNCHOModeEnabled()Z
    .registers 3

    .line 3961
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isNCHOModeEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3962
    :catch_7
    move-exception v0

    .line 3963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isOverAllMhsDataLimitReached()Z
    .registers 3

    .line 1639
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isOverAllMhsDataLimitReached()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1640
    :catch_7
    move-exception v0

    .line 1641
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isOverAllMhsDataLimitSet()Z
    .registers 3

    .line 1651
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isOverAllMhsDataLimitSet()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1652
    :catch_7
    move-exception v0

    .line 1653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isP2pConnected()Z
    .registers 3

    .line 2012
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isP2pConnected()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2013
    :catch_7
    move-exception v0

    .line 2014
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isScanningEnabled()Z
    .registers 3

    .line 3580
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isScanningEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3581
    :catch_7
    move-exception v0

    .line 3582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSupportedAutoWifi()Z
    .registers 3

    .line 3463
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedAutoWifi()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3464
    :catch_7
    move-exception v0

    .line 3465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSupportedProfileRequest()Z
    .registers 3

    .line 3406
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedProfileRequest()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3407
    :catch_7
    move-exception v0

    .line 3408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSupportedQoSProvider()Z
    .registers 3

    .line 3391
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedQoSProvider()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3392
    :catch_7
    move-exception v0

    .line 3393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSwitchToMobileDataDefaultOff()Z
    .registers 3

    .line 5051
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSwitchToMobileDataDefaultOff()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5052
    :catch_7
    move-exception v0

    .line 5053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUploadModeEnabled()Z
    .registers 3

    .line 4270
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isUploadModeEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4271
    :catch_7
    move-exception v0

    .line 4272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWesModeEnabled()Z
    .registers 3

    .line 4016
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWesModeEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4017
    :catch_7
    move-exception v0

    .line 4018
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWiderBandwidthTdlsSupported()Z
    .registers 3

    .line 4764
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWiderBandwidthTdlsSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4765
    :catch_7
    move-exception v0

    .line 4766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiApConcurrentSupported()Z
    .registers 2

    .line 2377
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2378
    :catch_7
    move-exception v0

    .line 2380
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiApEnabled()Z
    .registers 3

    .line 2789
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2790
    :catch_7
    move-exception v0

    .line 2791
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isWifiApEnabledWithDualBand()Z
    .registers 3

    .line 2041
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApEnabledWithDualBand()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2042
    :catch_7
    move-exception v0

    .line 2043
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiApGuestClient(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 1998
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApGuestClient(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1999
    :catch_7
    move-exception v0

    .line 2000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiApGuestModeEnabled()Z
    .registers 3

    .line 1572
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApGuestModeEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1573
    :catch_7
    move-exception v0

    .line 1574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiApGuestModeIsolationEnabled()Z
    .registers 3

    .line 1594
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApGuestModeIsolationEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1595
    :catch_7
    move-exception v0

    .line 1596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiApMacAclEnabled()Z
    .registers 3

    .line 2637
    const/4 v0, 0x0

    .line 2639
    .local v0, "retValue":Z
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApMacAclEnabled()Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 2642
    goto :goto_b

    .line 2640
    :catch_9
    move-exception v1

    .line 2641
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 2643
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_b
    return v0
.end method

.method public isWifiApWpa3Supported()Z
    .registers 3

    .line 2950
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApWpa3Supported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2951
    :catch_7
    move-exception v0

    .line 2952
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isWifiDeveloperModeEnabled()Z
    .registers 3

    .line 2938
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiDeveloperModeEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2939
    :catch_7
    move-exception v0

    .line 2940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiSharingEnabled()Z
    .registers 3

    .line 1939
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1940
    :catch_7
    move-exception v0

    .line 1941
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiSharingLiteSupported()Z
    .registers 2

    .line 2401
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2402
    :catch_7
    move-exception v0

    .line 2404
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiSharingSupported()Z
    .registers 2

    .line 2389
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2390
    :catch_7
    move-exception v0

    .line 2392
    const/4 v0, 0x0

    return v0
.end method

.method public linkQosQuery(JJJILjava/lang/Long;)Z
    .registers 21
    .param p1, "payloadBytes"    # J
    .param p3, "desiredLatencyMs"    # J
    .param p5, "desiredThroughputMbps"    # J
    .param p7, "queryType"    # I
    .param p8, "timeWindowMs"    # Ljava/lang/Long;

    .line 4607
    move-object v1, p0

    :try_start_1
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-interface/range {v2 .. v11}, Lcom/samsung/android/wifi/ISemWifiManager;->linkQosQuery(JJJIJ)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_12

    return v0

    .line 4608
    :catch_12
    move-exception v0

    .line 4609
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "add_or_delete"    # I
    .param p4, "allow_or_deny"    # I

    .line 2587
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2588
    :catch_7
    move-exception v0

    .line 2589
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public notifyConnect(ILjava/lang/String;)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 4667
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->notifyConnect(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4670
    nop

    .line 4671
    return-void

    .line 4668
    :catch_7
    move-exception v0

    .line 4669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyReachabilityLost()V
    .registers 3

    .line 4077
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->notifyReachabilityLost()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4080
    nop

    .line 4081
    return-void

    .line 4078
    :catch_7
    move-exception v0

    .line 4079
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public readWifiApMacAclList(I)Ljava/util/List;
    .registers 4
    .param p1, "allow_or_deny"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2600
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->readWifiApMacAclList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2601
    :catch_7
    move-exception v0

    .line 2602
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public registerClientDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 8
    .param p1, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "clientMac"    # Ljava/lang/String;

    .line 1733
    if-eqz p1, :cond_4b

    .line 1734
    if-eqz p2, :cond_43

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClientDataUsageCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;

    move-result-object v0

    .line 1738
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;)V

    .line 1739
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1741
    .local v1, "binder":Landroid/os/Binder;
    :try_start_32
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3d

    .line 1744
    nop

    .line 1745
    return-void

    .line 1742
    :catch_3d
    move-exception v2

    .line 1743
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1734
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
    .end local v1    # "binder":Landroid/os/Binder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1733
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClientListDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;Ljava/util/concurrent/Executor;II)V
    .registers 13
    .param p1, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "topConnectedAndDisconnected"    # I
    .param p4, "maxListLength"    # I

    .line 1697
    if-eqz p1, :cond_4e

    .line 1698
    if-eqz p2, :cond_46

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClientListDataUsageCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;

    move-result-object v0

    .line 1702
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;)V

    .line 1703
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 1705
    .local v3, "binder":Landroid/os/Binder;
    :try_start_32
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move-object v4, v0

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/wifi/ISemWifiManager;->registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3e} :catch_40

    .line 1708
    nop

    .line 1709
    return-void

    .line 1706
    :catch_40
    move-exception v1

    .line 1707
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1698
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "binder":Landroid/os/Binder;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1697
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .registers 5
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    .line 3326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p2, :cond_15

    .line 3331
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    .line 3334
    nop

    .line 3335
    return-void

    .line 3332
    :catch_f
    move-exception v0

    .line 3333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3327
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request AP\'s bssid or callback should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;

    .line 5022
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;

    move-result-object v0

    .line 5023
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;)V

    .line 5024
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 5027
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;
    goto :goto_17

    .line 5025
    :catch_13
    move-exception v0

    .line 5026
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5028
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public registerWifiApDataUsageListener(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1861
    if-eqz p1, :cond_4b

    .line 1862
    if-eqz p2, :cond_43

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerApDataUsageChangedListener: listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->getClient()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    move-result-object v0

    .line 1866
    .local v0, "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->init(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;)V

    .line 1867
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1869
    .local v1, "binder":Landroid/os/Binder;
    :try_start_32
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3}, Lcom/samsung/android/wifi/ISemWifiManager;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3d

    .line 1872
    nop

    .line 1873
    return-void

    .line 1870
    :catch_3d
    move-exception v2

    .line 1871
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1862
    .end local v0    # "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    .end local v1    # "binder":Landroid/os/Binder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1861
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1301
    if-eqz p1, :cond_4b

    .line 1302
    if-eqz p2, :cond_43

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerWifiApSmartCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    .line 1306
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    .line 1307
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1309
    .local v1, "binder":Landroid/os/Binder;
    :try_start_32
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3}, Lcom/samsung/android/wifi/ISemWifiManager;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3d

    .line 1312
    nop

    .line 1313
    return-void

    .line 1310
    :catch_3d
    move-exception v2

    .line 1311
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1302
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    .end local v1    # "binder":Landroid/os/Binder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeExcludedNetwork(I)V
    .registers 4
    .param p1, "networkId"    # I

    .line 3768
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->removeExcludedNetwork(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3771
    nop

    .line 3772
    return-void

    .line 3769
    :catch_7
    move-exception v0

    .line 3770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeFactoryMacAddress()Z
    .registers 3

    .line 2240
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->removeFactoryMacAddress()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2241
    :catch_7
    move-exception v0

    .line 2242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeNetwork(Ljava/lang/String;)Z
    .registers 4
    .param p1, "configKey"    # Ljava/lang/String;

    .line 3116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 3118
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->removeNetwork(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 3119
    :catch_f
    move-exception v0

    .line 3120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .line 4483
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4484
    :catch_7
    move-exception v0

    .line 4485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportHotspotDumpLogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "logs"    # Ljava/lang/String;

    .line 2890
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->reportHotspotDumpLogs(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2893
    nop

    .line 2894
    return-void

    .line 2891
    :catch_7
    move-exception v0

    .line 2892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportIssue(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "reportId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 3196
    if-nez p2, :cond_3

    return-void

    .line 3198
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->reportIssue(ILandroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 3201
    nop

    .line 3202
    return-void

    .line 3199
    :catch_a
    move-exception v0

    .line 3200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 3022
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3025
    nop

    .line 3026
    return-void

    .line 3023
    :catch_7
    move-exception v0

    .line 3024
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportRttStartRangingCallEvent(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3071
    nop

    .line 3072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "unknown"

    goto :goto_b

    :cond_a
    move-object v0, p1

    .line 3071
    :goto_b
    const-string v1, "RAPP"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    return-void
.end method

.method public reportWifiOnOffEvent(ZLjava/lang/String;)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3053
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3054
    const-string p2, "unknown"

    .line 3057
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->addOrUpdateWifiControlHistory(Ljava/lang/String;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    .line 3060
    nop

    .line 3061
    return-void

    .line 3058
    :catch_f
    move-exception v0

    .line 3059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestPassword(Z)V
    .registers 4
    .param p1, "showConfirm"    # Z

    .line 3360
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->requestPassword(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3363
    nop

    .line 3364
    return-void

    .line 3361
    :catch_7
    move-exception v0

    .line 3362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestStopAutohotspotAdvertisement(Z)V
    .registers 3
    .param p1, "val"    # Z

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->requestStopAutohotspotAdvertisement(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 808
    goto :goto_7

    .line 807
    :catch_6
    move-exception v0

    .line 809
    :goto_7
    return-void
.end method

.method public resetDeveloperOptionsSettings()V
    .registers 3

    .line 3145
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->resetDeveloperOptionsSettings()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3148
    nop

    .line 3149
    return-void

    .line 3146
    :catch_7
    move-exception v0

    .line 3147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetSoftAp(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2902
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->resetSoftAp(Landroid/os/Message;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2905
    nop

    .line 2906
    return-void

    .line 2903
    :catch_7
    move-exception v0

    .line 2904
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetTotalPriorityDataConsumedValues()V
    .registers 3

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->resetTotalPriorityDataConsumedValues()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 737
    nop

    .line 738
    return-void

    .line 735
    :catch_7
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public restoreIWCSettingsValue(II)V
    .registers 5
    .param p1, "opType"    # I
    .param p2, "value"    # I

    .line 4198
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->restoreIWCSettingsValue(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4201
    nop

    .line 4202
    return-void

    .line 4199
    :catch_7
    move-exception v0

    .line 4200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    .registers 4
    .param p1, "semconfig"    # Ljava/lang/String;

    .line 4150
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4153
    nop

    .line 4154
    return-void

    .line 4151
    :catch_7
    move-exception v0

    .line 4152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public retrieveSemWifiConfigsBackupData()Ljava/lang/String;
    .registers 3

    .line 4162
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->retrieveSemWifiConfigsBackupData()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4163
    :catch_7
    move-exception v0

    .line 4164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public runAutoShareForCurrent(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3450
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->runAutoShareForCurrent(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3453
    nop

    .line 3454
    return-void

    .line 3451
    :catch_7
    move-exception v0

    .line 3452
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2451
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2452
    :catch_7
    move-exception v0

    .line 2453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public saveFwDump()Z
    .registers 3

    .line 4497
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->saveFwDump()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4498
    :catch_7
    move-exception v0

    .line 4499
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "channel"    # I

    .line 4065
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4066
    :catch_7
    move-exception v0

    .line 4067
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 7
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "channel"    # I
    .param p3, "dwellTime"    # I
    .param p4, "frameBody"    # Ljava/lang/String;

    .line 4047
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4048
    :catch_7
    move-exception v0

    .line 4049
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public set5GmmWaveSarBackoffEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2326
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->set5GmmWaveSarBackoffEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2329
    nop

    .line 2330
    return-void

    .line 2327
    :catch_7
    move-exception v0

    .line 2328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAdvancedAutohotspotConnectSettings(I)V
    .registers 3
    .param p1, "val"    # I

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 844
    goto :goto_7

    .line 843
    :catch_6
    move-exception v0

    .line 845
    :goto_7
    return-void
.end method

.method public setAdvancedAutohotspotLCDSettings(I)V
    .registers 3
    .param p1, "val"    # I

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAdvancedAutohotspotLCDSettings(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 868
    goto :goto_7

    .line 867
    :catch_6
    move-exception v0

    .line 869
    :goto_7
    return-void
.end method

.method public setAllowWifiScan(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 3565
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAllowWifiScan(ZLjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3568
    nop

    .line 3569
    return-void

    .line 3566
    :catch_d
    move-exception v0

    .line 3567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAntInfo(Ljava/lang/String;)Z
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 2290
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAntInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2291
    :catch_7
    move-exception v0

    .line 2292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAntMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 2515
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAntMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2517
    goto :goto_7

    .line 2516
    :catch_6
    move-exception v0

    .line 2518
    :goto_7
    return-void
.end method

.method public setArdkPowerSaveMode(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 2056
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setArdkPowerSaveMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2059
    nop

    .line 2060
    return-void

    .line 2057
    :catch_7
    move-exception v0

    .line 2058
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAutohotspotToastMessage(I)V
    .registers 3
    .param p1, "noti"    # I

    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAutohotspotToastMessage(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 833
    goto :goto_7

    .line 832
    :catch_6
    move-exception v0

    .line 834
    :goto_7
    return-void
.end method

.method public setConnectionAttemptInfo(IZ)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "byUser"    # Z

    .line 4138
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    const-string v1, ""

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectionAttemptInfo(IZLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 4141
    nop

    .line 4142
    return-void

    .line 4139
    :catch_9
    move-exception v0

    .line 4140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setConnectionAttemptInfo(IZLjava/lang/String;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "byUser"    # Z
    .param p3, "configKey"    # Ljava/lang/String;

    .line 4126
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectionAttemptInfo(IZLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4129
    nop

    .line 4130
    return-void

    .line 4127
    :catch_7
    move-exception v0

    .line 4128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setConnectivityCheckDisabled(Z)V
    .registers 4
    .param p1, "disabled"    # Z

    .line 4089
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectivityCheckDisabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4092
    nop

    .line 4093
    return-void

    .line 4090
    :catch_7
    move-exception v0

    .line 4091
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 4
    .param p1, "countryRev"    # Ljava/lang/String;

    .line 3918
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setCountryRev(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3919
    :catch_7
    move-exception v0

    .line 3920
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDcxoCalibrationData(Ljava/lang/String;)Z
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 4852
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setDcxoCalibrationData(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4853
    :catch_7
    move-exception v0

    .line 4854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDtimInSuspendMode(I)V
    .registers 4
    .param p1, "interval"    # I

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setDtimInSuspendMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 685
    nop

    .line 686
    return-void

    .line 683
    :catch_7
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 5
    .param p2, "pendingIntentForIdlePopup"    # Landroid/app/PendingIntent;
    .param p3, "pendingIntentForSettings"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 3629
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, -0x37

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 3631
    return-void
.end method

.method public setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 8
    .param p2, "pendingIntentForIdlePopup"    # Landroid/app/PendingIntent;
    .param p3, "pendingIntentForSettings"    # Landroid/app/PendingIntent;
    .param p4, "minRssi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "I)V"
        }
    .end annotation

    .line 3610
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    return-void

    .line 3612
    :cond_3
    :try_start_3
    new-instance v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;-><init>()V

    .line 3613
    .local v0, "settings":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    iput-object p1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    .line 3614
    iput-object p2, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    .line 3615
    iput-object p3, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    .line 3616
    iput p4, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    .line 3617
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1d

    .line 3620
    .end local v0    # "settings":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    nop

    .line 3621
    return-void

    .line 3618
    :catch_1d
    move-exception v0

    .line 3619
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setFactoryMacAddress(Ljava/lang/String;)Z
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 2252
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setFactoryMacAddress(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2253
    :catch_7
    move-exception v0

    .line 2254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 2266
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setFccChannelBackoffEnabled(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2269
    nop

    .line 2270
    return-void

    .line 2267
    :catch_7
    move-exception v0

    .line 2268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setFrameburstInfo(Ljava/lang/String;)Z
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 2302
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setFrameburstInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2303
    :catch_7
    move-exception v0

    .line 2304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGripSensorMonitorEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 4101
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setGripSensorMonitorEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4104
    nop

    .line 4105
    return-void

    .line 4102
    :catch_7
    move-exception v0

    .line 4103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setHotspotAntMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 2526
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setHotspotAntMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2528
    goto :goto_7

    .line 2527
    :catch_6
    move-exception v0

    .line 2529
    :goto_7
    return-void
.end method

.method public setIWCMockAction(I)V
    .registers 4
    .param p1, "action"    # I

    .line 4246
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setIWCMockAction(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4249
    nop

    .line 4250
    return-void

    .line 4247
    :catch_7
    move-exception v0

    .line 4248
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setIWCQTables(Ljava/lang/String;)V
    .registers 4
    .param p1, "qTables"    # Ljava/lang/String;

    .line 4222
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setIWCQTables(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4225
    nop

    .line 4226
    return-void

    .line 4223
    :catch_7
    move-exception v0

    .line 4224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setImsCallEstablished(Z)V
    .registers 4
    .param p1, "isEstablished"    # Z

    .line 4298
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setImsCallEstablished(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4301
    nop

    .line 4302
    return-void

    .line 4299
    :catch_7
    move-exception v0

    .line 4300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKeepConnection(Z)V
    .registers 4
    .param p1, "keepConnection"    # Z

    .line 3726
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnectionAlways(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3729
    nop

    .line 3730
    return-void

    .line 3727
    :catch_7
    move-exception v0

    .line 3728
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKeepConnection(ZZ)V
    .registers 5
    .param p1, "keepConnection"    # Z
    .param p2, "always"    # Z

    .line 3740
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnection(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3743
    nop

    .line 3744
    return-void

    .line 3741
    :catch_7
    move-exception v0

    .line 3742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKeepConnectionBigData(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 3754
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnectionBigData(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3757
    nop

    .line 3758
    return-void

    .line 3755
    :catch_7
    move-exception v0

    .line 3756
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # I

    .line 4455
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4456
    :catch_7
    move-exception v0

    .line 4457
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "band"    # I

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setLocalOnlyHotspotEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    :try_start_18
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    return v0

    .line 2118
    :catch_1f
    move-exception v0

    .line 2119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLoopbackTestSettings(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 4396
    if-eqz p1, :cond_f

    .line 4400
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setLoopbackTestSettings(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 4403
    nop

    .line 4404
    return-void

    .line 4401
    :catch_9
    move-exception v0

    .line 4402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4397
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMHSConfig(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "jsonMIFI"    # Lorg/json/JSONObject;

    .line 2561
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->setMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 2562
    :catch_10
    move-exception v0

    .line 2564
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMaxDtimInSuspendMode(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setMaxDtimInSuspendMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 670
    nop

    .line 671
    return-void

    .line 668
    :catch_7
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNCHOModeEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 3975
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setNCHOModeEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3976
    :catch_7
    move-exception v0

    .line 3977
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOptimizerForceControlMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 4339
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setOptimizerForceControlMode(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4340
    :catch_7
    move-exception v0

    .line 4341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .line 4469
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4470
    :catch_7
    move-exception v0

    .line 4471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPowerSavingTime(I)V
    .registers 3
    .param p1, "min"    # I

    .line 2549
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setPowerSavingTime(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2551
    goto :goto_7

    .line 2550
    :catch_6
    move-exception v0

    .line 2552
    :goto_7
    return-void
.end method

.method public setProvisionSuccess(Z)Z
    .registers 4
    .param p1, "set"    # Z

    .line 2741
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setProvisionSuccess(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2742
    :catch_7
    move-exception v0

    .line 2743
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setPsmInfo(Ljava/lang/String;)Z
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 2278
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setPsmInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2279
    :catch_7
    move-exception v0

    .line 2280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRVFmodeStatus(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 2854
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRVFmodeStatus(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2857
    nop

    .line 2858
    return-void

    .line 2855
    :catch_7
    move-exception v0

    .line 2856
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRoamBand(I)Z
    .registers 4
    .param p1, "band"    # I

    .line 3888
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamBand(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3889
    :catch_7
    move-exception v0

    .line 3890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRoamDelta(I)Z
    .registers 4
    .param p1, "roamDelta"    # I

    .line 3828
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamDelta(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3829
    :catch_7
    move-exception v0

    .line 3830
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRoamScanChannels([Ljava/lang/String;)Z
    .registers 4
    .param p1, "channels"    # [Ljava/lang/String;

    .line 4003
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanChannels([Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4004
    :catch_7
    move-exception v0

    .line 4005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRoamScanEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 3989
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3990
    :catch_7
    move-exception v0

    .line 3991
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRoamScanPeriod(I)Z
    .registers 4
    .param p1, "roamScanPeriod"    # I

    .line 3858
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanPeriod(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3859
    :catch_7
    move-exception v0

    .line 3860
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRoamTrigger(I)Z
    .registers 4
    .param p1, "roamTrigger"    # I

    .line 3798
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamTrigger(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3799
    :catch_7
    move-exception v0

    .line 3800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSmartMHSLocked(I)I
    .registers 4
    .param p1, "state"    # I

    .line 1266
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setSmartMHSLocked(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1267
    :catch_7
    move-exception v0

    .line 1268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;

    .line 2069
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2072
    nop

    .line 2073
    return-void

    .line 2070
    :catch_7
    move-exception v0

    .line 2071
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTCRule(ZLjava/lang/String;I)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .line 4559
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setTCRule(ZLjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4562
    nop

    .line 4563
    return-void

    .line 4560
    :catch_7
    move-exception v0

    .line 4561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTasPolicy(I)Ljava/util/Map;
    .registers 4
    .param p1, "newTasPolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5010
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setTasPolicy(II)Ljava/util/Map;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 5011
    :catch_8
    move-exception v0

    .line 5012
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTasPolicy(II)Ljava/util/Map;
    .registers 5
    .param p1, "newTasPolicy"    # I
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4996
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setTasPolicy(II)Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 4997
    :catch_7
    move-exception v0

    .line 4998
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTdlsEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 4781
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setTdlsEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4782
    :catch_7
    move-exception v0

    .line 4783
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTestSettings(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "moduleId"    # I
    .param p2, "settings"    # Landroid/os/Bundle;

    .line 3545
    if-eqz p2, :cond_f

    .line 3549
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setTestSettings(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 3552
    nop

    .line 3553
    return-void

    .line 3550
    :catch_9
    move-exception v0

    .line 3551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3546
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUploadModeEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 4258
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setUploadModeEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4259
    :catch_7
    move-exception v0

    .line 4260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserConfirmForSharingPassword(ZLjava/lang/String;)V
    .registers 5
    .param p1, "isAccept"    # Z
    .param p2, "userData"    # Ljava/lang/String;

    .line 3376
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setUserConfirmForSharingPassword(ZLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3379
    nop

    .line 3380
    return-void

    .line 3377
    :catch_7
    move-exception v0

    .line 3378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2228
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2229
    :catch_7
    move-exception v0

    .line 2230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVerboseLoggingEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2914
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setVerboseLoggingEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2917
    nop

    .line 2918
    return-void

    .line 2915
    :catch_7
    move-exception v0

    .line 2916
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWesModeEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 4030
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWesModeEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4031
    :catch_7
    move-exception v0

    .line 4032
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V
    .registers 7
    .param p1, "nsdResult"    # [I
    .param p2, "l1ConvSerPredArr"    # [I
    .param p3, "l2ConvSerPredArr"    # [I
    .param p4, "convArr"    # [Ljava/lang/String;

    .line 4637
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4640
    nop

    .line 4641
    return-void

    .line 4638
    :catch_7
    move-exception v0

    .line 4639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiAiServiceState(Z[I[I)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "numClass"    # [I
    .param p3, "numTimeStep"    # [I

    .line 4622
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiAiServiceState(Z[I[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4625
    nop

    .line 4626
    return-void

    .line 4623
    :catch_7
    move-exception v0

    .line 4624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 1460
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientDataPaused(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1463
    nop

    .line 1464
    return-void

    .line 1461
    :catch_7
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 1472
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1475
    nop

    .line 1476
    return-void

    .line 1473
    :catch_7
    move-exception v0

    .line 1474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    .registers 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 1439
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1442
    nop

    .line 1443
    return-void

    .line 1440
    :catch_7
    move-exception v0

    .line 1441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApClientTimeLimit(Ljava/lang/String;J)V
    .registers 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 1449
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientTimeLimit(Ljava/lang/String;J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1452
    nop

    .line 1453
    return-void

    .line 1450
    :catch_7
    move-exception v0

    .line 1451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApConfigurationToDefault()Z
    .registers 2

    .line 2425
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApConfigurationToDefault()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2426
    const/4 v0, 0x1

    return v0

    .line 2427
    :catch_7
    move-exception v0

    .line 2429
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiApDailyDataLimit(J)V
    .registers 5
    .param p1, "bytes"    # J

    .line 1539
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApDailyDataLimit(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1542
    nop

    .line 1543
    return-void

    .line 1540
    :catch_7
    move-exception v0

    .line 1541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    .registers 5
    .param p1, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;
    .param p2, "enabled"    # Z

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setWifiApEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result v0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3e} :catch_3f

    return v0

    .line 2139
    :catch_3f
    move-exception v0

    .line 2140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApGuestModeEnabled(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 1583
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestModeEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1586
    nop

    .line 1587
    return-void

    .line 1584
    :catch_7
    move-exception v0

    .line 1585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApGuestModeIsolationEnabled(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 1605
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestModeIsolationEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1608
    nop

    .line 1609
    return-void

    .line 1606
    :catch_7
    move-exception v0

    .line 1607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApGuestPassword(Ljava/lang/String;)V
    .registers 4
    .param p1, "pwd"    # Ljava/lang/String;

    .line 1550
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestPassword(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1553
    nop

    .line 1554
    return-void

    .line 1551
    :catch_7
    move-exception v0

    .line 1552
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApIsolate(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 2689
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApIsolate(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2692
    nop

    .line 2693
    return-void

    .line 2690
    :catch_7
    move-exception v0

    .line 2691
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public setWifiApMacAclEnable(Z)V
    .registers 3
    .param p1, "val"    # Z

    .line 2652
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMacAclEnable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2655
    goto :goto_7

    .line 2653
    :catch_6
    move-exception v0

    .line 2656
    :goto_7
    return-void
.end method

.method public setWifiApMacAclMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 2612
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMacAclMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2615
    nop

    .line 2616
    return-void

    .line 2613
    :catch_7
    move-exception v0

    .line 2614
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public setWifiApMaxClient(I)V
    .registers 4
    .param p1, "num"    # I

    .line 2878
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMaxClient(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2881
    nop

    .line 2882
    return-void

    .line 2879
    :catch_7
    move-exception v0

    .line 2880
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApMaxClientToFramework(I)V
    .registers 3
    .param p1, "num"    # I

    .line 2753
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMaxClientToFramework(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2756
    nop

    .line 2757
    return-void

    .line 2754
    :catch_7
    move-exception v0

    .line 2755
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public setWifiApWarningActivityRunning(I)V
    .registers 3
    .param p1, "val"    # I

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApWarningActivityRunning(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 901
    goto :goto_7

    .line 900
    :catch_6
    move-exception v0

    .line 902
    :goto_7
    return-void
.end method

.method public setWifiApWpsPbc(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 2665
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApWpsPbc(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2668
    nop

    .line 2669
    return-void

    .line 2666
    :catch_7
    move-exception v0

    .line 2667
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public setWifiDeveloperModeEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2926
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiDeveloperModeEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2929
    nop

    .line 2930
    return-void

    .line 2927
    :catch_7
    move-exception v0

    .line 2928
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiSettingsForegroundState(I)V
    .registers 3
    .param p1, "val"    # I

    .line 877
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiSettingsForegroundState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 879
    goto :goto_7

    .line 878
    :catch_6
    move-exception v0

    .line 880
    :goto_7
    return-void
.end method

.method public setWifiSharingEnabled(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 2413
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiSharingEnabled(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2414
    :catch_7
    move-exception v0

    .line 2416
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiUwbCoexEnabled(IZ)I
    .registers 5
    .param p1, "uwbCh"    # I
    .param p2, "enable"    # Z

    .line 4441
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiUwbCoexEnabled(IZ)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4442
    :catch_7
    move-exception v0

    .line 4443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startIssueMonitoring(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 3249
    if-nez p1, :cond_3

    return-void

    .line 3251
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startIssueMonitoring(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 3254
    nop

    .line 3255
    return-void

    .line 3252
    :catch_a
    move-exception v0

    .line 3253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startMcfClientMHSDiscovery(Z)I
    .registers 4
    .param p1, "enable"    # Z

    .line 1381
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startMcfClientMHSDiscovery(Z)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1382
    :catch_7
    move-exception v0

    .line 1383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startMcfMHSAdvertisement(Z)I
    .registers 4
    .param p1, "enable"    # Z

    .line 1393
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startMcfMHSAdvertisement(Z)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1394
    :catch_7
    move-exception v0

    .line 1395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startScan()Z
    .registers 3

    .line 3592
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->startScan(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3593
    :catch_d
    move-exception v0

    .line 3594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startTimerForWifiOffload()V
    .registers 3

    .line 4528
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->startTimerForWifiOffload()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4531
    nop

    .line 4532
    return-void

    .line 4529
    :catch_7
    move-exception v0

    .line 4530
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public supportWifiAp5GBasedOnCountry()Z
    .registers 4

    .line 2351
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2352
    :catch_7
    move-exception v0

    .line 2353
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWifiManager"

    const-string v2, "supportWifiAp5GBasedOnCountry() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public supportWifiAp6GBasedOnCountry()Z
    .registers 4

    .line 2364
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2365
    :catch_7
    move-exception v0

    .line 2366
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWifiManager"

    const-string v2, "supportWifiAp6GBasedOnCountry() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public triggerBackoffRoutine(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2314
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->triggerBackoffRoutine(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2317
    nop

    .line 2318
    return-void

    .line 2315
    :catch_7
    move-exception v0

    .line 2316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unRegisterWifiApDataUsageListener(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    .line 1885
    if-eqz p1, :cond_46

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterWifiApDataUsageListener: listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1887
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1886
    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->getClient()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    move-result-object v0

    .line 1890
    .local v0, "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    :try_start_2c
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unRegisterWifiApDataUsageCallback(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_3c
    .catchall {:try_start_2c .. :try_end_35} :catchall_3a

    .line 1894
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->cleanUp()V

    .line 1895
    nop

    .line 1896
    return-void

    .line 1894
    :catchall_3a
    move-exception v1

    goto :goto_42

    .line 1891
    :catch_3c
    move-exception v1

    .line 1892
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .end local p1    # "listener":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    throw v2
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 1894
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .restart local p1    # "listener":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    :goto_42
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->cleanUp()V

    .line 1895
    throw v1

    .line 1885
    .end local v0    # "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterClientDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;

    .line 1751
    if-eqz p1, :cond_46

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterClientDataUsageCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1753
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1752
    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;

    move-result-object v0

    .line 1756
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
    :try_start_2c
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterClientDataUsageCallback(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_3c
    .catchall {:try_start_2c .. :try_end_35} :catchall_3a

    .line 1760
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->cleanUpProxy()V

    .line 1761
    nop

    .line 1762
    return-void

    .line 1760
    :catchall_3a
    move-exception v1

    goto :goto_42

    .line 1757
    :catch_3c
    move-exception v1

    .line 1758
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .end local p1    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
    throw v2
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 1760
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .restart local p1    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;
    :goto_42
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->cleanUpProxy()V

    .line 1761
    throw v1

    .line 1751
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterClientListDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;

    .line 1715
    if-eqz p1, :cond_46

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterClientListDataUsageCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1717
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1716
    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;

    move-result-object v0

    .line 1720
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;
    :try_start_2c
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterClientListDataUsageCallback(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_3c
    .catchall {:try_start_2c .. :try_end_35} :catchall_3a

    .line 1724
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;->cleanUpProxy()V

    .line 1725
    nop

    .line 1726
    return-void

    .line 1724
    :catchall_3a
    move-exception v1

    goto :goto_42

    .line 1721
    :catch_3c
    move-exception v1

    .line 1722
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .end local p1    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;
    throw v2
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 1724
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .restart local p1    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;
    :goto_42
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;->cleanUpProxy()V

    .line 1725
    throw v1

    .line 1715
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    .line 3345
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3348
    nop

    .line 3349
    return-void

    .line 3346
    :catch_7
    move-exception v0

    .line 3347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;

    .line 5036
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;

    move-result-object v0

    .line 5037
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    .line 5038
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->cleanUpProxy()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 5041
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;
    goto :goto_11

    .line 5039
    :catch_d
    move-exception v0

    .line 5040
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5042
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public unregisterWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 1324
    if-eqz p1, :cond_46

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterWifiApSmartCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1326
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    .line 1329
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    :try_start_2c
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterWifiApSmartCallback(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_3c
    .catchall {:try_start_2c .. :try_end_35} :catchall_3a

    .line 1333
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->cleanUpProxy()V

    .line 1334
    nop

    .line 1335
    return-void

    .line 1333
    :catchall_3a
    move-exception v1

    goto :goto_42

    .line 1330
    :catch_3c
    move-exception v1

    .line 1331
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .end local p1    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    throw v2
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 1333
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .restart local p1    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    :goto_42
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->cleanUpProxy()V

    .line 1334
    throw v1

    .line 1324
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateGuiderFeature(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 3279
    if-nez p1, :cond_3

    return-void

    .line 3281
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->updateGuiderFeature(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 3284
    nop

    .line 3285
    return-void

    .line 3282
    :catch_a
    move-exception v0

    .line 3283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateHostapdMacList(I)V
    .registers 3
    .param p1, "val"    # I

    .line 2713
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->updateHostapdMacList(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2716
    nop

    .line 2717
    return-void

    .line 2714
    :catch_7
    move-exception v0

    .line 2715
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public updateIWCHintCard(J)V
    .registers 5
    .param p1, "timestamp"    # J

    .line 4234
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->updateIWCHintCard(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4237
    nop

    .line 4238
    return-void

    .line 4235
    :catch_7
    move-exception v0

    .line 4236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .registers 3

    .line 1662
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1663
    :catch_7
    move-exception v0

    .line 1664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wifiApBleClientRole(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleClientRole(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 764
    :catch_7
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wifiApBleD2DClientRole(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleD2DClientRole(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 937
    :catch_7
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wifiApBleD2DMhsRole(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleD2DMhsRole(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 949
    :catch_7
    move-exception v0

    .line 950
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wifiApBleMhsRole(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleMhsRole(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 778
    :catch_7
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wifiApDisassocSta(Ljava/lang/String;)V
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 2866
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApDisassocSta(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2869
    nop

    .line 2870
    return-void

    .line 2867
    :catch_7
    move-exception v0

    .line 2868
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 1673
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1676
    nop

    .line 1677
    return-void

    .line 1674
    :catch_7
    move-exception v0

    .line 1675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public wifiApRestoreDailyHotspotDataLimit(J)V
    .registers 5
    .param p1, "bytes"    # J

    .line 1684
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApRestoreDailyHotspotDataLimit(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1687
    nop

    .line 1688
    return-void

    .line 1685
    :catch_7
    move-exception v0

    .line 1686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
