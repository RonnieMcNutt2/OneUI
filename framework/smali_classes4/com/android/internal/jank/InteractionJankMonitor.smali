.class public Lcom/android/internal/jank/InteractionJankMonitor;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$InstanceHolder;,
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration;,
        Lcom/android/internal/jank/InteractionJankMonitor$Session;,
        Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;,
        Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;,
        Lcom/android/internal/jank/InteractionJankMonitor$CujType;
    }
.end annotation


# static fields
.field private static final ACTION_PREFIX:Ljava/lang/String;

.field public static final ACTION_SESSION_CANCEL:Ljava/lang/String;

.field public static final ACTION_SESSION_END:Ljava/lang/String;

.field public static final CUJ_BIOMETRIC_PROMPT_TRANSITION:I = 0x38

.field public static final CUJ_IME_INSETS_ANIMATION:I = 0x45

.field public static final CUJ_LAUNCHER_ALL_APPS_SCROLL:I = 0x1a

.field public static final CUJ_LAUNCHER_APP_CLOSE_TO_HOME:I = 0x9

.field public static final CUJ_LAUNCHER_APP_CLOSE_TO_PIP:I = 0xa

.field public static final CUJ_LAUNCHER_APP_LAUNCH_FROM_ICON:I = 0x8

.field public static final CUJ_LAUNCHER_APP_LAUNCH_FROM_RECENTS:I = 0x7

.field public static final CUJ_LAUNCHER_APP_LAUNCH_FROM_WIDGET:I = 0x1b

.field public static final CUJ_LAUNCHER_APP_SWIPE_TO_RECENTS:I = 0x42

.field public static final CUJ_LAUNCHER_CLOSE_ALL_APPS_SWIPE:I = 0x43

.field public static final CUJ_LAUNCHER_CLOSE_ALL_APPS_TO_HOME:I = 0x44

.field public static final CUJ_LAUNCHER_OPEN_ALL_APPS:I = 0x19

.field public static final CUJ_LAUNCHER_OPEN_SEARCH_RESULT:I = 0x47

.field public static final CUJ_LAUNCHER_QUICK_SWITCH:I = 0xb

.field public static final CUJ_LAUNCHER_UNLOCK_ENTRANCE_ANIMATION:I = 0x3f

.field public static final CUJ_LOCKSCREEN_CLOCK_MOVE_ANIMATION:I = 0x46

.field public static final CUJ_LOCKSCREEN_LAUNCH_CAMERA:I = 0x33

.field public static final CUJ_LOCKSCREEN_OCCLUSION:I = 0x40

.field public static final CUJ_LOCKSCREEN_PASSWORD_APPEAR:I = 0x11

.field public static final CUJ_LOCKSCREEN_PASSWORD_DISAPPEAR:I = 0x14

.field public static final CUJ_LOCKSCREEN_PATTERN_APPEAR:I = 0x12

.field public static final CUJ_LOCKSCREEN_PATTERN_DISAPPEAR:I = 0x15

.field public static final CUJ_LOCKSCREEN_PIN_APPEAR:I = 0x13

.field public static final CUJ_LOCKSCREEN_PIN_DISAPPEAR:I = 0x16

.field public static final CUJ_LOCKSCREEN_TRANSITION_FROM_AOD:I = 0x17

.field public static final CUJ_LOCKSCREEN_TRANSITION_TO_AOD:I = 0x18

.field public static final CUJ_LOCKSCREEN_UNLOCK_ANIMATION:I = 0x1d

.field public static final CUJ_NOTIFICATION_ADD:I = 0xe

.field public static final CUJ_NOTIFICATION_APP_START:I = 0x10

.field public static final CUJ_NOTIFICATION_HEADS_UP_APPEAR:I = 0xc

.field public static final CUJ_NOTIFICATION_HEADS_UP_DISAPPEAR:I = 0xd

.field public static final CUJ_NOTIFICATION_REMOVE:I = 0xf

.field public static final CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE:I = 0x0

.field public static final CUJ_NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE:I = 0x5

.field public static final CUJ_NOTIFICATION_SHADE_QS_SCROLL_SWIPE:I = 0x6

.field public static final CUJ_NOTIFICATION_SHADE_ROW_EXPAND:I = 0x3

.field public static final CUJ_NOTIFICATION_SHADE_ROW_SWIPE:I = 0x4

.field public static final CUJ_NOTIFICATION_SHADE_SCROLL_FLING:I = 0x2

.field public static final CUJ_ONE_HANDED_ENTER_TRANSITION:I = 0x2a

.field public static final CUJ_ONE_HANDED_EXIT_TRANSITION:I = 0x2b

.field public static final CUJ_PIP_TRANSITION:I = 0x23

.field public static final CUJ_RECENTS_SCROLLING:I = 0x41

.field public static final CUJ_SCREEN_OFF:I = 0x28

.field public static final CUJ_SCREEN_OFF_SHOW_AOD:I = 0x29

.field public static final CUJ_SETTINGS_PAGE_SCROLL:I = 0x1c

.field public static final CUJ_SETTINGS_SLIDER:I = 0x35

.field public static final CUJ_SETTINGS_TOGGLE:I = 0x39

.field public static final CUJ_SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON:I = 0x1e

