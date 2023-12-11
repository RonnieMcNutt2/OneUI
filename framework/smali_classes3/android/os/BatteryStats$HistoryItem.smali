.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CMD_CURRENT_TIME:B = 0x5t

.field public static final CMD_NULL:B = -0x1t

.field public static final CMD_OVERFLOW:B = 0x6t

.field public static final CMD_RESET:B = 0x7t

.field public static final CMD_SHUTDOWN:B = 0x8t

.field public static final CMD_START:B = 0x4t

.field public static final CMD_UPDATE:B = 0x0t

.field public static final EVENT_ACTIVE:I = 0xa

.field public static final EVENT_ALARM:I = 0xd

.field public static final EVENT_ALARM_FINISH:I = 0x400d

.field public static final EVENT_ALARM_START:I = 0x800d

.field public static final EVENT_COLLECT_EXTERNAL_STATS:I = 0xe

.field public static final EVENT_CONNECTIVITY_CHANGED:I = 0x9

.field public static final EVENT_COUNT:I = 0x16

.field public static final EVENT_FLAG_FINISH:I = 0x4000

.field public static final EVENT_FLAG_START:I = 0x8000

.field public static final EVENT_FOREGROUND:I = 0x2

.field public static final EVENT_FOREGROUND_FINISH:I = 0x4002

.field public static final EVENT_FOREGROUND_START:I = 0x8002

.field public static final EVENT_JOB:I = 0x6

.field public static final EVENT_JOB_FINISH:I = 0x4006

.field public static final EVENT_JOB_START:I = 0x8006

.field public static final EVENT_LONG_WAKE_LOCK:I = 0x14

.field public static final EVENT_LONG_WAKE_LOCK_FINISH:I = 0x4014

.field public static final EVENT_LONG_WAKE_LOCK_START:I = 0x8014

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_PACKAGE_ACTIVE:I = 0x10

.field public static final EVENT_PACKAGE_INACTIVE:I = 0xf

.field public static final EVENT_PACKAGE_INSTALLED:I = 0xb

.field public static final EVENT_PACKAGE_UNINSTALLED:I = 0xc

.field public static final EVENT_PROC:I = 0x1

.field public static final EVENT_PROC_FINISH:I = 0x4001

.field public static final EVENT_PROC_START:I = 0x8001

.field public static final EVENT_SCREEN_WAKE_UP:I = 0x12

.field public static final EVENT_SYNC:I = 0x4

.field public static final EVENT_SYNC_FINISH:I = 0x4004

.field public static final EVENT_SYNC_START:I = 0x8004

.field public static final EVENT_TEMP_WHITELIST:I = 0x11

.field public static final EVENT_TEMP_WHITELIST_FINISH:I = 0x4011

.field public static final EVENT_TEMP_WHITELIST_START:I = 0x8011

.field public static final EVENT_TOP:I = 0x3

.field public static final EVENT_TOP_FINISH:I = 0x4003

.field public static final EVENT_TOP_START:I = 0x8003

.field public static final EVENT_TYPE_MASK:I = -0xc001

.field public static final EVENT_USER_FOREGROUND:I = 0x8

.field public static final EVENT_USER_FOREGROUND_FINISH:I = 0x4008

.field public static final EVENT_USER_FOREGROUND_START:I = 0x8008

.field public static final EVENT_USER_RUNNING:I = 0x7

.field public static final EVENT_USER_RUNNING_FINISH:I = 0x4007

.field public static final EVENT_USER_RUNNING_START:I = 0x8007

.field public static final EVENT_WAKEUP_AP:I = 0x13

.field public static final EVENT_WAKE_LOCK:I = 0x5

.field public static final EVENT_WAKE_LOCK_FINISH:I = 0x4005

.field public static final EVENT_WAKE_LOCK_START:I = 0x8005

.field public static final MOST_INTERESTING_STATES:I = 0x1c0000

.field public static final MOST_INTERESTING_STATES2:I = -0x68400000

.field public static final SETTLE_TO_ZERO_STATES:I = -0x1d0000

.field public static final SETTLE_TO_ZERO_STATES2:I = 0x683f0000

