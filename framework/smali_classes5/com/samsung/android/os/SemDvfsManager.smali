.class public abstract Lcom/samsung/android/os/SemDvfsManager;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;,
        Lcom/samsung/android/os/SemDvfsManager$RequestFunc;,
        Lcom/samsung/android/os/SemDvfsManager$HintType;,
        Lcom/samsung/android/os/SemDvfsManager$TypeResource;
    }
.end annotation


# static fields
.field private static final ACQUIRE_PAIR_SIZE:I = 0x2

.field public static final FREQUENCY_LIST_ALL:I = 0x0

.field public static final FREQUENCY_LIST_DEFAULT:I = 0x1

.field public static final HINT_AMS_ACT_LAZY:Ljava/lang/String; = "AMS_ACT_LAZY"

.field public static final HINT_AMS_ACT_RESUME:Ljava/lang/String; = "AMS_ACT_RESUME"

.field public static final HINT_AMS_ACT_START:Ljava/lang/String; = "AMS_ACT_START"

.field public static final HINT_AMS_APP_HOME:Ljava/lang/String; = "AMS_APP_HOME"

.field public static final HINT_AMS_APP_SWITCH:Ljava/lang/String; = "AMS_APP_SWITCH"

.field public static final HINT_AMS_RELAUNCH_RESUME:Ljava/lang/String; = "AMS_RELAUNCH_RESUME"

.field public static final HINT_AMS_RESUME:Ljava/lang/String; = "AMS_RESUME"

.field public static final HINT_AMS_RESUME_TAIL:Ljava/lang/String; = "AMS_RESUME_TAIL"

.field public static final HINT_AMS_RESUME_TAIL_CSTATE:Ljava/lang/String; = "AMS_RESUME_TAIL_CSTATE"

.field public static final HINT_APP_LAUNCH:Ljava/lang/String; = "APP_LAUNCH"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_BADGE_UPDATE:Ljava/lang/String; = "BADGE_UPDATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_BROWSER_FLING:Ljava/lang/String; = "BROWSER_FLING"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_BROWSER_TOUCH:Ljava/lang/String; = "BROWSER_TOUCH"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_CONTACT_SCROLL:Ljava/lang/String; = "CONTACT_SCROLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_DEVICE_WAKEUP:Ljava/lang/String; = "DEVICE_WAKEUP"

.field public static final HINT_GALLERY_SCROLL:Ljava/lang/String; = "GALLERY_SCROLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_GALLERY_TOUCH:Ljava/lang/String; = "GALLERY_TOUCH"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_GALLERY_TOUCH_TAIL:Ljava/lang/String; = "GALLERY_TOUCH_TAIL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_GESTURE_DETECTED:Ljava/lang/String; = "GESTURE_DETECTED"

.field public static final HINT_GESTURE_DETECTED_HRR:Ljava/lang/String; = "GESTURE_DETECTED_HRR"

.field public static final HINT_HOME_KEY_TOUCH:Ljava/lang/String; = "HOME_KEY_TOUCH"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_LAUNCHER_TOUCH:Ljava/lang/String; = "LAUNCHER_TOUCH"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HINT_LISTVIEW_SCROLL:Ljava/lang/String; = "LISTVIEW_SCROLL"

.field public static final HINT_PWM_ROTATION:Ljava/lang/String; = "PWM_ROTATION"

.field public static final HINT_SAMSUNG_KEYBOARD_FIRST_SHOW:Ljava/lang/String; = "SKBD_FIRST_SHOW"

.field public static final HINT_SAMSUNG_KEYBOARD_RE_ENTER_SHOW:Ljava/lang/String; = "SKBD_RE_ENTER_SHOW"

.field public static final HINT_SMART_VIEW_NORMAL:Ljava/lang/String; = "SMART_VIEW_NORMAL"

.field public static final HINT_SMART_VIEW_SECURE:Ljava/lang/String; = "SMART_VIEW_SECURE"

.field public static final HINT_SMOOTH_SCROLL:Ljava/lang/String; = "SMOOTH_SCROLL"

.field public static final HINT_TYPE_AMS_ACT_LAZY:I = 0x6

.field public static final HINT_TYPE_AMS_ACT_RESUME:I = 0x3

.field public static final HINT_TYPE_AMS_ACT_RESUME_LOW:I = 0x1e

.field public static final HINT_TYPE_AMS_ACT_START:I = 0x4

.field public static final HINT_TYPE_AMS_ACT_START_LOW:I = 0x1d

.field public static final HINT_TYPE_AMS_APP_HOME:I = 0x8

.field public static final HINT_TYPE_AMS_APP_LAUNCH:I = 0x20

.field public static final HINT_TYPE_AMS_APP_LAUNCH_LM:I = 0x1c

.field public static final HINT_TYPE_AMS_APP_LAUNCH_M:I = 0x1b

