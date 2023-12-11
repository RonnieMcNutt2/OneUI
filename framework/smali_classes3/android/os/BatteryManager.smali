.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field public static final ACTION_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field public static final ACTION_POPUP_BATTERY_DETERIORATION:Ljava/lang/String; = "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

.field public static final ACTION_SEC_BATTERY_EVENT:Ljava/lang/String; = "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

.field public static final ACTION_SEC_BATTERY_WATER_IN_CONNECTOR:Ljava/lang/String; = "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

.field public static final ACTION_SLEEP_CHARGING:Ljava/lang/String; = "com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING"

.field public static final ACTION_WIRELESS_POWER_SHARING_CONNECTED:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

.field public static final ACTION_WIRELESS_POWER_SHARING_ENABLED:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

.field public static final ACTION_WIRELESS_POWER_SHARING_TX_EVENT:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

.field public static final BATTERY_CHARGER_TYPE_FAST:I = 0x1

.field public static final BATTERY_CHARGER_TYPE_FAST_12V:I = 0x2

.field public static final BATTERY_CHARGER_TYPE_FAST_25W:I = 0x3

.field public static final BATTERY_CHARGER_TYPE_FAST_45W:I = 0x4

.field public static final BATTERY_CHARGER_TYPE_NORMAL:I = 0x0

.field public static final BATTERY_DETERIORATION_AGED:I = 0x3

.field public static final BATTERY_DETERIORATION_BAD:I = 0xf

.field public static final BATTERY_DETERIORATION_GOOD:I = 0x1

.field public static final BATTERY_DETERIORATION_NORMAL:I = 0x2

.field public static final BATTERY_DETERIORATION_UNKNOWN:I = 0x0

.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_MISC_EVENT_ABNORMAL_PAD:I = 0x200000

.field public static final BATTERY_MISC_EVENT_DETERIORATION:I = 0xf0000

.field public static final BATTERY_MISC_EVENT_DIRECT_POWER_MODE:I = 0x4000

.field public static final BATTERY_MISC_EVENT_FULL_CAPACITY:I = 0x1000000

.field public static final BATTERY_MISC_EVENT_HICCUP_ENABLED:I = 0x20

.field public static final BATTERY_MISC_EVENT_OVERHEAT_LIMIT:I = 0x100000

.field public static final BATTERY_MISC_EVENT_RECHARGE:I = 0x8

.field public static final BATTERY_MISC_EVENT_TEMP_HICCUP_TYPE:I = 0x2000

.field public static final BATTERY_MISC_EVENT_TIMEOUT_OPEN_TYPE:I = 0x4

.field public static final BATTERY_MISC_EVENT_WATER_IN_CONNECTOR:I = 0x1

.field public static final BATTERY_MISC_EVENT_WATER_IN_POGO:I = 0x10

.field public static final BATTERY_MISC_EVENT_WIRELESS_AUTH_FAIL:I = 0x800

.field public static final BATTERY_MISC_EVENT_WIRELESS_AUTH_RECEIVED:I = 0x400

.field public static final BATTERY_MISC_EVENT_WIRELESS_AUTH_START:I = 0x200

.field public static final BATTERY_MISC_EVENT_WIRELESS_BACKPACK:I = 0x2

.field public static final BATTERY_MISC_EVENT_WIRELESS_DET_LEVEL:I = 0x40

.field public static final BATTERY_MISC_EVENT_WIRELESS_FOD:I = 0x100

.field public static final BATTERY_MISC_EVENT_WIRELESS_MISALIGN:I = 0x400000

.field public static final BATTERY_ONLINE_CABLE_SILENT_TYPE:I = 0x63

.field public static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field public static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field public static final BATTERY_ONLINE_NONE:I = 0x1

.field public static final BATTERY_ONLINE_POGO:I = 0x17

.field public static final BATTERY_ONLINE_TA:I = 0x3

.field public static final BATTERY_ONLINE_USB:I = 0x4

.field public static final BATTERY_ONLINE_WATER_IN_CONNECTOR:I = 0x65

.field public static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0xf

.field public static final BATTERY_PLUGGED_DOCK:I = 0x8