.field public static final STATE2_BLUETOOTH_ON_FLAG:I = 0x400000

.field public static final STATE2_BLUETOOTH_SCAN_FLAG:I = 0x100000

.field public static final STATE2_CAMERA_FLAG:I = 0x200000

.field public static final STATE2_CELLULAR_HIGH_TX_POWER_FLAG:I = 0x80000

.field public static final STATE2_CHARGING_FLAG:I = 0x1000000

.field public static final STATE2_DEVICE_IDLE_MASK:I = 0x6000000

.field public static final STATE2_DEVICE_IDLE_SHIFT:I = 0x19

.field public static final STATE2_EXTENSIONS_FLAG:I = 0x20000

.field public static final STATE2_FLASHLIGHT_FLAG:I = 0x8000000

.field public static final STATE2_GPS_SIGNAL_QUALITY_MASK:I = 0x80

.field public static final STATE2_GPS_SIGNAL_QUALITY_SHIFT:I = 0x7

.field public static final STATE2_PHONE_IN_CALL_FLAG:I = 0x800000

.field public static final STATE2_POWER_SAVE_FLAG:I = -0x80000000

.field public static final STATE2_USB_DATA_LINK_FLAG:I = 0x40000

.field public static final STATE2_VIDEO_ON_FLAG:I = 0x40000000

.field public static final STATE2_WIFI_ON_FLAG:I = 0x10000000

.field public static final STATE2_WIFI_RUNNING_FLAG:I = 0x20000000

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_MASK:I = 0x70

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE2_WIFI_SUPPL_STATE_MASK:I = 0xf

.field public static final STATE2_WIFI_SUPPL_STATE_SHIFT:I = 0x0

.field public static final STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final STATE_BRIGHTNESS_MASK:I = 0x7

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_CPU_RUNNING_FLAG:I = -0x80000000

.field public static final STATE_DATA_CONNECTION_MASK:I = 0x3e00

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0x9

.field public static final STATE_GPS_ON_FLAG:I = 0x20000000

.field public static final STATE_MOBILE_RADIO_ACTIVE_FLAG:I = 0x2000000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x200000

.field public static final STATE_PHONE_SIGNAL_STRENGTH_MASK:I = 0x38

.field public static final STATE_PHONE_SIGNAL_STRENGTH_SHIFT:I = 0x3

.field public static final STATE_PHONE_STATE_MASK:I = 0x1c0

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x6

.field private static final STATE_RESERVED_0:I = 0x1000000

.field public static final STATE_SCREEN_DOZE_FLAG:I = 0x40000

.field public static final STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x800000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x10000000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x10000

.field public static final STATE_WIFI_RADIO_ACTIVE_FLAG:I = 0x4000000

.field public static final STATE_WIFI_SCAN_FLAG:I = 0x8000000


# instance fields
.field public ap_temp:B

.field public batteryChargeUah:I

.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batterySecCurrentEvent:I

.field public batterySecEvent:I

.field public batterySecOnline:B

.field public batterySecTxShareEvent:I

.field public batteryStatus:B

.field public batteryTemperature:S

.field public batteryVoltage:C

.field public cmd:B

.field public cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

.field public current:S

.field public currentTime:J

.field public energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

.field public eventCode:I

.field public eventTag:Landroid/os/BatteryStats$HistoryTag;

.field public highSpeakerVolume:B

.field public final localEventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public modemRailChargeMah:D

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public numReadInts:I

.field public otgOnline:B

.field public pa_temp:B

.field public skin_temp:B

.field public states:I

.field public states2:I

.field public stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public subScreenDoze:B

.field public subScreenOn:B

.field public sub_batt_temp:B

.field public tagsFirstOccurrence:Z

.field public time:J

.field public wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public wakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public wifiRailChargeMah:D

.field public wifi_ap:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2199
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2200
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2201
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2209
    const/16 v0, -0x80

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 2210
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 2211
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    .line 2212
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    .line 2213
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 2215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2199
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2200
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2201
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2216
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 2217
    return-void
.end method

