.class public final Landroid/os/AppBackgroundRestrictionsInfo;
.super Ljava/lang/Object;
.source "AppBackgroundRestrictionsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AppBackgroundRestrictionsInfo$BindServiceEventsTrackerInfo;,
        Landroid/os/AppBackgroundRestrictionsInfo$BroadcastEventsTrackerInfo;,
        Landroid/os/AppBackgroundRestrictionsInfo$BatteryTrackerInfo;,
        Landroid/os/AppBackgroundRestrictionsInfo$FgsTrackerInfo;
    }
.end annotation


# static fields
.field public static final BACKGROUND_RESTRICTED:I = 0x2

.field public static final BATTERY_EXEMPTION_TRACKER:I = 0x2

.field public static final BATTERY_TRACKER:I = 0x1

.field public static final BATTERY_TRACKER_INFO:J = 0x10b00000006L

.field public static final BIND_SERVICE_EVENTS_TRACKER:I = 0x7

.field public static final BIND_SERVICE_EVENTS_TRACKER_INFO:J = 0x10b00000008L

.field public static final BROADCAST_EVENTS_TRACKER:I = 0x6

.field public static final BROADCAST_EVENTS_TRACKER_INFO:J = 0x10b00000007L

.field public static final EXEMPTION_REASON:J = 0x10e00000009L

.field public static final FGS_TRACKER:I = 0x3

.field public static final FGS_TRACKER_INFO:J = 0x10b00000005L

.field public static final LEVEL_ADAPTIVE_BUCKET:I = 0x3

.field public static final LEVEL_BACKGROUND_RESTRICTED:I = 0x5

.field public static final LEVEL_EXEMPTED:I = 0x2

.field public static final LEVEL_HIBERNATION:I = 0x6

.field public static final LEVEL_RESTRICTED_BUCKET:I = 0x4

.field public static final LEVEL_UNKNOWN:I = 0x0

.field public static final LEVEL_UNRESTRICTED:I = 0x1

.field public static final LOW_MEM_DEVICE:J = 0x1080000000cL

.field public static final MEDIA_SESSION_TRACKER:I = 0x4

.field public static final NOT_OPTIMIZED:I = 0x3

.field public static final OPTIMIZED:I = 0x1

.field public static final OPT_LEVEL:J = 0x10e0000000aL

.field public static final PERMISSION_TRACKER:I = 0x5

.field public static final PREVIOUS_RESTRICTION_LEVEL:J = 0x10e0000000dL

.field public static final REASON_ACCOUNT_TRANSFER:I = 0x68

.field public static final REASON_ACTIVE_DEVICE_ADMIN:I = 0x144

.field public static final REASON_ACTIVITY_RECOGNITION:I = 0x67

.field public static final REASON_ACTIVITY_STARTER:I = 0x34

.field public static final REASON_ACTIVITY_VISIBILITY_GRACE_PERIOD:I = 0x43

.field public static final REASON_ALARM_MANAGER_ALARM_CLOCK:I = 0x12d

.field public static final REASON_ALARM_MANAGER_WHILE_IDLE:I = 0x12e

.field public static final REASON_ALLOWLISTED_PACKAGE:I = 0x41

.field public static final REASON_APPOP:I = 0x42

.field public static final REASON_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3a

.field public static final REASON_BACKGROUND_FGS_PERMISSION:I = 0x3b

.field public static final REASON_BLUETOOTH_BROADCAST:I = 0xcb

.field public static final REASON_BOOT_COMPLETED:I = 0xc8

.field public static final REASON_CARRIER_PRIVILEGED_APP:I = 0x141

.field public static final REASON_COMPANION_DEVICE_MANAGER:I = 0x39

.field public static final REASON_CURRENT_INPUT_METHOD:I = 0x47

.field public static final REASON_DENIED:I = 0x1

.field public static final REASON_DEVICE_DEMO_MODE:I = 0x3f

.field public static final REASON_DEVICE_OWNER:I = 0x37

.field public static final REASON_DISALLOW_APPS_CONTROL:I = 0x143

.field public static final REASON_DOMAIN_VERIFICATION_V1:I = 0x133

.field public static final REASON_DOMAIN_VERIFICATION_V2:I = 0x134

.field public static final REASON_DPO_PROTECTED_APP:I = 0x142