.field public static final HINT_TYPE_AMS_APP_LAUNCH_WARM:I = 0x21

.field public static final HINT_TYPE_AMS_APP_LAUNCH_WARM_LM:I = 0x23

.field public static final HINT_TYPE_AMS_APP_LAUNCH_WARM_M:I = 0x22

.field public static final HINT_TYPE_AMS_APP_SWITCH:I = 0x7

.field public static final HINT_TYPE_AMS_RELAUNCH_RESUME:I = 0x2

.field public static final HINT_TYPE_AMS_RESUME:I = 0x1

.field public static final HINT_TYPE_AMS_RESUME_TAIL:I = 0x5

.field public static final HINT_TYPE_AMS_RESUME_TAIL_LOW:I = 0x1f

.field public static final HINT_TYPE_APP_LAUNCH:I = 0x12

.field public static final HINT_TYPE_APP_START:I = 0x18

.field public static final HINT_TYPE_BADGE_UPDATE:I = 0x1a

.field public static final HINT_TYPE_BROWSER_FLING:I = 0x11

.field public static final HINT_TYPE_BROWSER_TOUCH:I = 0xd

.field public static final HINT_TYPE_CONTACT_SCROLL:I = 0x14

.field public static final HINT_TYPE_DEVICE_WAKEUP:I = 0x13

.field public static final HINT_TYPE_DEX_SWITCH_BOOST_STANDALONE_MODE:I = 0xbb8

.field public static final HINT_TYPE_GALLERY_SCROLL:I = 0xb

.field public static final HINT_TYPE_GALLERY_TOUCH:I = 0x9

.field public static final HINT_TYPE_GALLERY_TOUCH_TAIL:I = 0xa

.field public static final HINT_TYPE_GESTURE_DETECTED:I = 0x16

.field public static final HINT_TYPE_GESTURE_DETECTED_HRR:I = 0x17

.field public static final HINT_TYPE_HOME_KEY_TOUCH:I = 0xe

.field public static final HINT_TYPE_LAUNCHER_TOUCH:I = 0xc

.field public static final HINT_TYPE_LISTVIEW_SCROLL:I = 0x10

.field public static final HINT_TYPE_PERF_TUNE_30:I = 0x3ea

.field public static final HINT_TYPE_PERF_TUNE_50:I = 0x3e9

.field public static final HINT_TYPE_PERF_TUNE_70:I = 0x3e8

.field public static final HINT_TYPE_PERF_TUNE_MAX:I = 0x3eb

.field public static final HINT_TYPE_PWM_ROTATION:I = 0xf

.field public static final HINT_TYPE_SAMSUNG_KEYBOARD_FIRST_SHOW:I = 0x924

.field public static final HINT_TYPE_SAMSUNG_KEYBOARD_RE_ENTER_SHOW:I = 0x925

.field public static final HINT_TYPE_SIOP_LIMIT_BOOST:I = 0x44c

.field public static final HINT_TYPE_SMART_VIEW_NORMAL:I = 0x4b0

.field public static final HINT_TYPE_SMART_VIEW_SECURE:I = 0x4b1

.field public static final HINT_TYPE_SMOOTH_SCROLL:I = 0x15

.field private static final MAX_TOKEN_SIZE:I = 0x3e8

.field public static final NONE:I = -0x3e7

.field public static final TYPE_BUS_MAX:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_BUS_MIN:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPUCTL:I = 0x1c

.field public static final TYPE_CPUSET:I = 0x1b

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPU_DELAYED_LOW_POWER_MODE:I = 0x1f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPU_HOTPLUG_DISABLE:I = 0x19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPU_LEGACY_SCHEDULER:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPU_MAX:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPU_MIN:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPU_MIN_LITTLE_CORE:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CPU_POWER_COLLAPSE_DISABLE:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_EXTRA_TIMEOUT:I = -0xffffff

.field public static final TYPE_FPS_MAX:I = 0x16

.field public static final TYPE_GPU_MAX:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_GPU_MIN:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_HINT:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_NONE:I = -0x3e7

.field public static final TYPE_PCIE_PSM_DISABLE:I = 0x1a

.field public static final TYPE_RESOURCE_BUS_MAX:I = 0x30001002

.field public static final TYPE_RESOURCE_BUS_MIN:I = 0x30001001

.field public static final TYPE_RESOURCE_CPU_CORE_NUM_MAX:I = 0x10002004

.field public static final TYPE_RESOURCE_CPU_CORE_NUM_MIN:I = 0x10002003

.field public static final TYPE_RESOURCE_CPU_DELAYED_LOW_POWER_MODE:I = 0x10004000

.field public static final TYPE_RESOURCE_CPU_LITTLE_CORE_NUM_MIN:I = 0x10002001

.field public static final TYPE_RESOURCE_CPU_LITTLE_RTG:I = 0x11002001