.method private setToCommon(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 5
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2391
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2392
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2393
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2394
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2395
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2396
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2398
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 2399
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 2400
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 2401
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    .line 2402
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    .line 2403
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    .line 2404
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    .line 2405
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    .line 2406
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    .line 2407
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    .line 2408
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    .line 2409
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    .line 2410
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    .line 2411
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    .line 2413
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2414
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2415
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2416
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2417
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2418
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    .line 2419
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2420
    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_75

    .line 2422
    :cond_73
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2424
    :goto_75
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_83

    .line 2425
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2426
    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_85

    .line 2428
    :cond_83
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2430
    :goto_85
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2431
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_97

    .line 2432
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2433
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_99

    .line 2435
    :cond_97
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2437
    :goto_99
    iget-boolean v0, p1, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2438
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2439
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 2440
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    .line 2441
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 2338
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2339
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2340
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2341
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2342
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2343
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2344
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2345
    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2347
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 2348
    const/16 v1, -0x80

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 2349
    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 2350
    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    .line 2351
    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    .line 2352
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    .line 2353
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    .line 2354
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    .line 2355
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    .line 2356
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    .line 2357
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    .line 2358
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    .line 2359
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    .line 2360
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    .line 2362
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2363
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2364
    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2365
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2366
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2367
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2368
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2369
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2370
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2371
    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2372
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->energyConsumerDetails:Landroid/os/BatteryStats$EnergyConsumerDetails;

    .line 2373
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->cpuUsageDetails:Landroid/os/BatteryStats$CpuUsageDetails;

    .line 2374
    return-void
.end method

.method public isDeltaData()Z
    .registers 2

    .line 1968
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "src"    # Landroid/os/Parcel;

    .line 2273
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2274
    .local v0, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2276
    .local v1, "bat":I
    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2277
    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2278
    shr-int/lit8 v2, v1, 0x10

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2279
    shr-int/lit8 v2, v1, 0x14

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2280
    shr-int/lit8 v2, v1, 0x18

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2282
    .local v2, "bat2":I
    const v3, 0xffff

    and-int v4, v2, v3

    int-to-short v4, v4

    iput-short v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2283
    shr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v3

    int-to-char v4, v4

    iput-char v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2286
    .local v4, "bat3":I
    and-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 2287
    shr-int/lit8 v3, v4, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 2288
    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 2289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2290
    .local v3, "bat4":I
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    .line 2291
    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    .line 2292
    shr-int/lit8 v5, v3, 0x19

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    .line 2293
    shr-int/lit8 v5, v3, 0x1a

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    .line 2294
    shr-int/lit8 v5, v3, 0x1b

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    .line 2295
    shr-int/lit8 v5, v3, 0x1c

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    .line 2296
    shr-int/lit8 v5, v3, 0x1d

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    .line 2297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2298
    .local v5, "bat5":I
    const v6, 0xffffff

    and-int/2addr v6, v5

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    .line 2299
    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    .line 2300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    .line 2301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    .line 2303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2304
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2305
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2308
    const/high16 v6, 0x10000000

    and-int/2addr v6, v1

    const/4 v7, 0x0

    if-eqz v6, :cond_d5

    .line 2309
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2310
    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_d7

    .line 2312
    :cond_d5
    iput-object v7, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2314
    :goto_d7
    const/high16 v6, 0x20000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_e4

    .line 2315
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2316
    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_e6

    .line 2318
    :cond_e4
    iput-object v7, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2320
    :goto_e6
    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v1

    if-eqz v6, :cond_f9

    .line 2321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2322
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2323
    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_fe

    .line 2325
    :cond_f9
    const/4 v6, 0x0

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2326
    iput-object v7, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2328
    :goto_fe
    iget-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x5

    if-eq v6, v7, :cond_10c

    const/4 v7, 0x7

    if-ne v6, v7, :cond_107

    goto :goto_10c

    .line 2331
    :cond_107
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    goto :goto_112

    .line 2329
    :cond_10c
    :goto_10c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2333
    :goto_112
    iget v6, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2334
    return-void
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 5
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2476
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eq v0, v2, :cond_e

    goto :goto_49

    .line 2479
    :cond_e
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_21

    .line 2480
    if-eqz v0, :cond_20

    if-nez v2, :cond_19

    goto :goto_20

    .line 2483
    :cond_19
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2484
    return v1

    .line 2481
    :cond_20
    :goto_20
    return v1

    .line 2487
    :cond_21
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_34

    .line 2488
    if-eqz v0, :cond_33

    if-nez v2, :cond_2c

    goto :goto_33

    .line 2491
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2492
    return v1

    .line 2489
    :cond_33
    :goto_33
    return v1

    .line 2495
    :cond_34
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_47

    .line 2496
    if-eqz v0, :cond_46

    if-nez v2, :cond_3f

    goto :goto_46

    .line 2499
    :cond_3f
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 2500
    return v1

    .line 2497
    :cond_46
    :goto_46
    return v1

    .line 2503
    :cond_47
    const/4 v0, 0x1

    return v0

    .line 2477
    :cond_49
    :goto_49
    return v1
.end method

.method public sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 6
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2444
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_a4

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v1, :cond_a4

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v1, :cond_a4

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    if-ne v0, v1, :cond_a4

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    if-ne v0, v1, :cond_a4

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-ne v0, v1, :cond_a4

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-ne v0, v1, :cond_a4

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-ne v0, v1, :cond_a4

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-ne v0, v1, :cond_a4

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a4

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a4

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_a4

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v0, v1, :cond_a4

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a4

    const/4 v0, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    return v0
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "cmd"    # B
    .param p4, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2385
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2386
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2387
    invoke-direct {p0, p4}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2388
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 4
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2378
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2379
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2380
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2381
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 11
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2220
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2221
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v0, v0, 0xff

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v1, v1, 0x10

    const/high16 v3, 0xf0000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v1, v1, 0x14

    const/high16 v3, 0xf00000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, 0xf000000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 2226
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    if-eqz v1, :cond_33

    move v1, v3

    goto :goto_34

    :cond_33
    move v1, v4

    :goto_34
    or-int/2addr v0, v1

    .line 2227
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/high16 v5, 0x20000000

    if-eqz v1, :cond_3d

    move v1, v5

    goto :goto_3e

    :cond_3d
    move v1, v4

    :goto_3e
    or-int/2addr v0, v1

    .line 2228
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_45

    const/high16 v4, 0x40000000    # 2.0f

    :cond_45
    or-int/2addr v0, v4

    .line 2229
    .local v0, "bat":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2230
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const v4, 0xffff

    and-int/2addr v1, v4

    iget-char v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v6, v6, 0x10

    const/high16 v7, -0x10000

    and-int/2addr v6, v7

    or-int v0, v1, v6

    .line 2232
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->current:S

    and-int/2addr v1, v4

    iget-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    shl-int/lit8 v4, v4, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    or-int/2addr v1, v4

    iget-byte v4, p0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    shl-int/lit8 v4, v4, 0x18

    const/high16 v7, -0x1000000

    and-int/2addr v4, v7

    or-int v0, v1, v4

    .line 2237
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v6

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    shl-int/lit8 v2, v2, 0x19

    const/high16 v4, 0x2000000

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    shl-int/lit8 v2, v2, 0x1a

    const/high16 v4, 0x4000000

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    shl-int/lit8 v2, v2, 0x1b

    const/high16 v4, 0x8000000

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    shl-int/lit8 v2, v2, 0x1c

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    shl-int/lit8 v2, v2, 0x1d

    and-int/2addr v2, v5

    or-int v0, v1, v2

    .line 2245
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2246
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v7

    or-int v0, v1, v2

    .line 2248
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2249
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2250
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2252
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2254
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2255
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2256
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2257
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_df

    .line 2258
    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2260
    :cond_df
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_e6

    .line 2261
    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2263
    :cond_e6
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_f2

    .line 2264
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2265
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2267
    :cond_f2
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_fa

    const/4 v2, 0x7

    if-ne v1, v2, :cond_ff

    .line 2268
    :cond_fa
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2270
    :cond_ff
    return-void
.end method
