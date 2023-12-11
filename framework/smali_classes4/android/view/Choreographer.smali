.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$FrameData;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$FrameCallback;,
        Landroid/view/Choreographer$FrameTimeline;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$VsyncCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x4

.field public static final CALLBACK_INPUT:I = 0x0

.field public static final CALLBACK_INSETS_ANIMATION:I = 0x2

.field private static final CALLBACK_LAST:I = 0x4

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x3

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final DEFAULT_THRESHOLD_BG_DELAY:J = 0xfa0L

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final IDS_TAG:Ljava/lang/String; = "IDS_TAG"

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final MSG_UPDATE_ACTIVITY_STATE:I = 0x3

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final STB_FRAME_TIME_THRESHOLD:J = 0x989680L

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static final VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static volatile mMainInstance:Landroid/view/Choreographer;

.field private static volatile sFrameDelay:J

.field private static sScrollDf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DO_AID:I

.field public final DO_DOT:I

.field public final DO_IDS:I

.field public final DO_STB:I

.field private mBgWaitingDelaySetting:Z

.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mDebugCallStackCnt:I

.field private mDebugCallbackConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugDispatchThresholdMs:I

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private mEnabledDebugCallback:Z

.field private mFPSDivisor:I

.field private mFlingSTBFlag:[Z

.field private final mFrameData:Landroid/view/Choreographer$FrameData;

.field mFrameInfo:Landroid/graphics/FrameInfo;

.field private mFrameIntervalNanos:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mFrameScheduled:Z

.field private mFramesSinceSTB:J

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mIsFg:Z

.field private mIsFirstBBA:Z

.field private mLastFrameIntervalNanos:J

.field private mLastFrameTimeNanos:J

.field private final mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mSTBCount:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlingSTBFlag(Landroid/view/Choreographer;)[Z
    .registers 1

    iget-object p0, p0, Landroid/view/Choreographer;->mFlingSTBFlag:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .registers 1

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSTBCount(Landroid/view/Choreographer;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer;->mSTBCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmFramesSinceSTB(Landroid/view/Choreographer;J)V
    .registers 3

    iput-wide p1, p0, Landroid/view/Choreographer;->mFramesSinceSTB:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSTBCount(Landroid/view/Choreographer;J)V
    .registers 3

    iput-wide p1, p0, Landroid/view/Choreographer;->mSTBCount:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetFRAME_CALLBACK_TOKEN()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVSYNC_CALLBACK_TOKEN()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsScrollDf()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->sScrollDf:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmMainInstance(Landroid/view/Choreographer;)V
    .registers 1

    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 157
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 160
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 179
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    .line 193
    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 197
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 202
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 213
    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 216
    new-instance v0, Landroid/view/Choreographer$4;

    invoke-direct {v0}, Landroid/view/Choreographer$4;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 274
    const-string/jumbo v0, "traversal"

    const-string v1, "commit"

    const-string v2, "input"

    const-string v3, "animation"

    const-string v4, "insets_animation"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;I)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I

    .line 336
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;IJ)V

    .line 337
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;IJ)V
    .registers 19
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I
    .param p3, "layerHandle"    # J

    .line 339
    move-object v6, p0

    move-object v7, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/Choreographer;->DO_AID:I

    .line 111
    const/4 v8, 0x1

    iput v8, v6, Landroid/view/Choreographer;->DO_DOT:I

    .line 116
    const/4 v1, 0x2

    iput v1, v6, Landroid/view/Choreographer;->DO_IDS:I

    .line 122
    const/4 v1, 0x3

    iput v1, v6, Landroid/view/Choreographer;->DO_STB:I

    .line 126
    const-wide/high16 v9, -0x8000000000000000L

    iput-wide v9, v6, Landroid/view/Choreographer;->mFramesSinceSTB:J

    .line 127
    const-wide/16 v1, 0x0

    iput-wide v1, v6, Landroid/view/Choreographer;->mSTBCount:J

    .line 137
    iput-boolean v8, v6, Landroid/view/Choreographer;->mIsFg:Z

    .line 138
    iput-boolean v8, v6, Landroid/view/Choreographer;->mIsFirstBBA:Z

    .line 141
    iput-boolean v0, v6, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    .line 222
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v6, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 252
    iput v8, v6, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 253
    new-instance v1, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v1}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v1, v6, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 255
    new-instance v1, Landroid/view/Choreographer$FrameData;

    invoke-direct {v1}, Landroid/view/Choreographer$FrameData;-><init>()V

    iput-object v1, v6, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    .line 268
    new-instance v1, Landroid/graphics/FrameInfo;

    invoke-direct {v1}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v1, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 329
    iput-boolean v0, v6, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    .line 330
    const/4 v11, 0x0

    iput-object v11, v6, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    .line 331
    const/4 v12, 0x5

    iput v12, v6, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    .line 332
    const/16 v0, 0x14

    iput v0, v6, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    .line 346
    iput-object v7, v6, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 347
    new-instance v0, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v0, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v0, v6, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 348
    sget-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v0, :cond_63

    .line 349
    new-instance v13, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;IJ)V

    goto :goto_64

    .line 350
    :cond_63
    move-object v13, v11

    :goto_64
    iput-object v13, v6, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 351
    iput-wide v9, v6, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 353
    const v0, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, v6, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 355
    new-array v0, v12, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v0, v6, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_78
    const/4 v1, 0x4

    if-gt v0, v1, :cond_87

    .line 357
    iget-object v1, v6, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v2, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v2, p0, v11}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue-IA;)V

    aput-object v2, v1, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 360
    .end local v0    # "i":I
    :cond_87
    const-string v0, "debug.hwui.fps_divisor"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    .line 361
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;ILandroid/view/Choreographer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method private dispose()V
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    .line 434
    return-void