.field public static final TYPE_RESOURCE_CPU_MAX:I = 0x12001002

.field public static final TYPE_RESOURCE_CPU_MAX_LITTLE_CORE:I = 0x11001002

.field public static final TYPE_RESOURCE_CPU_MIN:I = 0x12001001

.field public static final TYPE_RESOURCE_CPU_MIN_LITTLE_CORE:I = 0x11001001

.field public static final TYPE_RESOURCE_CPU_POWER_COLLAPSE_DISABLE:I = 0x10003000

.field public static final TYPE_RESOURCE_CPU_PRIME_CORE_NUM_MAX:I = 0x10002006

.field public static final TYPE_RESOURCE_CPU_PRIME_CORE_NUM_MIN:I = 0x10002005

.field public static final TYPE_RESOURCE_DDR_LIMIT:I = 0x30002000

.field public static final TYPE_RESOURCE_DDR_MEMLAT_RATIO_CEIL:I = 0x32001006

.field public static final TYPE_RESOURCE_GPU_MAX:I = 0x20001002

.field public static final TYPE_RESOURCE_GPU_MIN:I = 0x20001001

.field public static final TYPE_RESOURCE_LLCC_BW_HYST:I = 0x32001001

.field public static final TYPE_RESOURCE_LLCC_BW_IO_PERCENT:I = 0x32001003

.field public static final TYPE_RESOURCE_LLCC_BW_SAMPLE_MS:I = 0x32001002

.field public static final TYPE_RESOURCE_LLCC_DDR_RATIO_CEIL:I = 0x32001005

.field public static final TYPE_RESOURCE_LLCC_MEMLAT_RATIO_CEIL:I = 0x32001004

.field public static final TYPE_RESOURCE_LLC_OFF_DISABLE:I = 0x32002001

.field public static final TYPE_RESOURCE_OVER_LIMIT:I = 0x60001001

.field public static final TYPE_RESOURCE_PCIE_PSM_DISABLE:I = 0x60000000

.field public static final TYPE_RESOURCE_SCHED_LOAD_BOOST_CPU0:I = 0x12003000

.field public static final TYPE_RESOURCE_SCHED_LOAD_BOOST_CPU1:I = 0x12003001

.field public static final TYPE_RESOURCE_SCHED_LOAD_BOOST_CPU2:I = 0x12003002

.field public static final TYPE_RESOURCE_SCHED_LOAD_BOOST_CPU3:I = 0x12003003

.field public static final TYPE_RESOURCE_SCHED_LOAD_BOOST_CPU4:I = 0x12003004

.field public static final TYPE_RESOURCE_SCHED_LOAD_BOOST_CPU5:I = 0x12003005

.field public static final TYPE_RESOURCE_SCHED_LOAD_BOOST_CPU6:I = 0x12003006

.field public static final TYPE_RESOURCE_SCHED_LOAD_BOOST_CPU7:I = 0x12003007

.field public static final TYPE_RESOURCE_TA_BOOST:I = 0x41001003

.field public static final TYPE_RESOURCE_UID:I = -0xf00000

.field public static final TYPE_SCHEDTUNE_BOOST:I = 0x1e

.field public static final TYPE_SCHEDTUNE_POLICY:I = 0x1d

.field public static final TYPE_TIMEOUT:I = -0x1000000

.field private static final VALUE_APP_START:Ljava/lang/String; = "start"

.field private static final VALUE_APP_START_HOME:Ljava/lang/String; = "start_home"

.field private static final VALUE_APP_START_SHORT:Ljava/lang/String; = "start_short"

.field private static hintHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static hintSupportHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final isGpisEnableChip:Z

.field private static final isGpisEnableCpuStructure:Z

.field private static isHyPerConnected:Z

.field static isSystemUid:Z

.field private static mLock:Ljava/lang/Object;

.field private static mUid:I

.field private static nextToken:I

.field private static pid:I

.field private static resourceHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIsDebugLevelHigh:Z


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field protected acquireHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private acquirePkg:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field private mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

.field private mHint:I

.field volatile mIsAcquired:Z

.field mName:Ljava/lang/String;

.field private mProcName:Ljava/lang/String;

.field private mRequestedHint:I

.field private mTagName:Ljava/lang/String;

.field private mToken:I