.field public static final REASON_EVENT_MMS:I = 0x13b

.field public static final REASON_EVENT_SMS:I = 0x13a

.field public static final REASON_FGS_BINDING:I = 0x36

.field public static final REASON_GEOFENCING:I = 0x64

.field public static final REASON_INSTR_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3c

.field public static final REASON_INSTR_BACKGROUND_FGS_PERMISSION:I = 0x3d

.field public static final REASON_KEY_CHAIN:I = 0x130

.field public static final REASON_LOCALE_CHANGED:I = 0xce

.field public static final REASON_LOCATION_PROVIDER:I = 0x138

.field public static final REASON_LOCKED_BOOT_COMPLETED:I = 0xca

.field public static final REASON_MEDIA_BUTTON:I = 0x139

.field public static final REASON_MEDIA_SESSION_CALLBACK:I = 0x13d

.field public static final REASON_NOTIFICATION_SERVICE:I = 0x136

.field public static final REASON_OPT_OUT_REQUESTED:I = 0x3e8

.field public static final REASON_OP_ACTIVATE_PLATFORM_VPN:I = 0x45

.field public static final REASON_OP_ACTIVATE_VPN:I = 0x44

.field public static final REASON_OTHER:I = 0x2

.field public static final REASON_PACKAGE_REPLACED:I = 0x137

.field public static final REASON_PACKAGE_VERIFIER:I = 0x131

.field public static final REASON_PRE_BOOT_COMPLETED:I = 0xc9

.field public static final REASON_PROC_STATE_BFGS:I = 0xf

.field public static final REASON_PROC_STATE_BTOP:I = 0xd

.field public static final REASON_PROC_STATE_FGS:I = 0xe

.field public static final REASON_PROC_STATE_PERSISTENT:I = 0xa

.field public static final REASON_PROC_STATE_PERSISTENT_UI:I = 0xb

.field public static final REASON_PROC_STATE_TOP:I = 0xc

.field public static final REASON_PROFILE_OWNER:I = 0x38

.field public static final REASON_PUSH_MESSAGING:I = 0x65

.field public static final REASON_PUSH_MESSAGING_OVER_QUOTA:I = 0x66

.field public static final REASON_REFRESH_SAFETY_SOURCES:I = 0xd0

.field public static final REASON_ROLE_DIALER:I = 0x13e

.field public static final REASON_ROLE_EMERGENCY:I = 0x13f

.field public static final REASON_SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED:I = 0xcf

.field public static final REASON_SERVICE_LAUNCH:I = 0x12f

.field public static final REASON_SHELL:I = 0x13c

.field public static final REASON_START_ACTIVITY_FLAG:I = 0x35

.field public static final REASON_SYNC_MANAGER:I = 0x132

.field public static final REASON_SYSTEM_ALERT_WINDOW_PERMISSION:I = 0x3e

.field public static final REASON_SYSTEM_ALLOW_LISTED:I = 0x12c

.field public static final REASON_SYSTEM_MODULE:I = 0x140

.field public static final REASON_SYSTEM_UID:I = 0x33

.field public static final REASON_TEMP_ALLOWED_WHILE_IN_USE:I = 0x46

.field public static final REASON_TIMEZONE_CHANGED:I = 0xcc

.field public static final REASON_TIME_CHANGED:I = 0xcd

.field public static final REASON_UID_VISIBLE:I = 0x32

.field public static final REASON_UNKNOWN:I = 0x0

.field public static final REASON_VPN:I = 0x135

.field public static final RESTRICTION_LEVEL:J = 0x10e00000002L

.field public static final SDK_PRE_S:I = 0x1

.field public static final SDK_S:I = 0x2

.field public static final SDK_T:I = 0x3

.field public static final SDK_UNKNOWN:I = 0x0

.field public static final TARGET_SDK:J = 0x10e0000000bL

.field public static final THRESHOLD:J = 0x10e00000003L

.field public static final THRESHOLD_RESTRICTED:I = 0x1

.field public static final THRESHOLD_UNKNOWN:I = 0x0

.field public static final THRESHOLD_USER:I = 0x2

.field public static final TRACKER:J = 0x10e00000004L

.field public static final UID:J = 0x10500000001L

.field public static final UNKNOWN:I

.field public static final UNKNOWN_TRACKER:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