.end method

.method public static getFrameDelay()J
    .registers 2

    .line 471
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .registers 2

    .line 378
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    .line 380
    .local v0, "ch":Landroid/view/Choreographer;
    sget-object v1, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    if-eqz v1, :cond_16

    sget-object v1, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    if-eq v0, v1, :cond_16

    .line 381
    sget-object v1, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    iget-boolean v1, v1, Landroid/view/Choreographer;->mIsFg:Z

    iput-boolean v1, v0, Landroid/view/Choreographer;->mIsFg:Z

    .line 384
    :cond_16
    return-object v0
.end method

.method static getInstanceForSurfaceControl(JLandroid/os/Looper;)Landroid/view/Choreographer;
    .registers 5
    .param p0, "layerHandle"    # J
    .param p2, "looper"    # Landroid/os/Looper;

    .line 409
    if-eqz p2, :cond_9

    .line 412
    new-instance v0, Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;IJ)V

    return-object v0

    .line 410
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The current thread must have a looper!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMainThreadInstance()Landroid/view/Choreographer;
    .registers 1

    .line 420
    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .registers 2

    .line 364
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 366
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static getSfInstance()Landroid/view/Choreographer;
    .registers 1

    .line 392
    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .registers 3

    .line 1206
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;
    .registers 9
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;
    .param p5, "log"    # Ljava/lang/String;

    .line 1210
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1211
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1212
    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$CallbackRecord-IA;)V

    move-object v0, v2

    goto :goto_12

    .line 1214
    :cond_c
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1215
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1217
    :goto_12
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 1218
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1219
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1220
    iput-object p5, v0, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    .line 1221
    return-object v0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .registers 22
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 625
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 628
    :try_start_7
    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsFg:Z

    iget-boolean v4, v1, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    const/4 v5, 0x1

    if-ne v0, v4, :cond_21

    const/4 v0, 0x3

    if-eqz v2, :cond_13

    if-ne v2, v0, :cond_21

    .line 629
    :cond_13
    iput-boolean v5, v1, Landroid/view/Choreographer;->mIsFg:Z

    .line 630
    iput-boolean v5, v1, Landroid/view/Choreographer;->mIsFirstBBA:Z

    .line 632
    if-eqz v4, :cond_1e

    .line 633
    iget-object v4, v1, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v4, v0}, Landroid/view/Choreographer$FrameHandler;->removeMessages(I)V

    .line 635
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    .line 639
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 640
    .local v6, "now":J
    add-long v14, v6, p4

    .line 642
    .local v14, "dueTime":J
    iget-boolean v0, v1, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v0, :cond_40

    .line 643
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v8, v0, v2

    iget v0, v1, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    const-string v4, " "

    .line 644
    invoke-static {v0, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 643
    move-wide v9, v14

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4d

    .line 646
    :cond_40
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v8, v0, v2

    const/4 v13, 0x0

    move-wide v9, v14

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    :goto_4d
    cmp-long v0, v14, v6

    if-gtz v0, :cond_57

    .line 651
    invoke-direct {v1, v6, v7}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    move-object/from16 v8, p2

    goto :goto_6a

    .line 653
    :cond_57
    iget-object v0, v1, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_6c

    const/4 v4, 0x2

    move-object/from16 v8, p2

    :try_start_5c
    invoke-virtual {v0, v4, v8}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 654
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 655
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 656
    iget-object v4, v1, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v4, v0, v14, v15}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 658
    .end local v0    # "msg":Landroid/os/Message;
    .end local v6    # "now":J
    .end local v14    # "dueTime":J
    :goto_6a
    monitor-exit v3

    .line 659
    return-void

    .line 658
    :catchall_6c
    move-exception v0

    move-object/from16 v8, p2

    :goto_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_5c .. :try_end_70} :catchall_71

    throw v0

    :catchall_71
    move-exception v0

    goto :goto_6f
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .line 1225
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1226
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1227
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1228
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    .line 1229
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1230
    return-void
.end method

.method public static releaseInstance()V
    .registers 2

    .line 427
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Choreographer;

    .line 428
    .local v1, "old":Landroid/view/Choreographer;
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 429
    invoke-direct {v1}, Landroid/view/Choreographer;->dispose()V

    .line 430
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .line 708
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_3
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    if-eqz p2, :cond_14

    if-nez p3, :cond_14

    .line 711
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 713
    :cond_14
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private scheduleFrameLocked(J)V
    .registers 8
    .param p1, "now"    # J

    .line 845
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_40

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 847
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_24

    .line 855
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 856
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_40

    .line 858
    :cond_15
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 859
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 860
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 861
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_40

    .line 863
    :cond_24
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-wide v3, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 868
    .local v1, "nextFrameTime":J
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 869
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 870
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 873
    .end local v1    # "nextFrameTime":J
    .end local v3    # "msg":Landroid/os/Message;
    :cond_40
    :goto_40
    return-void