.field mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeAcquire(IILjava/lang/String;I[I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/os/SemDvfsManager;->nativeAcquire(IILjava/lang/String;I[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeCheckHintExist(I)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->nativeCheckHintExist(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeCheckResourceExist(I)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->nativeCheckResourceExist(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeCheckSysfsIdExist(I)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->nativeCheckSysfsIdExist(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetSupportedFrequency(II)[I
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->nativeGetSupportedFrequency(II)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeRelease(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->nativeRelease(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSysfsRead(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/os/SemDvfsManager;->nativeSysfsRead(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeSysfsWrite(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->nativeSysfsWrite(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/os/SemDvfsManager;->isSystemUid:Z

    .line 68
    const/16 v1, -0x3e7

    sput v1, Lcom/samsung/android/os/SemDvfsManager;->mUid:I

    .line 72
    nop

    .line 73
    const-string/jumbo v1, "ro.boot.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x4948"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    .line 75
    const-string/jumbo v1, "ro.soc.model"

    const-string v2, "chipname"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SM8450"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_46

    .line 76
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "SM8475"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 77
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM8550"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_46

    :cond_44
    move v1, v0

    goto :goto_47

    :cond_46
    :goto_46
    move v1, v4

    :goto_47
    sput-boolean v1, Lcom/samsung/android/os/SemDvfsManager;->isGpisEnableChip:Z

    .line 79
    const-string/jumbo v1, "sys.perf.hmp"

    const-string v2, "4:4"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "6:2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 80
    move v1, v4

    goto :goto_5d

    :cond_5c
    move v1, v0

    :goto_5d
    sput-boolean v1, Lcom/samsung/android/os/SemDvfsManager;->isGpisEnableCpuStructure:Z

    .line 117
    sput v0, Lcom/samsung/android/os/SemDvfsManager;->nextToken:I

    .line 121
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lcom/samsung/android/os/SemDvfsManager;->pid:I

    .line 123
    sput-boolean v0, Lcom/samsung/android/os/SemDvfsManager;->isHyPerConnected:Z

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintSupportHash:Ljava/util/HashMap;

    .line 130
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/os/SemDvfsManager;->mLock:Ljava/lang/Object;

    .line 1756
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    .line 1758
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    .line 1761
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AMS_RELAUNCH_RESUME"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "AMS_RESUME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AMS_ACT_RESUME"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AMS_ACT_START"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AMS_RESUME_TAIL"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AMS_ACT_LAZY"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AMS_APP_SWITCH"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AMS_APP_HOME"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GALLERY_TOUCH"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GALLERY_TOUCH_TAIL"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GALLERY_SCROLL"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "LAUNCHER_TOUCH"

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "BROWSER_TOUCH"

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "HOME_KEY_TOUCH"

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "PWM_ROTATION"

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "LISTVIEW_SCROLL"

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "BROWSER_FLING"

    const/16 v9, 0x11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "APP_LAUNCH"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "DEVICE_WAKEUP"

    const/16 v10, 0x13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "BADGE_UPDATE"

    const/16 v11, 0x1a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v12, "SMOOTH_SCROLL"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v12, "GESTURE_DETECTED"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "GESTURE_DETECTED_HRR"

    const/16 v12, 0x17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const-string v2, "CONTACT_SCROLL"

    const/16 v13, 0x14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v14, "SMART_VIEW_NORMAL"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x4b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v14, "SMART_VIEW_SECURE"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x924

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v14, "SKBD_FIRST_SHOW"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    const/16 v2, 0x925

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v14, "SKBD_RE_ENTER_SHOW"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x12001001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x12001002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x10002003

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x10002004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x20001001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x20001002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x30001001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x30001002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x10003000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x41001003

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x10004000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x11001001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x60000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    sput v1, Lcom/samsung/android/os/SemDvfsManager;->mUid:I

    .line 1805
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2c9

    move v0, v4

    :cond_2c9
    sput-boolean v0, Lcom/samsung/android/os/SemDvfsManager;->isSystemUid:Z

    .line 1806
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-class v0, Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 132
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    .line 136
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 138
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    .line 145
    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    .line 147
    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mRequestedHint:I

    .line 149
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mIsAcquired:Z

    .line 151
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->acquirePkg:Ljava/lang/String;

    .line 153
    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    .line 155
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    .line 260
    if-nez p1, :cond_31

    .line 261
    return-void

    .line 264
    :cond_31
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mProcName:Ljava/lang/String;

    .line 266
    iput p3, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    .line 268
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_3e
    sget v2, Lcom/samsung/android/os/SemDvfsManager;->nextToken:I

    iput v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    .line 270
    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/samsung/android/os/SemDvfsManager;->nextToken:I

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/os/SemDvfsManager;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    .line 272
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_3e .. :try_end_70} :catchall_df

    .line 274
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mContext:Landroid/content/Context;

    const-string v2, "CustomFrequencyManagerService"

    .line 275
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CustomFrequencyManager;

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 277
    sget-boolean v1, Lcom/samsung/android/os/SemDvfsManager;->isSystemUid:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createRequester(Z)Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    .line 279
    sget-object v1, Lcom/samsung/android/os/SemDvfsManager;->resourceHash:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 280
    .local v1, "res":Ljava/lang/Integer;
    if-eqz v1, :cond_98

    .line 281
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    .line 284
    :cond_98
    const/16 v2, 0x15

    if-ne p3, v2, :cond_b8

    .line 286
    :try_start_9c
    sget-object v2, Lcom/samsung/android/os/SemDvfsManager;->hintHash:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 287
    .local v2, "hint":Ljava/lang/Integer;
    if-nez v2, :cond_aa

    .line 288
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_b1

    .line 290
    :cond_aa
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V
    :try_end_b1
    .catch Ljava/lang/NullPointerException; {:try_start_9c .. :try_end_b1} :catch_b2

    .line 294
    .end local v2    # "hint":Ljava/lang/Integer;
    :goto_b1
    goto :goto_b6

    .line 292
    :catch_b2
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 295
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_b6
    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    .line 298
    :cond_b8
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemDvfsManager:: New instance is created for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void

    .line 272
    .end local v1    # "res":Ljava/lang/Integer;
    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0
.end method

.method private checkHyPerConnected()Z
    .registers 4

    .line 807
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-nez v0, :cond_6

    .line 808
    const/4 v0, 0x0

    return v0

    .line 810
    :cond_6
    sget-boolean v1, Lcom/samsung/android/os/SemDvfsManager;->isHyPerConnected:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 811
    return v2

    .line 813
    :cond_c
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->checkHintExist(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 814
    sput-boolean v2, Lcom/samsung/android/os/SemDvfsManager;->isHyPerConnected:Z

    .line 817
    :cond_16
    sget-boolean v0, Lcom/samsung/android/os/SemDvfsManager;->isHyPerConnected:Z

    return v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 185
    if-nez p0, :cond_4

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_4
    new-instance v0, Lcom/samsung/android/os/SemDvfsHyPerManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e7

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/os/SemDvfsHyPerManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_4
    new-instance v0, Lcom/samsung/android/os/SemDvfsHyPerManager;

    const/16 v1, -0x3e7

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/os/SemDvfsHyPerManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    new-instance v0, Lcom/samsung/android/os/SemDvfsHyPerManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemDvfsHyPerManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "isIntent"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    invoke-static {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    return-object v0
.end method

.method private createRequester(Z)Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
    .registers 4
    .param p1, "isSystemUid"    # Z

    .line 993
    if-eqz p1, :cond_d

    .line 994
    new-instance v0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    new-instance v1, Lcom/samsung/android/os/SemDvfsManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/os/SemDvfsManager$1;-><init>(Lcom/samsung/android/os/SemDvfsManager;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;-><init>(Lcom/samsung/android/os/SemDvfsManager;Lcom/samsung/android/os/SemDvfsManager$RequestFunc;)V

    return-object v0

    .line 1036
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_1c

    .line 1037
    new-instance v0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    new-instance v1, Lcom/samsung/android/os/SemDvfsManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/os/SemDvfsManager$2;-><init>(Lcom/samsung/android/os/SemDvfsManager;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;-><init>(Lcom/samsung/android/os/SemDvfsManager;Lcom/samsung/android/os/SemDvfsManager$RequestFunc;)V

    return-object v0

    .line 1115
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAppStartValue(I)Ljava/lang/String;
    .registers 2
    .param p0, "hint"    # I

    .line 835
    const/16 v0, 0x12

    if-eq p0, v0, :cond_23

    const/4 v0, 0x7

    if-ne p0, v0, :cond_8

    goto :goto_23

    .line 838
    :cond_8
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x1c

    if-ne p0, v0, :cond_15

    goto :goto_1f

    .line 842
    :cond_15
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1d

    .line 843
    const-string/jumbo v0, "start_home"

    return-object v0

    .line 845
    :cond_1d
    const/4 v0, 0x0

    return-object v0

    .line 841
    :cond_1f
    :goto_1f
    const-string/jumbo v0, "start"

    return-object v0

    .line 837
    :cond_23
    :goto_23
    const-string/jumbo v0, "start_short"

    return-object v0
.end method

.method private getApproximateFrequency(III[I)I
    .registers 9
    .param p1, "freq"    # I
    .param p2, "type"    # I
    .param p3, "level"    # I
    .param p4, "supportedFrequency"    # [I

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "mSupportedFrequency":[I
    const/16 v1, -0x3e7

    if-ltz p1, :cond_28

    if-ne p2, v1, :cond_8

    goto :goto_28

    .line 627
    :cond_8
    if-nez p4, :cond_11

    .line 628
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(II)[I

    move-result-object v0

    .line 629
    if-nez v0, :cond_12

    .line 630
    return v1

    .line 632
    :cond_11
    move-object v0, p4

    .line 635
    :cond_12
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 636
    .local v2, "idx":I
    if-gez v2, :cond_18

    .line 637
    return v1

    .line 640
    :cond_18
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 641
    .local v1, "realFreq":I
    :goto_1b
    if-ltz v2, :cond_27

    .line 642
    aget v3, v0, v2

    if-lt v3, p1, :cond_24

    .line 643
    aget v1, v0, v2

    .line 644
    goto :goto_27

    .line 646
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 648
    :cond_27
    :goto_27
    return v1

    .line 625
    .end local v1    # "realFreq":I
    .end local v2    # "idx":I
    :cond_28
    :goto_28
    return v1
.end method

.method private static isGpisDisableHint(I)Z
    .registers 4
    .param p0, "hint"    # I

    .line 871
    const/16 v0, 0x12

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    goto :goto_14

    .line 877
    :cond_a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_13

    sget-boolean v0, Lcom/samsung/android/os/SemDvfsManager;->isGpisEnableCpuStructure:Z

    if-eqz v0, :cond_13

    .line 878
    return v2

    .line 881
    :cond_13
    return v1

    .line 872
    :cond_14
    :goto_14
    sget-boolean v0, Lcom/samsung/android/os/SemDvfsManager;->isGpisEnableChip:Z

    if-eqz v0, :cond_19

    .line 873
    return v1

    .line 875
    :cond_19
    return v2
.end method

.method private static isGpisEnableHint(I)Z
    .registers 2
    .param p0, "hint"    # I

    .line 885
    const/16 v0, 0x8

    if-ne p0, v0, :cond_a

    sget-boolean v0, Lcom/samsung/android/os/SemDvfsManager;->isGpisEnableCpuStructure:Z

    if-nez v0, :cond_a

    .line 886
    const/4 v0, 0x1

    return v0

    .line 889
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeAcquire(IILjava/lang/String;I[I)V
.end method

.method private static native nativeCheckHintExist(I)Z
.end method

.method private static native nativeCheckResourceExist(I)Z
.end method

.method private static native nativeCheckSysfsIdExist(I)Z
.end method

.method private static native nativeGetSupportedFrequency(II)[I
.end method

.method private static native nativeRelease(II)V
.end method

.method private static native nativeSysfsRead(I)Ljava/lang/String;
.end method

.method private static native nativeSysfsWrite(ILjava/lang/String;)V
.end method

.method private setGpisHint(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 893
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_c

    .line 895
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->setGpisHint(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 898
    goto :goto_c

    .line 896
    :catch_8
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 900
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_c
    return-void
.end method

.method private triggerAppStart(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 849
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_47

    .line 852
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->acquirePkg:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->acquirePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 856
    :cond_2c
    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 857
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_46

    .line 858
    nop

    .line 859
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 860
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_46

    .line 862
    :try_start_3c
    const-string v2, "APP_START"

    invoke-interface {v1, v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_42

    .line 865
    goto :goto_46

    .line 863
    :catch_42
    move-exception v2

    .line 864
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 868
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_46
    :goto_46
    return-void

    .line 850
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_47
    :goto_47
    return-void
.end method

.method private static x([I)Ljava/lang/String;
    .registers 4
    .param p0, "e"    # [I

    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1810
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 1811
    aget v2, p0, v1

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1810
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1813
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract acquire()V
.end method

.method public acquire(I)V
    .registers 16
    .param p1, "timeout"    # I

    .line 350
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-nez v0, :cond_5

    .line 351
    return-void

    .line 354
    :cond_5
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mRequestedHint:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_e

    .line 355
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 358
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquire hyper - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3c

    if-lez p1, :cond_3c

    move v3, v2

    goto :goto_3d

    :cond_3c
    move v3, v0

    .line 361
    .local v3, "timeoutExist":Z
    :goto_3d
    iget-object v4, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 363
    .local v4, "listSize":I
    if-nez v4, :cond_61

    iget v5, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    if-eq v5, v1, :cond_61

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v5

    .line 365
    .local v5, "freqTable":[I
    if-eqz v5, :cond_61

    array-length v6, v5

    if-lez v6, :cond_61

    .line 366
    aget v6, v5, v0

    invoke-virtual {p0, v6}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 367
    iget-object v6, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    mul-int/lit8 v4, v6, 0x2

    .line 371
    .end local v5    # "freqTable":[I
    :cond_61
    iget v5, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    if-ne v5, v1, :cond_68

    if-gtz v4, :cond_68

    .line 372
    return-void

    .line 375
    :cond_68
    if-eqz v3, :cond_6c

    .line 376
    add-int/lit8 v4, v4, 0x2

    .line 378
    :cond_6c
    iget v11, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    .line 380
    .local v11, "hintId":I
    sget v5, Lcom/samsung/android/os/SemDvfsManager;->mUid:I

    if-eq v5, v1, :cond_74

    .line 381
    add-int/lit8 v4, v4, 0x2

    .line 384
    :cond_74
    new-array v12, v4, [I

    .line 386
    .local v12, "list":[I
    iget-object v5, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 387
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 388
    .local v5, "idx":I
    :goto_81
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 389
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 390
    .local v6, "key":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 391
    .local v7, "value":Ljava/lang/Integer;
    if-eqz v7, :cond_ac

    add-int/lit8 v8, v5, 0x1

    array-length v9, v12

    if-ge v8, v9, :cond_ac

    .line 392
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v12, v5

    .line 393
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v12, v8

    .line 394
    add-int/lit8 v5, v5, 0x2

    .line 396
    .end local v6    # "key":Ljava/lang/Integer;
    .end local v7    # "value":Ljava/lang/Integer;
    :cond_ac
    goto :goto_81

    .line 398
    :cond_ad
    if-eqz v3, :cond_be

    add-int/lit8 v6, v5, 0x1

    array-length v7, v12

    if-ge v6, v7, :cond_be

    .line 399
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "idx":I
    .local v6, "idx":I
    const/high16 v7, -0x1000000

    aput v7, v12, v5

    .line 400
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "idx":I
    .restart local v5    # "idx":I
    aput p1, v12, v6

    .line 402
    :cond_be
    sget v6, Lcom/samsung/android/os/SemDvfsManager;->mUid:I

    if-eq v6, v1, :cond_d3

    add-int/lit8 v1, v5, 0x1

    array-length v7, v12

    if-ge v1, v7, :cond_d3

    .line 403
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "idx":I
    .local v1, "idx":I
    const/high16 v7, -0xf00000

    aput v7, v12, v5

    .line 404
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "idx":I
    .restart local v5    # "idx":I
    aput v6, v12, v1

    move v1, v5

    goto :goto_d4

    .line 407
    :cond_d3
    move v1, v5

    .end local v5    # "idx":I
    .restart local v1    # "idx":I
    :goto_d4
    iget-object v5, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    sget v6, Lcom/samsung/android/os/SemDvfsManager;->pid:I

    iget v7, p0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    iget-object v8, p0, Lcom/samsung/android/os/SemDvfsManager;->mProcName:Ljava/lang/String;

    move v9, v11

    move-object v10, v12

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->acquire(IILjava/lang/String;I[I)V

    .line 409
    iget v5, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    invoke-static {v5}, Lcom/samsung/android/os/SemDvfsManager;->getAppStartValue(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "appStartValue":Ljava/lang/String;
    if-eqz v5, :cond_ec

    .line 411
    invoke-direct {p0, v5}, Lcom/samsung/android/os/SemDvfsManager;->triggerAppStart(Ljava/lang/String;)V

    .line 414
    :cond_ec
    iget v6, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    invoke-static {v6}, Lcom/samsung/android/os/SemDvfsManager;->isGpisDisableHint(I)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 415
    invoke-direct {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->setGpisHint(Z)V

    goto :goto_103

    .line 416
    :cond_f8
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->isGpisEnableHint(I)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 417
    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setGpisHint(Z)V

    .line 419
    :cond_103
    :goto_103
    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg_name"    # Ljava/lang/String;

    .line 422
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager;->acquirePkg:Ljava/lang/String;

    .line 423
    const/16 v0, -0x3e7

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 424
    return-void
.end method

.method public addResourceValue(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 758
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 759
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    return-void
.end method

.method public checkHintSupported(I)Z
    .registers 7
    .param p1, "hint"    # I

    .line 568
    sget-object v0, Lcom/samsung/android/os/SemDvfsManager;->hintSupportHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 569
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_13

    .line 570
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 572
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-eqz v1, :cond_31

    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsManager;->checkHyPerConnected()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 573
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    invoke-virtual {v1, p1}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->checkHintExist(I)Z

    move-result v1

    .line 574
    .local v1, "ret":Z
    sget-object v2, Lcom/samsung/android/os/SemDvfsManager;->hintSupportHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    return v1

    .line 577
    .end local v1    # "ret":Z
    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method public checkResourceSupported(I)Z
    .registers 3
    .param p1, "resourceType"    # I

    .line 587
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-eqz v0, :cond_9

    .line 588
    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->checkResourceExist(I)Z

    move-result v0

    return v0

    .line 590
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public checkSysfsIdExist(I)Z
    .registers 3
    .param p1, "sysfsId"    # I

    .line 556
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-eqz v0, :cond_9

    .line 557
    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->checkSysfsIdExist(I)Z

    move-result v0

    return v0

    .line 559
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public abstract clearDvfsValue()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public clearResourceValue()V
    .registers 2

    .line 776
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 777
    return-void
.end method

.method public getApproximateFrequency(I)I
    .registers 4
    .param p1, "freq"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(III)I

    move-result v0

    return v0
.end method

.method public getApproximateFrequency(III)I
    .registers 5
    .param p1, "freq"    # I
    .param p2, "type"    # I
    .param p3, "level"    # I

    .line 661
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(III[I)I

    move-result v0

    return v0
.end method

.method public getApproximateFrequencyByPercent(D)I
    .registers 5
    .param p1, "percent"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v0

    return v0
.end method

.method public getApproximateFrequencyByPercent(DII)I
    .registers 9
    .param p1, "percent"    # D
    .param p3, "type"    # I
    .param p4, "level"    # I

    .line 689
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    const/16 v1, -0x3e7

    if-ltz v0, :cond_27

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v2

    if-gtz v0, :cond_27

    if-ne p3, v1, :cond_11

    goto :goto_27

    .line 692
    :cond_11
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(II)[I

    move-result-object v0

    .line 693
    .local v0, "mSupportedValues":[I
    if-eqz v0, :cond_26

    array-length v2, v0

    if-gtz v2, :cond_1b

    goto :goto_26

    .line 697
    :cond_1b
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-direct {p0, v1, p3, p4, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(III[I)I

    move-result v1

    return v1

    .line 694
    :cond_26
    :goto_26
    return v1

    .line 690
    .end local v0    # "mSupportedValues":[I
    :cond_27
    :goto_27
    return v1
.end method

.method public getApproximateFrequencyByPercentForSsrm(D)I
    .registers 5
    .param p1, "percent"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v0

    return v0
.end method

.method public getApproximateFrequencyForSsrm(I)I
    .registers 4
    .param p1, "freq"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 744
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(III)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 831
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFrequency()[I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_8

    .line 464
    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFrequency(I)[I
    .registers 3
    .param p1, "type"    # I

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFrequency(II)[I
    .registers 8
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "supportedFrequency":[I
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-eqz v1, :cond_9

    .line 509
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->getSupportedFrequency(II)[I

    move-result-object v0

    .line 511
    :cond_9
    if-eqz v0, :cond_f

    array-length v1, v0

    if-gtz v1, :cond_f

    .line 512
    const/4 v0, 0x0

    .line 515
    :cond_f
    if-eqz v0, :cond_47

    .line 516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_46

    .line 517
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSupportedFrequency["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .end local v1    # "i":I
    :cond_46
    goto :goto_4e

    .line 521
    :cond_47
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GetSupportedFrequency is Null"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :goto_4e
    return-object v0
.end method

.method public getSupportedFrequencyForSsrm()[I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 606
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mType:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_8

    .line 607
    const/4 v0, 0x0

    return-object v0

    .line 609
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFrequencyForSsrm(I)[I
    .registers 3
    .param p1, "type"    # I

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(II)[I

    move-result-object v0

    return-object v0
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 906
    sget-boolean v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_7

    .line 907
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_7
    return-void
.end method

.method public release()V
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-eqz v0, :cond_b

    .line 448
    sget v1, Lcom/samsung/android/os/SemDvfsManager;->pid:I

    iget v2, p0, Lcom/samsung/android/os/SemDvfsManager;->mToken:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->release(II)V

    .line 450
    :cond_b
    return-void
.end method

.method public removeResourceValue(I)V
    .registers 4
    .param p1, "type"    # I

    .line 769
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->acquireHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    return-void
.end method

.method public abstract setDvfsValue(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDvfsValue(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setHint(I)V
    .registers 6
    .param p1, "hint"    # I

    .line 789
    iget v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    if-ne p1, v0, :cond_5

    .line 790
    return-void

    .line 792
    :cond_5
    iput p1, p0, Lcom/samsung/android/os/SemDvfsManager;->mRequestedHint:I

    .line 793
    invoke-direct {p0}, Lcom/samsung/android/os/SemDvfsManager;->checkHyPerConnected()Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_30

    .line 794
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to set Hint... ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] HyPer is not connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iput v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    .line 796
    return-void

    .line 798
    :cond_30
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 799
    iput p1, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    goto :goto_3b

    .line 801
    :cond_39
    iput v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mHint:I

    .line 803
    :goto_3b
    iput v1, p0, Lcom/samsung/android/os/SemDvfsManager;->mRequestedHint:I

    .line 804
    return-void
.end method

.method public setProcName(Ljava/lang/String;)V
    .registers 2
    .param p1, "procName"    # Ljava/lang/String;

    .line 824
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager;->mProcName:Ljava/lang/String;

    .line 825
    return-void
.end method

.method public sysfsRead(I)Ljava/lang/String;
    .registers 3
    .param p1, "sysfsId"    # I

    .line 544
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-eqz v0, :cond_9

    .line 545
    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->sysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 547
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public sysfsWrite(ILjava/lang/String;)V
    .registers 4
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 530
    if-nez p2, :cond_3

    .line 531
    return-void

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsRequester:Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;

    if-eqz v0, :cond_a

    .line 534
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->sysfsWrite(ILjava/lang/String;)V

    .line 536
    :cond_a
    return-void
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    return-void
.end method
