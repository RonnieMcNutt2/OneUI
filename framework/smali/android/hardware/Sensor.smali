.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field private static final ADDITIONAL_INFO_MASK:I = 0x40

.field private static final ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final DATA_INJECTION_MASK:I = 0x10

.field private static final DATA_INJECTION_SHIFT:I = 0x4

.field private static final DIRECT_CHANNEL_MASK:I = 0xc00

.field private static final DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final DIRECT_REPORT_MASK:I = 0x380

.field private static final DIRECT_REPORT_SHIFT:I = 0x7

.field private static final DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field public static final SEM_ACCELEROMETER_SUB:I = 0x10097

.field public static final SEM_ACCELEROMETER_UNCALIBRATED_SUB:I = 0x10098

.field public static final SEM_FOLDING_ANGLE:I = 0x10096

.field public static final SEM_GYROSCOPE_SUB:I = 0x10099

.field public static final SEM_GYROSCOPE_UNCALIBRATED_SUB:I = 0x1009a

.field public static final SEM_TABLE_MODE:I = 0x1009d

.field public static final SEM_TRIMAGNETIC_FIELD:I = 0x1009e

.field public static final SEM_TYPE_ANGLE_SENSOR_STATUS_CHECK:I = 0x100a4

.field public static final SEM_TYPE_AUDIO_PROXIMITY:I = 0x1003d

.field public static final SEM_TYPE_AUTOBRIGHTNESS:I = 0x10041

.field public static final SEM_TYPE_CALLGESTURE:I = 0x1003a

.field public static final SEM_TYPE_CAMERA_LIGHT:I = 0x10044

.field public static final SEM_TYPE_CAR_CRASH_DETECTION:I = 0x10070

.field public static final SEM_TYPE_CHECK_PROXIMITY:I = 0x1003b

.field public static final SEM_TYPE_DEVICE_COMMON_INFO:I = 0x10071

.field public static final SEM_TYPE_DROP_CLASSIFIER:I = 0x1006c

.field public static final SEM_TYPE_EARSENSE:I = 0x8

.field public static final SEM_TYPE_FLIP_COVER_DETECTOR:I = 0x10067

.field public static final SEM_TYPE_FOLDING_ANGLE:I = 0x10096

.field public static final SEM_TYPE_FOLDING_STATE:I = 0x1009f

.field public static final SEM_TYPE_FREEFALL_DETECT:I = 0x10042

.field public static final SEM_TYPE_GRIP_NOTIFIER:I = 0x1006d

.field public static final SEM_TYPE_GRIP_SUB:I = 0x10064

.field public static final SEM_TYPE_GRIP_SUB2:I = 0x10065

.field public static final SEM_TYPE_GRIP_SUB3:I = 0x10066

.field public static final SEM_TYPE_HALLIC:I = 0x10040

.field public static final SEM_TYPE_HEART_RATE:I = 0x1001a

.field public static final SEM_TYPE_HOVER_PROXIMITY:I = 0x1003f

.field public static final SEM_TYPE_LED_COVER_EVENT:I = 0x10046

.field public static final SEM_TYPE_LID_ANGLE_FUSION_LOGGING:I = 0x100a0

.field public static final SEM_TYPE_LID_FOLDING_STATE_LPM:I = 0x100a1

.field public static final SEM_TYPE_LIGHT_CCT:I = 0x10033

.field public static final SEM_TYPE_LIGHT_SEAMLESS:I = 0x1004e

.field public static final SEM_TYPE_LIGHT_STRM_SUB:I = 0x1006a

.field public static final SEM_TYPE_LIGHT_SUB:I = 0x10069

.field public static final SEM_TYPE_LP_SCAN_STATE:I = 0x10055

.field public static final SEM_TYPE_MOVE_DETECTOR:I = 0x10039

.field public static final SEM_TYPE_PHYSICAL_PROXIMITY:I = 0x10038

.field public static final SEM_TYPE_POCKET_DETECTOR:I = 0x10049

.field public static final SEM_TYPE_POCKET_MODE:I = 0x10045

.field public static final SEM_TYPE_POCKET_MODE_LITE:I = 0x10048