.end method

.method private scheduleVsyncLocked()V
    .registers 4

    .line 1198
    const-wide/16 v0, 0x8

    :try_start_2
    const-string v2, "Choreographer#scheduleVsyncLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1199
    iget-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_11

    .line 1201
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1202
    nop

    .line 1203
    return-void

    .line 1201
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1202
    throw v2
.end method

.method public static setFrameDelay(J)V
    .registers 2
    .param p0, "frameDelay"    # J

    .line 491
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 492
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .registers 6
    .param p0, "delayMillis"    # J

    .line 517
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 518
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    const-wide/16 v2, 0x0

    goto :goto_b

    :cond_9
    sub-long v2, p0, v0

    :goto_b
    return-wide v2
.end method

.method private traceMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 905
    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 906
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 907
    return-void
.end method


# virtual methods
.method doCallbacks(IJ)V
    .registers 25
    .param p1, "callbackType"    # I
    .param p2, "frameIntervalNanos"    # J

    .line 1076
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-static {v0}, Landroid/view/Choreographer$FrameData;->-$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v3

    .line 1077
    .local v3, "frameTimeNanos":J
    iget-object v5, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1081
    :try_start_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1082
    .local v6, "now":J
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v8, 0xf4240

    div-long v8, v6, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    move-object v8, v0

    .line 1084
    .local v8, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v8, :cond_23

    .line 1085
    monitor-exit v5

    return-void

    .line 1087
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1097
    const/4 v0, 0x4

    const-wide/16 v9, 0x8

    if-ne v2, v0, :cond_53

    .line 1098
    sub-long v14, v6, v3

    .line 1099
    .local v14, "jitterNanos":J
    const-string v0, "jitterNanos"

    long-to-int v11, v14

    invoke-static {v9, v10, v0, v11}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1100
    const-wide/16 v11, 0x2

    mul-long v11, v11, p2

    cmp-long v0, v14, v11

    if-ltz v0, :cond_51

    .line 1101
    rem-long v11, v14, p2

    add-long v17, v11, p2

    .line 1111
    .local v17, "lastFrameOffset":J
    sub-long v3, v6, v17

    .line 1112
    iput-wide v3, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 1113
    iget-object v11, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iget-object v0, v1, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-wide v12, v3

    move-wide/from16 v19, v14

    .end local v14    # "jitterNanos":J
    .local v19, "jitterNanos":J
    move-object v14, v0

    move-wide/from16 v15, v19

    invoke-virtual/range {v11 .. v16}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;

    goto :goto_53

    .line 1100
    .end local v17    # "lastFrameOffset":J
    .end local v19    # "jitterNanos":J
    .restart local v14    # "jitterNanos":J
    :cond_51
    move-wide/from16 v19, v14

    .line 1116
    .end local v6    # "now":J
    .end local v14    # "jitterNanos":J
    :cond_53
    :goto_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_d .. :try_end_54} :catchall_114

    .line 1118
    const/4 v5, 0x0

    :try_start_55
    sget-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1119
    move-object v0, v8

    .local v0, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_5d
    if-eqz v0, :cond_e3

    .line 1126
    iget-boolean v6, v1, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v6, :cond_68

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    goto :goto_6a

    :cond_68
    const-wide/16 v6, 0x0

    .line 1129
    .local v6, "begin":J
    :goto_6a
    iget-object v11, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v0, v11}, Landroid/view/Choreographer$CallbackRecord;->run(Landroid/view/Choreographer$FrameData;)V

    .line 1132
    iget-boolean v11, v1, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v11, :cond_dc

    iget-object v11, v1, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    if-eqz v11, :cond_dc

    iget-object v11, v0, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    if-eqz v11, :cond_dc

    .line 1133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    .line 1134
    .local v11, "dur":J
    iget v13, v1, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    int-to-long v13, v13

    cmp-long v13, v11, v13

    if-ltz v13, :cond_dc

    .line 1135
    iget-object v13, v1, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RunCallback: type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", action="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", token="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", latencyMillis="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-wide v9, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    sub-long v9, v15, v9

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dur="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    .line 1135
    invoke-interface {v13, v9, v10}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1119
    .end local v6    # "begin":J
    .end local v11    # "dur":J
    :cond_dc
    iget-object v6, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_de
    .catchall {:try_start_55 .. :try_end_de} :catchall_fb

    move-object v0, v6

    const-wide/16 v9, 0x8

    goto/16 :goto_5d

    .line 1144
    .end local v0    # "c":Landroid/view/Choreographer$CallbackRecord;
    :cond_e3
    iget-object v6, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1145
    :try_start_e6
    iput-boolean v5, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1147
    :cond_e8
    iget-object v0, v8, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1148
    .local v0, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v8}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 1149
    move-object v8, v0

    .line 1150
    .end local v0    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-nez v8, :cond_e8

    .line 1151
    monitor-exit v6
    :try_end_f1
    .catchall {:try_start_e6 .. :try_end_f1} :catchall_f8

    .line 1152
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1153
    nop

    .line 1154
    return-void

    .line 1151
    :catchall_f8
    move-exception v0

    :try_start_f9
    monitor-exit v6
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v0

    .line 1144
    :catchall_fb
    move-exception v0

    iget-object v6, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1145
    :try_start_ff
    iput-boolean v5, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1147
    :goto_101
    iget-object v5, v8, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1148
    .local v5, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v8}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 1149
    move-object v8, v5

    .line 1150
    .end local v5    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz v8, :cond_10a

    goto :goto_101

    .line 1151
    :cond_10a
    monitor-exit v6
    :try_end_10b
    .catchall {:try_start_ff .. :try_end_10b} :catchall_111

    .line 1152
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1153
    throw v0

    .line 1151
    :catchall_111
    move-exception v0

    :try_start_112
    monitor-exit v6
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v0

    .line 1116
    .end local v8    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    :catchall_114
    move-exception v0

    :try_start_115
    monitor-exit v5
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v0
.end method