.field public static final BATTERY_PLUGGED_OTG:I = 0x10000

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final BATTERY_PROPERTY_CHARGING_POLICY:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final BATTERY_PROPERTY_FIRST_USAGE_DATE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BATTERY_PROPERTY_MANUFACTURING_DATE:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BATTERY_PROPERTY_STATE_OF_HEALTH:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BATTERY_PROPERTY_STATUS:I = 0x6

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CHG_SWITCH:I = 0x20

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CONNECTED:I = 0x2

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CS100:I = 0x40

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_UNSAFE_TEMP:I = 0x10

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_5V_TA:I = 0x10000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_CAMERA_ON:I = 0x800

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_CRITICAL_EOC:I = 0x400

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_ENABLED:I = 0x1

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_ETC:I = 0x4000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_FOD:I = 0x4

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_HIGH_TEMP:I = 0x8

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_LOW_TEMP:I = 0x100

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_MISALIGN:I = 0x2000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_OCP:I = 0x1000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_OTG_ON:I = 0x80

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_RETRY:I = 0x8000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_SOC_DRAIN:I = 0x200

.field public static final BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_CALL:I = 0x4

.field public static final BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_CAMERA:I = 0x1

.field public static final BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_DEX:I = 0x2

.field public static final CHARGING_POLICY_ADAPTIVE_AC:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CHARGING_POLICY_ADAPTIVE_AON:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CHARGING_POLICY_ADAPTIVE_LONGLIFE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CHARGING_POLICY_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_BATTERY_LOW:Ljava/lang/String; = "battery_low"

.field public static final EXTRA_CAPACITY:Ljava/lang/String; = "capacity"

.field public static final EXTRA_CHARGER_TYPE:Ljava/lang/String; = "charger_type"

.field public static final EXTRA_CHARGE_COUNTER:Ljava/lang/String; = "charge_counter"

.field public static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field public static final EXTRA_CHARGING_STATUS:Ljava/lang/String; = "android.os.extra.CHARGING_STATUS"

.field public static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field public static final EXTRA_CURRENT_NOW:Ljava/lang/String; = "current_now"

.field public static final EXTRA_CYCLE_COUNT:Ljava/lang/String; = "android.os.extra.CYCLE_COUNT"

.field public static final EXTRA_DETERIORATION:Ljava/lang/String; = "deterioration"

.field public static final EXTRA_EVENTS:Ljava/lang/String; = "android.os.extra.EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_EVENT_TIMESTAMP:Ljava/lang/String; = "android.os.extra.EVENT_TIMESTAMP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_HIGHVOLTAGE_CHARGER:Ljava/lang/String; = "hv_charger"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_MAX_CHARGING_CURRENT:Ljava/lang/String; = "max_charging_current"

.field public static final EXTRA_MAX_CHARGING_VOLTAGE:Ljava/lang/String; = "max_charging_voltage"

.field public static final EXTRA_MISC_EVENT:Ljava/lang/String; = "misc_event"

.field public static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field public static final EXTRA_OTG_CHARGE_BLOCK_ENABLE:Ljava/lang/String; = "OTG_CHARGE_BLOCK"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_POGO_CONDITION:Ljava/lang/String; = "pogo_plugged"

.field public static final EXTRA_POWER_SHARING:Ljava/lang/String; = "power_sharing"

.field public static final EXTRA_POWER_SHARING_ENABLE:Ljava/lang/String; = "power_sharing_enable"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_RX_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_SEC_CURRENT_EVENT:Ljava/lang/String; = "current_event"

.field public static final EXTRA_SEC_PLUG_TYPE_SUMMARY:Ljava/lang/String; = "sec_plug_type"

.field public static final EXTRA_SELF_DISCHARGING:Ljava/lang/String; = "self_discharging"

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field public static final EXTRA_SLEEP_CHARGING_EVENT:Ljava/lang/String; = "sleep_charging_event"

.field public static final EXTRA_SLEEP_CHARGING_FINISH_TIME:Ljava/lang/String; = "sleep_charging_finish_time"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_TX_ENABLED:Ljava/lang/String; = "enabled"

.field public static final EXTRA_TX_EVENT:Ljava/lang/String; = "tx_event"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"

.field public static final EXTRA_WATER:Ljava/lang/String; = "water"

.field public static final SEM_ACTION_BATTERY_INFO_ADDED:Ljava/lang/String; = "com.samsung.battery.ACTION_BATTERY_INFO_ADDED"

.field public static final SEM_ACTION_BATTERY_INFO_CHANGED:Ljava/lang/String; = "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