.field public static final SEM_TYPE_POCKET_POS_MODE:I = 0x100a2

.field public static final SEM_TYPE_POWER_KEY_DETECTOR:I = 0x10043

.field public static final SEM_TYPE_SAR_BACKOFF_MOTION:I = 0x1006b

.field public static final SEM_TYPE_SEQ_STEP:I = 0x1006f

.field public static final SEM_TYPE_SHAKE_TRACKER:I = 0x1004c

.field public static final SEM_TYPE_SMART_ALERT:I = 0x100c8

.field public static final SEM_TYPE_SUPERSTEADY_GYROSCOPE:I = 0x1006e

.field public static final SEM_TYPE_TAP_TRACKER:I = 0x1004b

.field public static final SEM_TYPE_TOUCH_LIGHT:I = 0x10068

.field public static final SEM_TYPE_TOUCH_PROXIMITY:I = 0x1003c

.field public static final SEM_TYPE_TOUCH_PROXIMITY_POCKET:I = 0x1004a

.field public static final SEM_TYPE_VDIS_GYRO:I = 0x10047

.field public static final SEM_WAKE_UP_MOTION:I = 0x10036

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final SENSOR_TYPE_BLOODGLUCOSE:I = 0x1001f

.field public static final SENSOR_TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_ACCELEROMETER_LIMITED_AXES:Ljava/lang/String; = "android.sensor.accelerometer_limited_axes"

.field public static final STRING_TYPE_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_limited_axes_uncalibrated"

.field public static final STRING_TYPE_ACCELEROMETER_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_uncalibrated"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_LIMITED_AXES:Ljava/lang/String; = "android.sensor.gyroscope_limited_axes"

.field public static final STRING_TYPE_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_limited_axes_uncalibrated"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEADING:Ljava/lang/String; = "android.sensor.heading"

.field public static final STRING_TYPE_HEAD_TRACKER:Ljava/lang/String; = "android.sensor.head_tracker"

.field public static final STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_HINGE_ANGLE:Ljava/lang/String; = "android.sensor.hinge_angle"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT:Ljava/lang/String; = "android.sensor.low_latency_offbody_detect"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ACCELEROMETER_LIMITED_AXES:I = 0x26

.field public static final TYPE_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:I = 0x28

.field public static final TYPE_ACCELEROMETER_UNCALIBRATED:I = 0x23

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_BIO:I = 0x10019

.field public static final TYPE_BIO_ALC:I = 0x10029

.field public static final TYPE_BIO_LED_GREEN:I = 0x10025

.field public static final TYPE_BIO_LED_IR:I = 0x10023

.field public static final TYPE_BIO_LED_RED:I = 0x10024

.field public static final TYPE_BIO_LED_VIOLET:I = 0x10026

.field public static final TYPE_BODY_TEMPERATURE:I = 0x1001e

.field public static final TYPE_CONTROL_MOTIONRECOGNITION:I = 0x1001b

.field public static final TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final TYPE_DYNAMIC_SENSOR_META:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TYPE_ELECTROCARDIOGRAM:I = 0x10022

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GRIP:I = 0x10018

.field public static final TYPE_GRIP_WIFI:I = 0x10027

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_LIMITED_AXES:I = 0x27

.field public static final TYPE_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:I = 0x29

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HEADING:I = 0x2a

.field public static final TYPE_HEAD_TRACKER:I = 0x25

.field public static final TYPE_HEART_BEAT:I = 0x1f

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_HINGE_ANGLE:I = 0x24

.field public static final TYPE_INTERRUPT_GYRO:I = 0x1002b

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LIGHT_CCT:I = 0x10033

.field public static final TYPE_LIGHT_IR:I = 0x1002a

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_LOW_LATENCY_OFFBODY_DETECT:I = 0x22

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MOTIONRECOGNITION:I = 0x10017

.field public static final TYPE_MOTION_DETECT:I = 0x1e

.field public static final TYPE_MOTOR_TEST:I = 0x1002d

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PEDOMETER_LOGGING:I = 0x10021