.method doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 38
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I
    .param p4, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 943
    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-object/from16 v15, p4

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getIdsController()Landroid/app/IdsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/IdsController;->closeIdsWindow()V

    .line 947
    iget-wide v13, v15, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 948
    .local v13, "frameIntervalNanos":J
    const/4 v2, 0x0

    .line 955
    .local v2, "resynced":Z
    const-wide/16 v11, 0x8

    :try_start_16
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v0, v5, v6, v15}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v0

    move-object v7, v0

    .line 956
    .local v7, "timeline":Landroid/view/Choreographer$FrameTimeline;
    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_254

    if-eqz v0, :cond_43

    .line 957
    :try_start_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Choreographer#doFrame "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3e

    goto :goto_43

    .line 1059
    .end local v7    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    :catchall_3e
    move-exception v0

    move-wide v10, v11

    move-wide v8, v13

    goto/16 :goto_257

    .line 960
    .restart local v7    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    :cond_43
    :goto_43
    :try_start_43
    iget-object v9, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_254

    .line 961
    :try_start_46
    iget-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_249

    if-nez v0, :cond_63

    .line 962
    :try_start_4a
    const-string v0, "Frame not scheduled"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 963
    monitor-exit v9
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_5c

    .line 1059
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1060
    if-eqz v2, :cond_58

    .line 1061
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    :cond_58
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 963
    return-void

    .line 1029
    :catchall_5c
    move-exception v0

    move-object/from16 v28, v9

    move-wide v10, v11

    move-wide v8, v13

    goto/16 :goto_24e

    .line 972
    :cond_63
    move-wide/from16 v3, p1

    .line 973
    .local v3, "intendedFrameTimeNanos":J
    :try_start_65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_249

    .line 974
    .local v16, "startNanos":J
    sub-long v24, v16, v5

    .line 975
    .local v24, "jitterNanos":J
    cmp-long v0, v24, v13

    const-wide/16 v26, 0x0

    if-ltz v0, :cond_ed

    .line 976
    move-wide/from16 v5, v16

    .line 977
    .end local p1    # "frameTimeNanos":J
    .local v5, "frameTimeNanos":J
    cmp-long v0, v13, v26

    if-nez v0, :cond_7f

    .line 978
    :try_start_77
    const-string v0, "Choreographer"

    const-string v8, "Vsync data empty due to timeout"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 980
    :cond_7f
    rem-long v18, v24, v13
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_e6

    .line 981
    .local v18, "lastFrameOffset":J
    sub-long v5, v5, v18

    .line 982
    :try_start_83
    div-long v20, v24, v13

    move-wide/from16 p1, v20

    .line 983
    .local p1, "skippedFrames":J
    sget v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_dd

    int-to-long v11, v0

    move-wide/from16 v20, v5

    move-wide/from16 v5, p1

    .end local p1    # "skippedFrames":J
    .local v5, "skippedFrames":J
    .local v20, "frameTimeNanos":J
    cmp-long v0, v5, v11

    if-ltz v0, :cond_bb

    .line 984
    :try_start_92
    const-string v0, "Choreographer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipped "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_92 .. :try_end_b0} :catchall_b1

    goto :goto_bb

    .line 1029
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v5    # "skippedFrames":J
    .end local v16    # "startNanos":J
    .end local v18    # "lastFrameOffset":J
    .end local v24    # "jitterNanos":J
    :catchall_b1
    move-exception v0

    move-object/from16 v28, v9

    move-wide v8, v13

    move-wide/from16 v5, v20

    const-wide/16 v10, 0x8

    goto/16 :goto_24e

    .line 997
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v16    # "startNanos":J
    .restart local v24    # "jitterNanos":J
    :cond_bb
    :goto_bb
    move-wide/from16 v5, v20

    .end local v20    # "frameTimeNanos":J
    .local v5, "frameTimeNanos":J
    :goto_bd
    :try_start_bd
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iget-object v8, v1, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-object/from16 v18, v0

    move-wide/from16 v19, v5

    move-object/from16 v21, v8

    move-wide/from16 v22, v24

    invoke-virtual/range {v18 .. v23}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v0
    :try_end_cd
    .catchall {:try_start_bd .. :try_end_cd} :catchall_d5

    move-object v7, v0

    .line 999
    const/4 v2, 0x1

    move/from16 v18, v2

    move-wide v11, v5

    move-object/from16 v19, v7

    goto :goto_f2

    .line 1029
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v16    # "startNanos":J
    .end local v24    # "jitterNanos":J
    :catchall_d5
    move-exception v0

    move-object/from16 v28, v9

    move-wide v8, v13

    const-wide/16 v10, 0x8

    goto/16 :goto_24e

    :catchall_dd
    move-exception v0

    move-wide/from16 v20, v5

    move-object/from16 v28, v9

    move-wide v10, v11

    move-wide v8, v13

    .end local v5    # "frameTimeNanos":J
    .restart local v20    # "frameTimeNanos":J
    goto/16 :goto_24e

    .end local v20    # "frameTimeNanos":J
    .restart local v5    # "frameTimeNanos":J
    :catchall_e6
    move-exception v0

    move-object/from16 v28, v9

    move-wide v10, v11

    move-wide v8, v13

    goto/16 :goto_24e

    .line 975
    .end local v5    # "frameTimeNanos":J
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v16    # "startNanos":J
    .restart local v24    # "jitterNanos":J
    .local p1, "frameTimeNanos":J
    :cond_ed
    move/from16 v18, v2

    move-wide v11, v5

    move-object/from16 v19, v7

    .line 1002
    .end local v2    # "resynced":Z
    .end local v7    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .end local p1    # "frameTimeNanos":J
    .local v11, "frameTimeNanos":J
    .local v18, "resynced":Z
    .local v19, "timeline":Landroid/view/Choreographer$FrameTimeline;
    :goto_f2
    :try_start_f2
    iget-wide v5, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_f4
    .catchall {:try_start_f2 .. :try_end_f4} :catchall_23d

    cmp-long v0, v11, v5

    if-gez v0, :cond_11f

    .line 1007
    :try_start_f8
    const-string v0, "Frame time goes backward"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 1008
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1009
    monitor-exit v9
    :try_end_101
    .catchall {:try_start_f8 .. :try_end_101} :catchall_112

    .line 1059
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1060
    if-eqz v18, :cond_10c

    .line 1061
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_10e

    .line 1060
    :cond_10c
    const-wide/16 v5, 0x8

    .line 1063
    :goto_10e
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1009
    return-void

    .line 1029
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v16    # "startNanos":J
    .end local v24    # "jitterNanos":J
    :catchall_112
    move-exception v0

    move-object/from16 v28, v9

    move-wide v5, v11

    move-wide v8, v13

    move/from16 v2, v18

    move-object/from16 v7, v19

    const-wide/16 v10, 0x8

    goto/16 :goto_24e

    .line 1012
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v16    # "startNanos":J
    .restart local v24    # "jitterNanos":J
    :cond_11f
    :try_start_11f
    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I
    :try_end_121
    .catchall {:try_start_11f .. :try_end_121} :catchall_23d

    const/4 v10, 0x1

    if-le v0, v10, :cond_14d

    .line 1013
    sub-long v5, v11, v5

    .line 1014
    .local v5, "timeSinceVsync":J
    int-to-long v7, v0

    mul-long/2addr v7, v13

    cmp-long v0, v5, v7

    if-gez v0, :cond_14a

    cmp-long v0, v5, v26

    if-lez v0, :cond_14a

    .line 1015
    :try_start_130
    const-string v0, "Frame skipped due to FPSDivisor"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 1016
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1017
    monitor-exit v9
    :try_end_139
    .catchall {:try_start_130 .. :try_end_139} :catchall_112

    .line 1059
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1060
    if-eqz v18, :cond_144

    .line 1061
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_146

    .line 1060
    :cond_144
    const-wide/16 v20, 0x8

    .line 1063
    :goto_146
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1017
    return-void

    .line 1014
    :cond_14a
    const-wide/16 v20, 0x8

    goto :goto_14f

    .line 1012
    .end local v5    # "timeSinceVsync":J
    :cond_14d
    const-wide/16 v20, 0x8

    .line 1021
    :goto_14f
    :try_start_14f
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 1022
    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v7, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 1023
    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v5, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J
    :try_end_15d
    .catchall {:try_start_14f .. :try_end_15d} :catchall_235

    move-wide/from16 v22, v13

    .end local v13    # "frameIntervalNanos":J
    .local v22, "frameIntervalNanos":J
    :try_start_15f
    iget-wide v13, v15, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J
    :try_end_161
    .catchall {:try_start_15f .. :try_end_161} :catchall_228

    .line 1021
    move-wide/from16 v26, v5

    move-wide v5, v11

    move-object/from16 v28, v9

    move v0, v10

    move-wide/from16 v9, v26

    move-wide/from16 v29, v11

    .end local v11    # "frameTimeNanos":J
    .local v29, "frameTimeNanos":J
    move-wide/from16 v11, v16

    move-wide/from16 v31, v22

    .end local v22    # "frameIntervalNanos":J
    .local v31, "frameIntervalNanos":J
    :try_start_16f
    invoke-virtual/range {v2 .. v14}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V

    .line 1025
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_175
    .catchall {:try_start_16f .. :try_end_175} :catchall_21c

    .line 1026
    move-wide/from16 v5, v29

    .end local v29    # "frameTimeNanos":J
    .local v5, "frameTimeNanos":J
    :try_start_177
    iput-wide v5, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_179
    .catchall {:try_start_177 .. :try_end_179} :catchall_212

    .line 1027
    move-wide/from16 v8, v31

    .end local v31    # "frameIntervalNanos":J
    .local v8, "frameIntervalNanos":J
    :try_start_17b
    iput-wide v8, v1, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    .line 1028
    iget-object v7, v1, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v7, v15}, Landroid/view/DisplayEventReceiver$VsyncEventData;->copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 1029
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v24    # "jitterNanos":J
    monitor-exit v28
    :try_end_183
    .catchall {:try_start_17b .. :try_end_183} :catchall_20a

    .line 1031
    const/4 v3, 0x2

    if-eqz v18, :cond_1b9

    :try_start_186
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_1b9

    .line 1032
    const-string v4, "Choreographer#doFrame - resynced to %d in %.1fms"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v10

    .line 1033
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v2

    invoke-static/range {v19 .. v19}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v10

    sub-long v10, v10, v16

    long-to-float v10, v10

    const v11, 0x358637bd    # 1.0E-6f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v0

    .line 1032
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1af
    .catchall {:try_start_186 .. :try_end_1af} :catchall_1b5

    .line 1034
    .local v4, "message":Ljava/lang/String;
    move-wide/from16 v10, v20

    :try_start_1b1
    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1bb

    .line 1059
    .end local v4    # "message":Ljava/lang/String;
    .end local v16    # "startNanos":J
    .end local v19    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    :catchall_1b5
    move-exception v0

    move-wide/from16 v10, v20

    goto :goto_206

    .line 1031
    .restart local v16    # "startNanos":J
    .restart local v19    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    :cond_1b9
    move-wide/from16 v10, v20

    .line 1037
    :goto_1bb
    const-wide/32 v12, 0xf4240

    div-long v12, v5, v12

    invoke-static {v12, v13}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    .line 1039
    iget-object v4, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v4}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    .line 1040
    invoke-virtual {v1, v2, v8, v9}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1042
    iget-object v4, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v4}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    .line 1044
    iget-boolean v4, v1, Landroid/view/Choreographer;->mIsFg:Z

    if-eqz v4, :cond_1d7

    .line 1045
    invoke-virtual {v1, v0, v8, v9}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1047
    :cond_1d7
    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsFg:Z

    if-nez v0, :cond_1e8

    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsFirstBBA:Z

    if-eqz v0, :cond_1e8

    .line 1048
    iput-boolean v2, v1, Landroid/view/Choreographer;->mIsFirstBBA:Z

    .line 1049
    const-string v0, "Choreographer"

    const-string v2, "CoreRune.SYSPERF_ACTIVE_APP_BBA_ENABLE : stop animation in background states"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_1e8
    invoke-virtual {v1, v3, v8, v9}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1054
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    .line 1055
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v8, v9}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1057
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v8, v9}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_1f8
    .catchall {:try_start_1b1 .. :try_end_1f8} :catchall_205

    .line 1059
    .end local v19    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1060
    if-eqz v18, :cond_200

    .line 1061
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    :cond_200
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1064
    nop

    .line 1072
    return-void

    .line 1059
    .end local v16    # "startNanos":J
    :catchall_205
    move-exception v0

    :goto_206
    move/from16 v2, v18

    goto/16 :goto_257

    .line 1029
    .restart local v19    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    :catchall_20a
    move-exception v0

    move-wide/from16 v10, v20

    move/from16 v2, v18

    move-object/from16 v7, v19

    goto :goto_24e

    .end local v8    # "frameIntervalNanos":J
    .restart local v31    # "frameIntervalNanos":J
    :catchall_212
    move-exception v0

    move-wide/from16 v10, v20

    move-wide/from16 v8, v31

    move/from16 v2, v18

    move-object/from16 v7, v19

    .end local v31    # "frameIntervalNanos":J
    .restart local v8    # "frameIntervalNanos":J
    goto :goto_24e

    .end local v5    # "frameTimeNanos":J
    .end local v8    # "frameIntervalNanos":J
    .restart local v29    # "frameTimeNanos":J
    .restart local v31    # "frameIntervalNanos":J
    :catchall_21c
    move-exception v0

    move-wide/from16 v10, v20

    move-wide/from16 v5, v29

    move-wide/from16 v8, v31

    move/from16 v2, v18

    move-object/from16 v7, v19

    .end local v29    # "frameTimeNanos":J
    .end local v31    # "frameIntervalNanos":J
    .restart local v5    # "frameTimeNanos":J
    .restart local v8    # "frameIntervalNanos":J
    goto :goto_24e

    .end local v5    # "frameTimeNanos":J
    .end local v8    # "frameIntervalNanos":J
    .restart local v11    # "frameTimeNanos":J
    .restart local v22    # "frameIntervalNanos":J
    :catchall_228
    move-exception v0

    move-object/from16 v28, v9

    move-wide v5, v11

    move-wide/from16 v10, v20

    move-wide/from16 v8, v22

    move/from16 v2, v18

    move-object/from16 v7, v19

    .end local v11    # "frameTimeNanos":J
    .end local v22    # "frameIntervalNanos":J
    .restart local v5    # "frameTimeNanos":J
    .restart local v8    # "frameIntervalNanos":J
    goto :goto_24e

    .end local v5    # "frameTimeNanos":J
    .end local v8    # "frameIntervalNanos":J
    .restart local v11    # "frameTimeNanos":J
    .restart local v13    # "frameIntervalNanos":J
    :catchall_235
    move-exception v0

    move-object/from16 v28, v9

    move-wide v5, v11

    move-wide v8, v13

    move-wide/from16 v10, v20

    goto :goto_244

    :catchall_23d
    move-exception v0

    move-object/from16 v28, v9

    move-wide v5, v11

    move-wide v8, v13

    const-wide/16 v10, 0x8

    :goto_244
    move/from16 v2, v18

    move-object/from16 v7, v19

    .end local v11    # "frameTimeNanos":J
    .end local v13    # "frameIntervalNanos":J
    .restart local v5    # "frameTimeNanos":J
    .restart local v8    # "frameIntervalNanos":J
    goto :goto_24e

    .end local v5    # "frameTimeNanos":J
    .end local v8    # "frameIntervalNanos":J
    .end local v18    # "resynced":Z
    .end local v19    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .restart local v2    # "resynced":Z
    .restart local v7    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .restart local v13    # "frameIntervalNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_249
    move-exception v0

    move-object/from16 v28, v9

    move-wide v10, v11

    move-wide v8, v13

    .end local v13    # "frameIntervalNanos":J
    .end local p1    # "frameTimeNanos":J
    .restart local v5    # "frameTimeNanos":J
    .restart local v8    # "frameIntervalNanos":J
    :goto_24e
    :try_start_24e
    monitor-exit v28
    :try_end_24f
    .catchall {:try_start_24e .. :try_end_24f} :catchall_252

    .end local v2    # "resynced":Z
    .end local v5    # "frameTimeNanos":J
    .end local v8    # "frameIntervalNanos":J
    .end local p0    # "this":Landroid/view/Choreographer;
    .end local p3    # "frame":I
    .end local p4    # "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :try_start_24f
    throw v0
    :try_end_250
    .catchall {:try_start_24f .. :try_end_250} :catchall_250

    .line 1059
    .end local v7    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .restart local v2    # "resynced":Z
    .restart local v5    # "frameTimeNanos":J
    .restart local v8    # "frameIntervalNanos":J
    .restart local p0    # "this":Landroid/view/Choreographer;
    .restart local p3    # "frame":I
    .restart local p4    # "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :catchall_250
    move-exception v0

    goto :goto_257

    .line 1029
    .restart local v7    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    :catchall_252
    move-exception v0

    goto :goto_24e

    .line 1059
    .end local v5    # "frameTimeNanos":J
    .end local v7    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .end local v8    # "frameIntervalNanos":J
    .restart local v13    # "frameIntervalNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_254
    move-exception v0

    move-wide v10, v11

    move-wide v8, v13

    .end local v13    # "frameIntervalNanos":J
    .end local p1    # "frameTimeNanos":J
    .restart local v5    # "frameTimeNanos":J
    .restart local v8    # "frameIntervalNanos":J
    :goto_257
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1060
    if-eqz v2, :cond_25f

    .line 1061
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    :cond_25f
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1064
    throw v0