.field public static final CUJ_SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER:I = 0x1f

.field public static final CUJ_SHADE_APP_LAUNCH_FROM_QS_TILE:I = 0x20

.field public static final CUJ_SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON:I = 0x21

.field public static final CUJ_SHADE_CLEAR_ALL:I = 0x3e

.field public static final CUJ_SHADE_DIALOG_OPEN:I = 0x3a

.field public static final CUJ_SPLASHSCREEN_AVD:I = 0x26

.field public static final CUJ_SPLASHSCREEN_EXIT_ANIM:I = 0x27

.field public static final CUJ_SPLIT_SCREEN_ENTER:I = 0x31

.field public static final CUJ_SPLIT_SCREEN_EXIT:I = 0x32

.field public static final CUJ_SPLIT_SCREEN_RESIZE:I = 0x34

.field public static final CUJ_STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP:I = 0x22

.field public static final CUJ_SUW_LOADING_SCREEN_FOR_STATUS:I = 0x30

.field public static final CUJ_SUW_LOADING_TO_NEXT_FLOW:I = 0x2f

.field public static final CUJ_SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS:I = 0x2d

.field public static final CUJ_SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS:I = 0x2e

.field public static final CUJ_TAKE_SCREENSHOT:I = 0x36

.field public static final CUJ_TASKBAR_COLLAPSE:I = 0x3d

.field public static final CUJ_TASKBAR_EXPAND:I = 0x3c