.field public static final SEM_ACTION_BATTERY_INFO_REMOVED:Ljava/lang/String; = "com.samsung.battery.ACTION_BATTERY_INFO_REMOVED"

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_BUDS:I = 0x3

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_BUDS_OLD:I = 0xb

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_FIT:I = 0x6

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_PHONE:I = 0x2

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_RING:I = 0x7

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_SPEN:I = 0x5

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_SPEN_EXTERNAL:I = 0xc

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_UNKNOWN:I = 0x1

.field public static final SEM_BATTERY_INFO_DEVICE_TYPE_WATCH:I = 0x4

.field public static final SEM_EXTRA_BATTERY_INFO:Ljava/lang/String; = "com.samsung.battery.EXTRA_BATTERY_INFO"


# instance fields
.field private final mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    .line 1039
    nop

    .line 1040
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1039
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1041
    nop

    .line 1042
    const-string v0, "batteryproperties"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1041
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 1043
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Landroid/os/IBatteryPropertiesRegistrar;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "batteryPropertiesRegistrar"    # Landroid/os/IBatteryPropertiesRegistrar;

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    iput-object p1, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    .line 1050
    iput-object p2, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1051
    iput-object p3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 1052
    return-void
.end method

.method public static isPlugWired(I)Z
    .registers 3
    .param p0, "plugType"    # I

    .line 1136
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_8

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_8
    return v1
.end method

.method private queryProperty(I)J
    .registers 5
    .param p1, "id"    # I

    .line 1077
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v0, :cond_7

    .line 1078
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 1082
    :cond_7
    :try_start_7
    new-instance v0, Landroid/os/BatteryProperty;

    invoke-direct {v0}, Landroid/os/BatteryProperty;-><init>()V

    .line 1083
    .local v0, "prop":Landroid/os/BatteryProperty;
    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v1, p1, v0}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v1

    if-nez v1, :cond_19

    .line 1084
    invoke-virtual {v0}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1d

    .local v1, "ret":J
    goto :goto_1b

    .line 1086
    .end local v1    # "ret":J
    :cond_19
    const-wide/high16 v1, -0x8000000000000000L

    .line 1089
    .end local v0    # "prop":Landroid/os/BatteryProperty;
    .restart local v1    # "ret":J
    :goto_1b
    nop

    .line 1091
    return-wide v1

    .line 1087
    .end local v1    # "ret":J
    :catch_1d
    move-exception v0

    .line 1088
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public computeChargeTimeRemaining()J
    .registers 3

    .line 1149
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1150
    :catch_7
    move-exception v0

    .line 1151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIntProperty(I)I
    .registers 6
    .param p1, "id"    # I

    .line 1104
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    .line 1105
    .local v0, "value":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1b

    .line 1106
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1b

    .line 1108
    const/high16 v2, -0x80000000

    return v2

    .line 1111
    :cond_1b
    long-to-int v2, v0

    return v2
.end method

.method public getLongProperty(I)J
    .registers 4
    .param p1, "id"    # I

    .line 1124
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCharging()Z
    .registers 3

    .line 1062
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->isCharging()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1063
    :catch_7
    move-exception v0

    .line 1064
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semGetDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1212
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1215
    .local v0, "batteryInfo":Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    nop

    .line 1217
    return-object v0

    .line 1213
    .end local v0    # "batteryInfo":Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    :catch_8
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semGetDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1190
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1191
    .local v0, "parcelers":[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    return-object v0

    .line 1192
    .end local v0    # "parcelers":[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    :catch_7
    move-exception v0

    .line 1193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1231
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->registerDeviceBatteryInfoChanged(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1234
    nop

    .line 1235
    return-void

    .line 1232
    :catch_7
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semSetDeviceBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1266
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->setDeviceBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1269
    nop

    .line 1270
    return-void

    .line 1267
    :catch_7
    move-exception v0

    .line 1268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semUnRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1248
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1251
    nop

    .line 1252
    return-void

    .line 1249
    :catch_7
    move-exception v0

    .line 1250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semUnsetDeviceBatteryInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1283
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->unsetDeviceBatteryInfo(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1286
    nop

    .line 1287
    return-void

    .line 1284
    :catch_7
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .registers 4
    .param p1, "delayMillis"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1171
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->setChargingStateUpdateDelayMillis(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1172
    :catch_7
    move-exception v0

    .line 1173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