.end method

.method doScheduleCallback(I)V
    .registers 6
    .param p1, "callbackType"    # I

    .line 1165
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_18

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1168
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1169
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 1172
    .end local v1    # "now":J
    :cond_18
    monitor-exit v0

    .line 1173
    return-void

    .line 1172
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method doScheduleVsync()V
    .registers 3

    .line 1157
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1158
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_a

    .line 1159
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1161
    :cond_a
    monitor-exit v0

    .line 1162
    return-void

    .line 1161
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 535
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 536
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public getFrameDeadline()J
    .registers 3

    .line 895
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-wide v0
.end method

.method public getFrameIntervalNanos()J
    .registers 4

    .line 526
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_3
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    monitor-exit v0

    return-wide v1

    .line 528
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFrameTime()J
    .registers 5

    .line 810
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .registers 4

    .line 823
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_14

    .line 828
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_e

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_12

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_12
    monitor-exit v0

    return-wide v1

    .line 825
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Choreographer;
    throw v1

    .line 829
    .restart local p0    # "this":Landroid/view/Choreographer;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getFramesSinceSTB()J
    .registers 3

    .line 924
    iget-wide v0, p0, Landroid/view/Choreographer;->mFramesSinceSTB:J

    return-wide v0
.end method

.method public getLastFrameTimeNanos()J
    .registers 4

    .line 839
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_3
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_a

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_e

    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_e
    monitor-exit v0

    return-wide v1

    .line 841
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method getSTBCount()J
    .registers 3

    .line 911
    iget-wide v0, p0, Landroid/view/Choreographer;->mSTBCount:J

    return-wide v0