.field public static final CUJ_TO_STATSD_INTERACTION_TYPE:[I

.field public static final CUJ_UNFOLD_ANIM:I = 0x2c

.field public static final CUJ_USER_DIALOG_OPEN:I = 0x3b

.field public static final CUJ_USER_SWITCH:I = 0x25

.field public static final CUJ_VOLUME_CONTROL:I = 0x37

.field public static final CUJ_WALLPAPER_TRANSITION:I = 0x24

.field private static final DEBUG:Z = false

.field private static final DEFAULT_DEBUG_OVERLAY_ENABLED:Z = false

.field private static final DEFAULT_ENABLED:Z

.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x1

.field private static final DEFAULT_TIMEOUT_MS:J

.field private static final DEFAULT_TRACE_THRESHOLD_FRAME_TIME_MILLIS:I = 0x40

.field private static final DEFAULT_TRACE_THRESHOLD_MISSED_FRAMES:I = 0x3

.field private static final DEFAULT_WORKER_NAME:Ljava/lang/String;

.field static final EXECUTOR_TASK_TIMEOUT:J = 0x1f4L

.field private static final LAST_CUJ:I = 0x47

.field public static final MAX_LENGTH_OF_CUJ_NAME:I = 0x50

.field private static final MAX_LENGTH_SESSION_NAME:I = 0x64

.field private static final NO_STATSD_LOGGING:I = -0x1

.field private static final SETTINGS_DEBUG_OVERLAY_ENABLED_KEY:Ljava/lang/String; = "debug_overlay_enabled"

.field private static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final SETTINGS_THRESHOLD_FRAME_TIME_MILLIS_KEY:Ljava/lang/String; = "trace_threshold_frame_time_millis"

.field private static final SETTINGS_THRESHOLD_MISSED_FRAMES_KEY:Ljava/lang/String; = "trace_threshold_missed_frames"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDebugBgColor:I

.field private mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

.field private mDebugYOffset:D

.field private final mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

.field private volatile mEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mRunningTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplingInterval:I

.field private final mTimeoutActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTraceThresholdFrameTimeMillis:I

.field private mTraceThresholdMissedFrames:I

.field private final mWorker:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$0Hh4ZWt7lraBD6frs4vHZhS_hl0(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$handleCujEvents$2(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8tShYI_mGb9ilquXe_mtge_YwUY(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$begin$4(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gt9HLmASknR2a8XN4ODN1RuKDQA(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$end$7(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KBUYlt7At2zPklWqH6wqbARX4ZY(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$createFrameTracker$1(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R1sJBgRyFob7_MtWQkbzMwiAJ_o(Lcom/android/internal/jank/InteractionJankMonitor;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZHyXbl8KmWXeWXNcSwF5r7pvrDM(Lcom/android/internal/jank/InteractionJankMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$beginInternal$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hkSO9BRtQKYFaqmsywz3yRwFIJs(Lcom/android/internal/jank/InteractionJankMonitor;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lsFe5RR3XJqFq7wg1iZyFyWERTU(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$cancel$9(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_TIMEOUT_MS()J
    .registers 2

    sget-wide v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_WORKER_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 159
    const-class v0, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Worker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    .line 164
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    .line 174
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_SESSION_END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_SESSION_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    .line 268
    const/16 v0, 0x48

    new-array v1, v0, [I

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    .line 271
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 272
    const/4 v2, -0x1

    aput v2, v1, v3

    .line 273
    const/4 v2, 0x2

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 274
    const/4 v2, 0x4

    aput v2, v1, v3

    .line 275
    const/4 v3, 0x5

    aput v3, v1, v2

    .line 276
    const/4 v2, 0x6

    aput v2, v1, v3

    .line 277
    const/4 v3, 0x7

    aput v3, v1, v2

    .line 278
    const/16 v2, 0x8

    aput v2, v1, v3

    .line 279
    const/16 v3, 0x9

    aput v3, v1, v2

    .line 280
    const/16 v2, 0xa

    aput v2, v1, v3

    .line 281
    const/16 v3, 0xb

    aput v3, v1, v2

    .line 282
    const/16 v2, 0xc

    aput v2, v1, v3

    .line 283
    const/16 v3, 0xd

    aput v3, v1, v2

    .line 284
    const/16 v2, 0xe

    aput v2, v1, v3

    .line 285
    const/16 v3, 0xf

    aput v3, v1, v2

    .line 286
    const/16 v2, 0x10

    aput v2, v1, v3

    .line 287
    const/16 v3, 0x11

    aput v3, v1, v2

    .line 288
    const/16 v2, 0x12

    aput v2, v1, v3

    .line 289
    const/16 v3, 0x13

    aput v3, v1, v2

    .line 290
    const/16 v2, 0x14

    aput v2, v1, v3

    .line 291
    const/16 v3, 0x15

    aput v3, v1, v2

    .line 292
    const/16 v2, 0x16

    aput v2, v1, v3

    .line 293
    const/16 v3, 0x17

    aput v3, v1, v2

    .line 294
    const/16 v2, 0x17

    const/16 v3, 0x18

    aput v3, v1, v2

    .line 295
    const/16 v2, 0x18

    const/16 v3, 0x19

    aput v3, v1, v2

    .line 296
    const/16 v2, 0x19

    const/16 v3, 0x1a

    aput v3, v1, v2

    .line 297
    const/16 v2, 0x1a

    const/16 v3, 0x1b

    aput v3, v1, v2

    .line 298
    const/16 v2, 0x1b

    const/16 v3, 0x1c

    aput v3, v1, v2

    .line 299
    const/16 v2, 0x1c

    const/16 v3, 0x1d

    aput v3, v1, v2

    .line 300
    const/16 v2, 0x1d

    const/16 v3, 0x1e

    aput v3, v1, v2

    .line 301
    const/16 v2, 0x1e

    const/16 v3, 0x1f

    aput v3, v1, v2

    .line 302
    const/16 v2, 0x1f

    const/16 v3, 0x20

    aput v3, v1, v2

    .line 303
    const/16 v2, 0x20

    const/16 v3, 0x21

    aput v3, v1, v2

    .line 304
    const/16 v2, 0x21

    const/16 v3, 0x22

    aput v3, v1, v2

    .line 305
    const/16 v2, 0x22

    const/16 v3, 0x23

    aput v3, v1, v2

    .line 306
    const/16 v2, 0x23

    const/16 v3, 0x24

    aput v3, v1, v2

    .line 307
    const/16 v2, 0x24

    const/16 v3, 0x25

    aput v3, v1, v2

    .line 308
    const/16 v2, 0x25

    const/16 v3, 0x26

    aput v3, v1, v2

    .line 309
    const/16 v2, 0x26

    const/16 v3, 0x27

    aput v3, v1, v2

    .line 310
    const/16 v2, 0x27

    const/16 v3, 0x28

    aput v3, v1, v2

    .line 311
    const/16 v2, 0x28

    const/16 v3, 0x29

    aput v3, v1, v2

    .line 312
    const/16 v2, 0x29

    const/16 v3, 0x2a

    aput v3, v1, v2

    .line 313
    const/16 v2, 0x2a

    const/16 v3, 0x2b

    aput v3, v1, v2

    .line 314
    const/16 v2, 0x2b

    const/16 v3, 0x2c

    aput v3, v1, v2

    .line 315
    const/16 v2, 0x2c

    const/16 v3, 0x2d

    aput v3, v1, v2

    .line 316
    const/16 v2, 0x2d

    const/16 v3, 0x2e

    aput v3, v1, v2

    .line 317
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    aput v3, v1, v2

    .line 318
    const/16 v2, 0x2f

    const/16 v3, 0x30

    aput v3, v1, v2

    .line 319
    const/16 v2, 0x30

    const/16 v3, 0x31

    aput v3, v1, v2

    .line 320
    const/16 v2, 0x31

    const/16 v3, 0x32

    aput v3, v1, v2

    .line 321
    const/16 v2, 0x32

    const/16 v3, 0x33

    aput v3, v1, v2

    .line 322
    const/16 v2, 0x33

    const/16 v3, 0x34

    aput v3, v1, v2

    .line 323
    const/16 v2, 0x34

    const/16 v3, 0x35

    aput v3, v1, v2

    .line 324
    const/16 v2, 0x35

    const/16 v3, 0x36

    aput v3, v1, v2

    .line 325
    const/16 v2, 0x36

    const/16 v3, 0x37

    aput v3, v1, v2

    .line 326
    const/16 v2, 0x37

    const/16 v3, 0x38

    aput v3, v1, v2

    .line 327
    const/16 v2, 0x38

    const/16 v3, 0x39

    aput v3, v1, v2

    .line 328
    const/16 v2, 0x39

    const/16 v3, 0x3a

    aput v3, v1, v2

    .line 329
    const/16 v2, 0x3a

    const/16 v3, 0x3b

    aput v3, v1, v2

    .line 330
    const/16 v2, 0x3b

    const/16 v3, 0x3c

    aput v3, v1, v2

    .line 331
    const/16 v2, 0x3c

    const/16 v3, 0x3d

    aput v3, v1, v2

    .line 332
    const/16 v2, 0x3d

    const/16 v3, 0x3e

    aput v3, v1, v2

    .line 333
    const/16 v2, 0x3e

    const/16 v3, 0x3f

    aput v3, v1, v2

    .line 334
    const/16 v2, 0x3f

    const/16 v3, 0x40

    aput v3, v1, v2

    .line 335
    const/16 v2, 0x40

    const/16 v3, 0x41

    aput v3, v1, v2

    .line 336
    const/16 v2, 0x41

    const/16 v3, 0x42

    aput v3, v1, v2

    .line 337
    const/16 v2, 0x42

    const/16 v3, 0x43

    aput v3, v1, v2

    .line 338
    const/16 v2, 0x43

    const/16 v3, 0x44

    aput v3, v1, v2

    .line 339
    const/16 v2, 0x44

    const/16 v3, 0x45

    aput v3, v1, v2

    .line 340
    const/16 v2, 0x45

    const/16 v3, 0x46

    aput v3, v1, v2

    .line 341
    const/16 v2, 0x46

    const/16 v3, 0x47

    aput v3, v1, v2

    .line 342
    const/16 v2, 0x47

    aput v0, v1, v2

    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/os/HandlerThread;)V
    .registers 6
    .param p1, "worker"    # Landroid/os/HandlerThread;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 359
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    .line 360
    const v0, -0xff0001

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    .line 361
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    .line 364
    sget-boolean v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    .line 365
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    .line 366
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    .line 367
    const/16 v2, 0x40

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    .line 464
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    .line 465
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    .line 466
    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    .line 467
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 468
    new-instance v2, Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/jank/DisplayResolutionTracker;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    .line 469
    iput v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    .line 470
    iput-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    .line 472
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 473
    .local v0, "context":Landroid/content/Context;
    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5a

    .line 482
    return-void

    .line 486
    :cond_5a
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method private beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z
    .registers 7
    .param p1, "conf"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 632
    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    .line 633
    .local v0, "cujType":I
    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->shouldMonitor(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 634
    :cond_c
    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    .line 636
    .local v1, "tracker":Lcom/android/internal/jank/FrameTracker;
    if-eqz v1, :cond_13

    return v2

    .line 639
    :cond_13
    new-instance v3, Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/internal/jank/InteractionJankMonitor$Session;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/jank/InteractionJankMonitor;->createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    .line 640
    if-nez v1, :cond_23

    return v2

    .line 641
    :cond_23
    invoke-direct {p0, v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->putTracker(ILcom/android/internal/jank/FrameTracker;)V

    .line 642
    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker;->begin()V

    .line 645
    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J

    move-result-wide v2

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;I)V

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->scheduleTimeoutAction(IJLjava/lang/Runnable;)V

    .line 647
    const/4 v2, 0x1

    return v2
.end method

.method private cancelInternal(II)Z
    .registers 5
    .param p1, "cujType"    # I
    .param p2, "reason"    # I

    .line 765
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    .line 766
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    .line 767
    .local v0, "tracker":Lcom/android/internal/jank/FrameTracker;
    if-nez v0, :cond_b

    const/4 v1, 0x0

    return v1

    .line 769
    :cond_b
    invoke-virtual {v0, p2}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 770
    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(II)V

    .line 772
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method private endInternal(I)Z
    .registers 5
    .param p1, "cujType"    # I

    .line 714
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    .line 715
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    .line 716
    .local v0, "tracker":Lcom/android/internal/jank/FrameTracker;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 718
    :cond_b
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 719
    invoke-direct {p0, p1, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(II)V

    .line 721
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method private static getCujTypeFromInteraction(I)I
    .registers 2
    .param p0, "interactionType"    # I

    .line 864
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/android/internal/jank/InteractionJankMonitor;
    .registers 1

    .line 453
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor$InstanceHolder;->INSTANCE:Lcom/android/internal/jank/InteractionJankMonitor;

    return-object v0
.end method

.method public static getNameOfCuj(I)Ljava/lang/String;
    .registers 2
    .param p0, "cujType"    # I

    .line 910
    packed-switch p0, :pswitch_data_dc

    .line 1054
    :pswitch_3
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1052
    :pswitch_6
    const-string v0, "LAUNCHER_OPEN_SEARCH_RESULT"

    return-object v0

    .line 1050
    :pswitch_9
    const-string v0, "LOCKSCREEN_CLOCK_MOVE_ANIMATION"

    return-object v0

    .line 1048
    :pswitch_c
    const-string v0, "IME_INSETS_ANIMATION"

    return-object v0

    .line 1046
    :pswitch_f
    const-string v0, "LAUNCHER_CLOSE_ALL_APPS_TO_HOME"

    return-object v0

    .line 1044
    :pswitch_12
    const-string v0, "LAUNCHER_CLOSE_ALL_APPS_SWIPE"

    return-object v0

    .line 1042
    :pswitch_15
    const-string v0, "LAUNCHER_APP_SWIPE_TO_RECENTS"

    return-object v0

    .line 1040
    :pswitch_18
    const-string v0, "RECENTS_SCROLLING"

    return-object v0

    .line 1038
    :pswitch_1b
    const-string v0, "LOCKSCREEN_OCCLUSION"

    return-object v0

    .line 1036
    :pswitch_1e
    const-string v0, "LAUNCHER_UNLOCK_ENTRANCE_ANIMATION"

    return-object v0

    .line 1034
    :pswitch_21
    const-string v0, "SHADE_CLEAR_ALL"

    return-object v0

    .line 1032
    :pswitch_24
    const-string v0, "TASKBAR_COLLAPSE"

    return-object v0

    .line 1030
    :pswitch_27
    const-string v0, "TASKBAR_EXPAND"

    return-object v0

    .line 1028
    :pswitch_2a
    const-string v0, "USER_DIALOG_OPEN"

    return-object v0

    .line 1026
    :pswitch_2d
    const-string v0, "SHADE_DIALOG_OPEN"

    return-object v0

    .line 1024
    :pswitch_30
    const-string v0, "SETTINGS_TOGGLE"

    return-object v0

    .line 1022
    :pswitch_33
    const-string v0, "BIOMETRIC_PROMPT_TRANSITION"

    return-object v0

    .line 1020
    :pswitch_36
    const-string v0, "VOLUME_CONTROL"

    return-object v0

    .line 1018
    :pswitch_39
    const-string v0, "TAKE_SCREENSHOT"

    return-object v0

    .line 1016
    :pswitch_3c
    const-string v0, "SETTINGS_SLIDER"

    return-object v0

    .line 1014
    :pswitch_3f
    const-string v0, "SPLIT_SCREEN_RESIZE"

    return-object v0

    .line 1012
    :pswitch_42
    const-string v0, "LOCKSCREEN_LAUNCH_CAMERA"

    return-object v0

    .line 1010
    :pswitch_45
    const-string v0, "SPLIT_SCREEN_EXIT"

    return-object v0

    .line 1008
    :pswitch_48
    const-string v0, "SPLIT_SCREEN_ENTER"

    return-object v0

    .line 1006
    :pswitch_4b
    const-string v0, "SUW_LOADING_SCREEN_FOR_STATUS"

    return-object v0

    .line 1004
    :pswitch_4e
    const-string v0, "SUW_LOADING_TO_NEXT_FLOW"

    return-object v0

    .line 1002
    :pswitch_51
    const-string v0, "SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS"

    return-object v0

    .line 1000
    :pswitch_54
    const-string v0, "SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS"

    return-object v0

    .line 998
    :pswitch_57
    const-string v0, "UNFOLD_ANIM"

    return-object v0

    .line 996
    :pswitch_5a
    const-string v0, "ONE_HANDED_EXIT_TRANSITION"

    return-object v0

    .line 994
    :pswitch_5d
    const-string v0, "ONE_HANDED_ENTER_TRANSITION"

    return-object v0

    .line 992
    :pswitch_60
    const-string v0, "SCREEN_OFF_SHOW_AOD"

    return-object v0

    .line 990
    :pswitch_63
    const-string v0, "SCREEN_OFF"

    return-object v0

    .line 988
    :pswitch_66
    const-string v0, "SPLASHSCREEN_EXIT_ANIM"

    return-object v0

    .line 986
    :pswitch_69
    const-string v0, "SPLASHSCREEN_AVD"

    return-object v0

    .line 984
    :pswitch_6c
    const-string v0, "USER_SWITCH"

    return-object v0

    .line 982
    :pswitch_6f
    const-string v0, "WALLPAPER_TRANSITION"

    return-object v0

    .line 980
    :pswitch_72
    const-string v0, "PIP_TRANSITION"

    return-object v0

    .line 978
    :pswitch_75
    const-string v0, "STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP"

    return-object v0

    .line 976
    :pswitch_78
    const-string v0, "SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON"

    return-object v0

    .line 974
    :pswitch_7b
    const-string v0, "SHADE_APP_LAUNCH_FROM_QS_TILE"

    return-object v0

    .line 972
    :pswitch_7e
    const-string v0, "SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER"

    return-object v0

    .line 970
    :pswitch_81
    const-string v0, "SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON"

    return-object v0

    .line 968
    :pswitch_84
    const-string v0, "LOCKSCREEN_UNLOCK_ANIMATION"

    return-object v0

    .line 966
    :pswitch_87
    const-string v0, "SETTINGS_PAGE_SCROLL"

    return-object v0

    .line 964
    :pswitch_8a
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_WIDGET"

    return-object v0

    .line 962
    :pswitch_8d
    const-string v0, "LAUNCHER_ALL_APPS_SCROLL"

    return-object v0

    .line 960
    :pswitch_90
    const-string v0, "LAUNCHER_OPEN_ALL_APPS"

    return-object v0

    .line 958
    :pswitch_93
    const-string v0, "LOCKSCREEN_TRANSITION_TO_AOD"

    return-object v0

    .line 956
    :pswitch_96
    const-string v0, "LOCKSCREEN_TRANSITION_FROM_AOD"

    return-object v0

    .line 954
    :pswitch_99
    const-string v0, "LOCKSCREEN_PIN_DISAPPEAR"

    return-object v0

    .line 952
    :pswitch_9c
    const-string v0, "LOCKSCREEN_PATTERN_DISAPPEAR"

    return-object v0

    .line 950
    :pswitch_9f
    const-string v0, "LOCKSCREEN_PASSWORD_DISAPPEAR"

    return-object v0

    .line 948
    :pswitch_a2
    const-string v0, "LOCKSCREEN_PIN_APPEAR"

    return-object v0

    .line 946
    :pswitch_a5
    const-string v0, "LOCKSCREEN_PATTERN_APPEAR"

    return-object v0

    .line 944
    :pswitch_a8
    const-string v0, "LOCKSCREEN_PASSWORD_APPEAR"

    return-object v0

    .line 942
    :pswitch_ab
    const-string v0, "NOTIFICATION_APP_START"

    return-object v0

    .line 940
    :pswitch_ae
    const-string v0, "NOTIFICATION_REMOVE"

    return-object v0

    .line 938
    :pswitch_b1
    const-string v0, "NOTIFICATION_ADD"

    return-object v0

    .line 936
    :pswitch_b4
    const-string v0, "NOTIFICATION_HEADS_UP_DISAPPEAR"

    return-object v0

    .line 934
    :pswitch_b7
    const-string v0, "NOTIFICATION_HEADS_UP_APPEAR"

    return-object v0

    .line 932
    :pswitch_ba
    const-string v0, "LAUNCHER_QUICK_SWITCH"

    return-object v0

    .line 930
    :pswitch_bd
    const-string v0, "LAUNCHER_APP_CLOSE_TO_PIP"

    return-object v0

    .line 928
    :pswitch_c0
    const-string v0, "LAUNCHER_APP_CLOSE_TO_HOME"

    return-object v0

    .line 926
    :pswitch_c3
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_ICON"

    return-object v0

    .line 924
    :pswitch_c6
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_RECENTS"

    return-object v0

    .line 922
    :pswitch_c9
    const-string v0, "NOTIFICATION_SHADE_QS_SCROLL_SWIPE"

    return-object v0

    .line 920
    :pswitch_cc
    const-string v0, "NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE"

    return-object v0

    .line 918
    :pswitch_cf
    const-string v0, "NOTIFICATION_SHADE_ROW_SWIPE"

    return-object v0

    .line 916
    :pswitch_d2
    const-string v0, "NOTIFICATION_SHADE_ROW_EXPAND"

    return-object v0

    .line 914
    :pswitch_d5
    const-string v0, "NOTIFICATION_SHADE_SCROLL_FLING"

    return-object v0

    .line 912
    :pswitch_d8
    const-string v0, "NOTIFICATION_SHADE_EXPAND_COLLAPSE"

    return-object v0

    nop

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_3
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getNameOfInteraction(I)Ljava/lang/String;
    .registers 2
    .param p0, "interactionType"    # I

    .line 854
    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor;->getCujTypeFromInteraction(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTracker(I)Lcom/android/internal/jank/FrameTracker;
    .registers 4
    .param p1, "cuj"    # I

    .line 790
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/FrameTracker;

    monitor-exit v0

    return-object v1

    .line 792
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private handleCujEvents(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->needRemoveTasks(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 551
    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getCuj()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 556
    :cond_1c
    return-void
.end method

.method static synthetic lambda$begin$3(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;JJJ)V
    .registers 15
    .param p0, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p1, "unixNanos"    # J
    .param p3, "elapsedNanos"    # J
    .param p5, "realtimeNanos"    # J

    .line 613
    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsBeginRequest(IJJJLjava/lang/String;)V

    .line 615
    return-void
.end method

.method private synthetic lambda$begin$4(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .registers 4
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 618
    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method private synthetic lambda$beginInternal$5(I)V
    .registers 3
    .param p1, "cujType"    # I

    .line 646
    const/16 v0, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    return-void
.end method

.method static synthetic lambda$cancel$8(IJJJ)V
    .registers 7
    .param p0, "cujType"    # I
    .param p1, "unixNanos"    # J
    .param p3, "elapsedNanos"    # J
    .param p5, "realtimeNanos"    # J

    .line 731
    invoke-static/range {p0 .. p6}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsCancelRequest(IJJJ)V

    .line 733
    return-void
.end method

.method private synthetic lambda$cancel$9(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V
    .registers 5
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "cujType"    # I
    .param p3, "reason"    # I

    .line 750
    invoke-direct {p0, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor;->cancelInternal(II)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method private synthetic lambda$createFrameTracker$1(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;
    .param p2, "act"    # Ljava/lang/String;

    .line 536
    invoke-direct {p0, p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->handleCujEvents(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    return-void
.end method

.method static synthetic lambda$end$6(IJJJ)V
    .registers 7
    .param p0, "cujType"    # I
    .param p1, "unixNanos"    # J
    .param p3, "elapsedNanos"    # J
    .param p5, "realtimeNanos"    # J

    .line 690
    invoke-static/range {p0 .. p6}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsEndRequest(IJJJ)V

    .line 692
    return-void
.end method

.method private synthetic lambda$end$7(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;I)V
    .registers 4
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "cujType"    # I

    .line 699
    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->endInternal(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method private synthetic lambda$handleCujEvents$2(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 4
    .param p1, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 552
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getCuj()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    .line 553
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getCuj()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(II)V

    .line 554
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 489
    const-string v0, "interaction_jank_monitor"

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 490
    invoke-static {v0, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 489
    invoke-interface {v1, v2}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 491
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    .line 493
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 491
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1e} :catch_1f

    .line 499
    goto :goto_4c

    .line 495
    :catch_1f
    move-exception v0

    .line 496
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get properties: READ_DEVICE_CONFIG granted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    const-string v3, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 498
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_4c
    return-void
.end method

.method static synthetic lambda$postEventLogToWorkerThread$11(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;JJJ)V
    .registers 7
    .param p0, "logFunction"    # Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;
    .param p1, "unixNanos"    # J
    .param p3, "elapsedNanos"    # J
    .param p5, "realtimeNanos"    # J

    .line 1399
    invoke-interface/range {p0 .. p6}, Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;->invoke(JJJ)V

    .line 1400
    return-void
.end method

.method static synthetic lambda$trigger$10(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 2
    .param p0, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 843
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getPerfettoTrigger()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    return-void
.end method

.method private static listNamesOfCujs(Landroid/util/SparseArray;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 886
    .local p0, "trackers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/jank/FrameTracker;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method private needRemoveTasks(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Z
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 559
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 560
    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 561
    .local v0, "badEnd":Z
    :goto_13
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 562
    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2d

    .line 563
    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_2d

    move v3, v1

    goto :goto_2e

    :cond_2d
    move v3, v2

    .line 564
    .local v3, "badCancel":Z
    :goto_2e
    if-nez v0, :cond_34

    if-eqz v3, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    :cond_34
    :goto_34
    return v1
.end method

.method private postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V
    .registers 21
    .param p1, "logFunction"    # Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;

    .line 1392
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 1393
    .local v0, "now":Ljava/time/Instant;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 1394
    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 1395
    .local v1, "unixNanos":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1396
    .local v3, "elapsedNanos":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v13

    .line 1398
    .local v13, "realtimeNanos":J
    move-object/from16 v15, p0

    iget-object v5, v15, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;

    move-object v5, v12

    move-object/from16 v6, p1

    move-wide v7, v1

    move-wide v9, v3

    move-object/from16 v16, v0

    move-wide/from16 v17, v1

    move-object v0, v11

    move-object v1, v12

    .end local v0    # "now":Ljava/time/Instant;
    .end local v1    # "unixNanos":J
    .local v16, "now":Ljava/time/Instant;
    .local v17, "unixNanos":J
    move-wide v11, v13

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;JJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1401
    return-void
.end method

.method private putTracker(ILcom/android/internal/jank/FrameTracker;)V
    .registers 5
    .param p1, "cuj"    # I
    .param p2, "tracker"    # Lcom/android/internal/jank/FrameTracker;

    .line 777
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 779
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v1, :cond_f

    .line 780
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerAdded(ILcom/android/internal/jank/FrameTracker;)V

    .line 786
    :cond_f
    monitor-exit v0

    .line 787
    return-void

    .line 786
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private removeTimeout(I)V
    .registers 5
    .param p1, "cujType"    # I

    .line 568
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 570
    .local v1, "timeout":Ljava/lang/Runnable;
    if-eqz v1, :cond_1d

    .line 571
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 572
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 574
    .end local v1    # "timeout":Ljava/lang/Runnable;
    :cond_1d
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private removeTracker(II)V
    .registers 6
    .param p1, "cuj"    # I
    .param p2, "reason"    # I

    .line 797
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 799
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v1, :cond_11

    .line 800
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerRemoved(IILandroid/util/SparseArray;)V

    .line 806
    :cond_11
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 811
    const-string/jumbo v0, "sampling_interval"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    .line 813
    const-string/jumbo v0, "trace_threshold_missed_frames"

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    .line 815
    const-string/jumbo v0, "trace_threshold_frame_time_millis"

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    .line 819
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    const-string v0, "debug_overlay_enabled"

    invoke-virtual {p1, v0, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    move v0, v1

    .line 822
    .local v0, "debugOverlayEnabled":Z
    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-nez v1, :cond_43

    .line 823
    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    iget-wide v4, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;-><init>(Ljava/lang/Object;ID)V

    iput-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    goto :goto_4f

    .line 824
    :cond_43
    if-nez v0, :cond_4f

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v1, :cond_4f

    .line 825
    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->dispose()V

    .line 826
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 829
    :cond_4f
    :goto_4f
    const-string v1, "enabled"

    sget-boolean v2, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    .line 830
    return-void
.end method


# virtual methods
.method public begin(Landroid/view/View;I)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cujType"    # I

    .line 596
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 597
    :catch_9
    move-exception v0

    .line 598
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Build configuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, 0x0

    return v1
.end method

.method public begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z
    .registers 9
    .param p1, "builder"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 611
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    move-result-object v1

    .line 612
    .local v1, "config":Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    invoke-direct {p0, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    .line 616
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    .line 617
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 619
    .local v3, "success":Z
    if-nez v3, :cond_45

    .line 620
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v0

    .line 623
    :cond_45
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v0
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_49} :catch_4a

    return v0

    .line 624
    .end local v1    # "config":Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_4a
    move-exception v1

    .line 625
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Build configuration failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    return v0
.end method

.method public cancel(I)Z
    .registers 3
    .param p1, "cujType"    # I

    .line 730
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    .line 734
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    move-result v0

    return v0
.end method

.method public cancel(II)Z
    .registers 10
    .param p1, "cujType"    # I
    .param p2, "reason"    # I

    .line 744
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    .line 746
    .local v0, "tracker":Lcom/android/internal/jank/FrameTracker;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 748
    :cond_8
    :try_start_8
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    .line 749
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 751
    .local v3, "success":Z
    if-nez v3, :cond_3c

    .line 752
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v1

    .line 755
    :cond_3c
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v1
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_40} :catch_41

    return v1

    .line 756
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_41
    move-exception v2

    .line 757
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Execute cancel task failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    return v1
.end method

.method public configDebugOverlay(ID)V
    .registers 4
    .param p1, "bgColor"    # I
    .param p2, "yOffset"    # D

    .line 876
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    .line 877
    iput-wide p2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    .line 878
    return-void
.end method

.method public createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Lcom/android/internal/jank/FrameTracker;
    .registers 20
    .param p1, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p2, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 512
    move-object/from16 v14, p0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;

    move-result-object v15

    .line 514
    .local v15, "view":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->hasValidView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_67

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "attached":Z
    const/4 v2, 0x0

    .line 517
    .local v2, "hasViewRoot":Z
    const/4 v3, 0x0

    .line 518
    .local v3, "hasRenderer":Z
    if-eqz v15, :cond_2b

    .line 519
    invoke-virtual {v15}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    .line 520
    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_20

    move v4, v5

    goto :goto_21

    :cond_20
    move v4, v6

    :goto_21
    move v2, v4

    .line 521
    invoke-virtual {v15}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v4

    if-eqz v4, :cond_29

    goto :goto_2a

    :cond_29
    move v5, v6

    :goto_2a
    move v3, v5

    .line 523
    :cond_2b
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create FrameTracker fails: view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", attached="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasViewRoot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasRenderer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    return-object v1

    .line 530
    .end local v0    # "attached":Z
    .end local v2    # "hasViewRoot":Z
    .end local v3    # "hasRenderer":Z
    :cond_67
    if-nez v15, :cond_6b

    move-object v4, v1

    goto :goto_75

    :cond_6b
    new-instance v0, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    invoke-virtual {v15}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;-><init>(Landroid/view/ThreadedRenderer;)V

    move-object v4, v0

    .line 532
    .local v4, "threadedRenderer":Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
    :goto_75
    if-nez v15, :cond_79

    move-object v5, v1

    goto :goto_83

    :cond_79
    new-instance v0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;-><init>(Landroid/view/ViewRootImpl;)V

    move-object v5, v0

    .line 533
    .local v5, "viewRoot":Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    :goto_83
    new-instance v6, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-direct {v6}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;-><init>()V

    .line 534
    .local v6, "surfaceControl":Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    new-instance v7, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 535
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;-><init>(Landroid/view/Choreographer;)V

    .line 536
    .local v7, "choreographer":Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;
    new-instance v12, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda12;

    invoke-direct {v12, v14}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    .line 537
    .local v12, "eventsListener":Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;
    new-instance v8, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-direct {v8}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;-><init>()V

    .line 539
    .local v8, "frameMetrics":Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
    new-instance v16, Lcom/android/internal/jank/FrameTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v9, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget-object v0, v14, Lcom/android/internal/jank/InteractionJankMonitor;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-direct {v9, v0}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;-><init>(Lcom/android/internal/jank/DisplayResolutionTracker;)V

    iget v10, v14, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    iget v11, v14, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v13, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    return-object v16
.end method

.method public end(I)Z
    .registers 9
    .param p1, "cujType"    # I

    .line 689
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    .line 693
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v0

    .line 695
    .local v0, "tracker":Lcom/android/internal/jank/FrameTracker;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 697
    :cond_10
    :try_start_10
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V

    .line 698
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 700
    .local v3, "success":Z
    if-nez v3, :cond_44

    .line 701
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return v1

    .line 704
    :cond_44
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v1
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_48} :catch_49

    return v1

    .line 705
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_49
    move-exception v2

    .line 706
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Execute end task failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    return v1
.end method

.method public getPropertiesChangedListener()Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .registers 2

    .line 834
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-object v0
.end method

.method public isInstrumenting(I)Z
    .registers 4
    .param p1, "cujType"    # I

    .line 582
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 584
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public scheduleTimeoutAction(IJLjava/lang/Runnable;)V
    .registers 7
    .param p1, "cuj"    # I
    .param p2, "timeout"    # J
    .param p4, "action"    # Ljava/lang/Runnable;

    .line 676
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    monitor-exit v0

    .line 680
    return-void

    .line 679
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public shouldMonitor(I)Z
    .registers 6
    .param p1, "cujType"    # I

    .line 656
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    rem-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 657
    .local v0, "shouldSample":Z
    :goto_12
    iget-boolean v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    if-eqz v3, :cond_1a

    if-nez v0, :cond_19

    goto :goto_1a

    .line 665
    :cond_19
    return v1

    .line 663
    :cond_1a
    :goto_1a
    return v2
.end method

.method public trigger(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 4
    .param p1, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 842
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 844
    return-void
.end method