.field public static final TYPE_PEDOMETER_NORMAL:I = 0x10020

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_POSE_6DOF:I = 0x1c

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_PROXIMITY_ALERT:I = 0x1002e

.field public static final TYPE_PROXIMITY_FLICKER:I = 0x1002f

.field public static final TYPE_PROXIMITY_POCKET:I = 0x10035

.field public static final TYPE_REAR_LED_BLUE:I = 0x1005d

.field public static final TYPE_REAR_LED_GREEN:I = 0x1005c

.field public static final TYPE_REAR_LED_RED:I = 0x1005b

.field public static final TYPE_REAR_PROX_DETECT:I = 0x1002c

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SCONTEXT:I = 0x10032

.field public static final TYPE_SCREEN_ORIENTATION:I = 0x10016

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TABLE_ROTATION:I = 0x1001c

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_THERMISTOR:I = 0x10034

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_ULTRAVIOLET:I = 0x10015

.field public static final TYPE_UV_RAY:I = 0x1001d

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field public static final TYPE_WRIST_TILT_GESTURE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final sSamsungDualSensorReportingModes:[I

.field private static final sSamsungSensorReportingModes:[I

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mId:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mUuid:Ljava/util/UUID;

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1461
    const/16 v0, 0x2b

    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    sput-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    .line 1507
    new-array v0, v0, [I

    fill-array-data v0, :array_74

    sput-object v0, Landroid/hardware/Sensor;->sSamsungSensorReportingModes:[I

    .line 1554
    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/hardware/Sensor;->sSamsungDualSensorReportingModes:[I

    return-void

    :array_1a
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x5
        0x1
        0x1
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x10
        0x1
        0x1
        0x1
        0x2
        0x10
        0x1
        0x6
        0x1
        0x6
        0x6
        0x6
        0x9
        0x9
        0x2
    .end array-data

    :array_74
    .array-data 4
        0x3
        0x2
        0x3
        0x10
        0x3
        0x5
        0x3
        0x1
        0x3
        0x5
        0x5
        0x2
        0xd
        0x10
        0x3
        0x3
        0x3
        0x3
        0x10
        0x10
        0x10
        0x10
        0x3
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0xa
        0x10
        0x10
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 1671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1672
    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputSensorInfo;)V
    .registers 7
    .param p1, "sensorInfo"    # Landroid/hardware/input/InputSensorInfo;

    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1680
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    .line 1681
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getVendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    .line 1682
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getVersion()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mVersion:I

    .line 1683
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getHandle()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mHandle:I

    .line 1684
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mType:I

    .line 1685
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMaxRange()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 1686
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getResolution()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 1687
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getPower()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mPower:F

    .line 1688
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMinDelay()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    .line 1689
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFifoReservedEventCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    .line 1690
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFifoMaxEventCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    .line 1691
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getStringType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1692
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getRequiredPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    .line 1693
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMaxDelay()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    .line 1694
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFlags:I

    .line 1695
    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getId()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mId:I

    .line 1697
    new-instance v0, Ljava/util/UUID;

    iget v1, p0, Landroid/hardware/Sensor;->mId:I

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    .line 1698
    return-void
.end method

.method public static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .registers 11
    .param p0, "sensor"    # Landroid/hardware/Sensor;
    .param p1, "sdkLevel"    # I

    .line 1620
    const v0, 0x10015

    .line 1621
    .local v0, "SENSOR_TYPE_PRIVATE_START":I
    sget-object v1, Landroid/hardware/Sensor;->sSamsungSensorReportingModes:[I

    array-length v2, v1

    add-int/2addr v2, v0

    .line 1622
    .local v2, "SENSOR_TYPE_PRIVATE_END":I
    const v3, 0x10096

    .line 1623
    .local v3, "SENSOR_TYPE_DUAL_PRIVATE_START":I
    sget-object v4, Landroid/hardware/Sensor;->sSamsungDualSensorReportingModes:[I

    array-length v5, v4

    add-int/2addr v5, v3

    .line 1627
    .local v5, "SENSOR_TYPE_DUAL_PRIVATE_END":I
    iget v6, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_1a

    const/16 v6, 0x11

    if-gt p1, v6, :cond_1a

    .line 1629
    const/4 v1, 0x3

    return v1

    .line 1631
    :cond_1a
    iget v6, p0, Landroid/hardware/Sensor;->mType:I

    .line 1632
    .local v6, "offset":I
    sget-object v7, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v8, v7

    if-ge v6, v8, :cond_24

    .line 1633
    aget v1, v7, v6

    return v1

    .line 1634
    :cond_24
    if-lt v6, v0, :cond_2c

    if-ge v6, v2, :cond_2c

    .line 1635
    sub-int/2addr v6, v0

    .line 1636
    aget v1, v1, v6

    return v1

    .line 1637
    :cond_2c
    if-lt v6, v3, :cond_34

    if-ge v6, v5, :cond_34

    .line 1638
    sub-int/2addr v6, v3

    .line 1639
    aget v1, v4, v6

    return v1

    .line 1645
    :cond_34
    const/16 v1, 0x10

    return v1
.end method

.method private setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 2089
    iput p1, p0, Landroid/hardware/Sensor;->mId:I

    .line 2090
    return-void
.end method

.method private setType(I)Z
    .registers 4
    .param p1, "value"    # I

    .line 1955
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    .line 1956
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_bc

    .line 2066
    :pswitch_6
    const/4 v0, 0x0

    return v0

    .line 2063
    :pswitch_8
    const-string v1, "android.sensor.heading"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2064
    return v0

    .line 2060
    :pswitch_d
    const-string v1, "android.sensor.gyroscope_limited_axes_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2061
    return v0

    .line 2057
    :pswitch_12
    const-string v1, "android.sensor.accelerometer_limited_axes_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2058
    return v0

    .line 2054
    :pswitch_17
    const-string v1, "android.sensor.gyroscope_limited_axes"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2055
    return v0

    .line 2051
    :pswitch_1c
    const-string v1, "android.sensor.accelerometer_limited_axes"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2052
    return v0

    .line 2048
    :pswitch_21
    const-string v1, "android.sensor.head_tracker"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2049
    return v0

    .line 2045
    :pswitch_26
    const-string v1, "android.sensor.hinge_angle"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2046
    return v0

    .line 2042
    :pswitch_2b
    const-string v1, "android.sensor.accelerometer_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2043
    return v0

    .line 2039
    :pswitch_30
    const-string v1, "android.sensor.low_latency_offbody_detect"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2040
    return v0

    .line 2036
    :pswitch_35
    const-string v1, "android.sensor.dynamic_sensor_meta"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2037
    return v0

    .line 2033
    :pswitch_3a
    const-string v1, "android.sensor.device_orientation"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2034
    return v0

    .line 1997
    :pswitch_3f
    const-string v1, "android.sensor.pick_up_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1998
    return v0

    .line 1970
    :pswitch_44
    const-string v1, "android.sensor.glance_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1971
    return v0

    .line 2024
    :pswitch_49
    const-string v1, "android.sensor.wake_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2025
    return v0

    .line 2021
    :pswitch_4e
    const-string v1, "android.sensor.tilt_detector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2022
    return v0

    .line 1982
    :pswitch_53
    const-string v1, "android.sensor.heart_rate"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1983
    return v0

    .line 1967
    :pswitch_58
    const-string v1, "android.sensor.geomagnetic_rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1968
    return v0

    .line 2015
    :pswitch_5d
    const-string v1, "android.sensor.step_counter"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2016
    return v0

    .line 2018
    :pswitch_62
    const-string v1, "android.sensor.step_detector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2019
    return v0

    .line 2012
    :pswitch_67
    const-string v1, "android.sensor.significant_motion"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2013
    return v0

    .line 1979
    :pswitch_6c
    const-string v1, "android.sensor.gyroscope_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1980
    return v0

    .line 1964
    :pswitch_71
    const-string v1, "android.sensor.game_rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1965
    return v0

    .line 1994
    :pswitch_76
    const-string v1, "android.sensor.magnetic_field_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1995
    return v0

    .line 1961
    :pswitch_7b
    const-string v1, "android.sensor.ambient_temperature"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1962
    return v0

    .line 2006
    :pswitch_80
    const-string v1, "android.sensor.relative_humidity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2007
    return v0

    .line 2009
    :pswitch_85
    const-string v1, "android.sensor.rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2010
    return v0

    .line 1988
    :pswitch_8a
    const-string v1, "android.sensor.linear_acceleration"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1989
    return v0

    .line 1973
    :pswitch_8f
    const-string v1, "android.sensor.gravity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1974
    return v0

    .line 2003
    :pswitch_94
    const-string v1, "android.sensor.proximity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2004
    return v0

    .line 2030
    :pswitch_99
    const-string v1, "android.sensor.temperature"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2031
    return v0

    .line 2000
    :pswitch_9e
    const-string v1, "android.sensor.pressure"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2001
    return v0

    .line 1985
    :pswitch_a3
    const-string v1, "android.sensor.light"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1986
    return v0

    .line 1976
    :pswitch_a8
    const-string v1, "android.sensor.gyroscope"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1977
    return v0

    .line 2027
    :pswitch_ad
    const-string v1, "android.sensor.orientation"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 2028
    return v0

    .line 1991
    :pswitch_b2
    const-string v1, "android.sensor.magnetic_field"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1992
    return v0

    .line 1958
    :pswitch_b7
    const-string v1, "android.sensor.accelerometer"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 1959
    return v0

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_b2
        :pswitch_ad
        :pswitch_a8
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_6
        :pswitch_3a
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_35
        :pswitch_6
        :pswitch_30
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method private setUuid(JJ)V
    .registers 6
    .param p1, "msb"    # J
    .param p3, "lsb"    # J

    .line 2078
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    .line 2079
    return-void
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .registers 2

    .line 1779
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .registers 2

    .line 1769
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .registers 2

    .line 1823
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getHighestDirectReportRateLevel()I
    .registers 3

    .line 1591
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v0, v0, 0x380

    shr-int/lit8 v0, v0, 0x7

    .line 1592
    .local v0, "rateLevel":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_b

    .line 1593
    move v1, v0

    goto :goto_c

    :cond_b
    nop

    .line 1592
    :goto_c
    return v1
.end method

.method public getId()I
    .registers 2

    .line 1809
    iget v0, p0, Landroid/hardware/Sensor;->mId:I

    return v0
.end method

.method public getMaxDelay()I
    .registers 2

    .line 1836
    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return v0
.end method

.method public getMaximumRange()F
    .registers 2

    .line 1736
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .registers 2

    .line 1761
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1705
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .registers 2

    .line 1750
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getReportingMode()I
    .registers 2

    .line 1574
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .registers 2

    .line 1817
    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .registers 2

    .line 1743
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .registers 2

    .line 1786
    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 1719
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1800
    iget-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .line 1712
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 3

    .line 1726
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1727
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/Sensor;->mVersion:I

    .line 1729
    :cond_d
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public isAdditionalInfoSupported()Z
    .registers 2

    .line 1897
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDataInjectionSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1911
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isDirectChannelTypeSupported(I)Z
    .registers 5
    .param p1, "sharedMemType"    # I

    .line 1605
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_18

    .line 1611
    return v1

    .line 1609
    :pswitch_6
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-lez v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 1607
    :pswitch_f
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x400

    if-lez v2, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public isDynamicSensor()Z
    .registers 2

    .line 1887
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isWakeUpSensor()Z
    .registers 3

    .line 1877
    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public semIsOnFoldingSide()Z
    .registers 4

    .line 1931
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    const v1, 0x10041

    if-ne v0, v1, :cond_10

    goto :goto_11

    .line 1941
    :cond_10
    return v2

    .line 1934
    :cond_11
    :goto_11
    const-string/jumbo v0, "ro.product.vendor.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1935
    .local v0, "model":Ljava/lang/String;
    if-eqz v0, :cond_2c

    const-string v1, "bloom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "b2q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1936
    :cond_2a
    const/4 v1, 0x1

    return v1

    .line 1938
    :cond_2c
    return v2
.end method

.method setRange(FF)V
    .registers 3
    .param p1, "max"    # F
    .param p2, "res"    # F

    .line 1915
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 1916
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 1917
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