.end method

.method public getVsyncId()J
    .registers 3

    .line 884
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    return-wide v0
.end method

.method invalidate()V
    .registers 1

    .line 442
    invoke-direct {p0}, Landroid/view/Choreographer;->dispose()V

    .line 443
    return-void
.end method

.method isTheLooperSame(Landroid/os/Looper;)Z
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 450
    iget-object v0, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 10
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 556
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 557
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 8
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 577
    if-eqz p2, :cond_13

    .line 580
    if-ltz p1, :cond_b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_b

    .line 584
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 585
    return-void

    .line 581
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 728
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 729
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 10
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .line 744
    if-eqz p1, :cond_c

    .line 748
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 750
    return-void

    .line 745
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/view/Choreographer$VsyncCallback;

    .line 672
    if-eqz p1, :cond_d

    .line 676
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 677
    return-void

    .line 673
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 695
    if-ltz p1, :cond_9

    const/4 v0, 0x4

    if-gt p1, v0, :cond_9

    .line 699
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 700
    return-void

    .line 696
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 761
    if-eqz p1, :cond_9

    .line 765
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 766
    return-void

    .line 762
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$VsyncCallback;

    .line 776
    if-eqz p1, :cond_9

    .line 780
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 781
    return-void

    .line 777
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resetSTBCount()V
    .registers 3

    .line 915
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/Choreographer;->mSTBCount:J

    .line 916
    return-void
.end method

.method public scheduleVsyncSS(I)V
    .registers 4
    .param p1, "solutionType"    # I

    .line 1189
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_3
    iget-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v1, p1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->onVsyncSS(I)V

    .line 1191
    monitor-exit v0

    .line 1192
    return-void

    .line 1191
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setActivityState(Z)V
    .registers 4
    .param p1, "isFg"    # Z

    .line 1176
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_3
    iput-boolean p1, p0, Landroid/view/Choreographer;->mIsFg:Z

    .line 1178
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    .line 1179
    monitor-exit v0

    .line 1180
    return-void

    .line 1179
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setEnabledDebugCallback(ZLjava/util/function/BiConsumer;II)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p3, "callStackCnt"    # I
    .param p4, "dispatchThresholdMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1237
    .local p2, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/String;>;"
    iput-boolean p1, p0, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    .line 1238
    iput-object p2, p0, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    .line 1239
    iput p3, p0, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    .line 1240
    iput p4, p0, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    .line 1241
    return-void
.end method

.method setFPSDivisor(I)V
    .registers 2
    .param p1, "divisor"    # I

    .line 899
    if-gtz p1, :cond_3

    const/4 p1, 0x1

    .line 900
    :cond_3
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 901
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    .line 902
    return-void
.end method

.method public setFlingSTBFlag(ZI)V
    .registers 4
    .param p1, "STBFlag"    # Z
    .param p2, "index"    # I

    .line 934
    iget-object v0, p0, Landroid/view/Choreographer;->mFlingSTBFlag:[Z

    aput-boolean p1, v0, p2

    .line 935
    return-void
.end method

.method public setIsFg(Z)V
    .registers 9
    .param p1, "isFg"    # Z

    .line 595
    iget-boolean v0, p0, Landroid/view/Choreographer;->mIsFg:Z

    if-ne v0, p1, :cond_5

    .line 596
    return-void

    .line 598
    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimationHandler;->getMaxAnimationCallbackDuration()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    .line 599
    .local v0, "delayValue":J
    iget-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 600
    :try_start_13
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->removeMessages(I)V

    .line 601
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_3c

    .line 602
    iput-boolean v5, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    .line 603
    iget-object v6, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6}, Landroid/view/Choreographer$FrameHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 604
    .local v6, "msg":Landroid/os/Message;
    iput v4, v6, Landroid/os/Message;->what:I

    .line 605
    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v3, v5

    :goto_2b
    iput v3, v6, Landroid/os/Message;->arg1:I

    .line 606
    invoke-virtual {v6, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 607
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 608
    nop

    .end local v6    # "msg":Landroid/os/Message;
    goto :goto_42

    .line 609
    :cond_3c
    iput-boolean p1, p0, Landroid/view/Choreographer;->mIsFg:Z

    .line 610
    iput-boolean v5, p0, Landroid/view/Choreographer;->mIsFirstBBA:Z

    .line 611
    iput-boolean v3, p0, Landroid/view/Choreographer;->mBgWaitingDelaySetting:Z

    .line 613
    :goto_42
    monitor-exit v2

    .line 614
    return-void

    .line 613
    :catchall_44
    move-exception v3

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_44

    throw v3
.end method
