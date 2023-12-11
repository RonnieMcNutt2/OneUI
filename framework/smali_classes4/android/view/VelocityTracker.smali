.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$VelocityTrackerStrategy;,
        Landroid/view/VelocityTracker$VelocityTrackableMotionEventAxis;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final STRATEGIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VELOCITY_TRACKER_STRATEGY_DEFAULT:I = -0x1

.field public static final VELOCITY_TRACKER_STRATEGY_IMPULSE:I = 0x0

.field public static final VELOCITY_TRACKER_STRATEGY_INT1:I = 0x7

.field public static final VELOCITY_TRACKER_STRATEGY_INT2:I = 0x8

.field public static final VELOCITY_TRACKER_STRATEGY_LEGACY:I = 0x9

.field public static final VELOCITY_TRACKER_STRATEGY_LSQ1:I = 0x1

.field public static final VELOCITY_TRACKER_STRATEGY_LSQ2:I = 0x2

.field public static final VELOCITY_TRACKER_STRATEGY_LSQ3:I = 0x3

.field public static final VELOCITY_TRACKER_STRATEGY_WLSQ2_CENTRAL:I = 0x5

.field public static final VELOCITY_TRACKER_STRATEGY_WLSQ2_DELTA:I = 0x4

.field public static final VELOCITY_TRACKER_STRATEGY_WLSQ2_RECENT:I = 0x6

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPtr:J

.field private final mStrategy:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 41
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 164
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    .line 197
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "impulse"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lsq1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v2, "lsq2"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lsq3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wlsq2-delta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wlsq2-central"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wlsq2-recent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "int1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "int2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "legacy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method private constructor <init>(I)V
    .registers 4
    .param p1, "strategy"    # I

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    .line 289
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "strategyProperty":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1e

    .line 295
    :cond_17
    invoke-static {v0}, Landroid/view/VelocityTracker;->toStrategyId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/view/VelocityTracker;->mStrategy:I

    goto :goto_20

    .line 293
    :cond_1e
    :goto_1e
    iput p1, p0, Landroid/view/VelocityTracker;->mStrategy:I

    .line 297
    .end local v0    # "strategyProperty":Ljava/lang/String;
    :goto_20
    goto :goto_23

    .line 299
    :cond_21
    iput p1, p0, Landroid/view/VelocityTracker;->mStrategy:I

    .line 301
    :goto_23
    iget v0, p0, Landroid/view/VelocityTracker;->mStrategy:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeInitialize(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    .line 302
    return-void
.end method

.method private static native nativeAddMovement(JLandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeComputeCurrentVelocity(JIF)V
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetVelocity(JII)F
.end method

.method private static native nativeInitialize(I)J
.end method

.method private static native nativeIsAxisSupported(I)Z
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .registers 3

    .line 228
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    .line 229
    .local v0, "instance":Landroid/view/VelocityTracker;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_12

    .line 230
    :cond_c
    new-instance v1, Landroid/view/VelocityTracker;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/view/VelocityTracker;-><init>(I)V

    .line 229
    :goto_12
    return-object v1
.end method

.method public static obtain(I)Landroid/view/VelocityTracker;
    .registers 2
    .param p0, "strategy"    # I

    .line 262
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-direct {v0, p0}, Landroid/view/VelocityTracker;-><init>(I)V

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .registers 3
    .param p0, "strategy"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    if-nez p0, :cond_7

    .line 247
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0

    .line 249
    :cond_7
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-static {p0}, Landroid/view/VelocityTracker;->toStrategyId(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/VelocityTracker;-><init>(I)V

    return-object v0
.end method

.method private static toStrategyId(Ljava/lang/String;)I
    .registers 3
    .param p0, "strStrategy"    # Ljava/lang/String;

    .line 213
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 214
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 216
    :cond_13
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 351
    if-eqz p1, :cond_8

    .line 354
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(JLandroid/view/MotionEvent;)V

    .line 355
    return-void

    .line 352
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 3

    .line 338
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeClear(J)V

    .line 339
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 5
    .param p1, "units"    # I

    .line 364
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1, p1, v2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    .line 365
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 5
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .line 383
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    .line 384
    return-void
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 307
    :try_start_0
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 308
    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeDispose(J)V

    .line 309
    iput-wide v2, p0, Landroid/view/VelocityTracker;->mPtr:J
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 312
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 313
    throw v0
.end method

.method public getAxisVelocity(I)F
    .registers 5
    .param p1, "axis"    # I

    .line 467
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Landroid/view/VelocityTracker;->nativeGetVelocity(JII)F

    move-result v0

    return v0
.end method

.method public getAxisVelocity(II)F
    .registers 5
    .param p1, "axis"    # I
    .param p2, "id"    # I

    .line 452
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeGetVelocity(JII)F

    move-result v0

    return v0
.end method

.method public getStrategyId()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/view/VelocityTracker;->mStrategy:I

    return v0
.end method

.method public getXVelocity()F
    .registers 2

    .line 393
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .registers 5
    .param p1, "id"    # I

    .line 414
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/VelocityTracker;->nativeGetVelocity(JII)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .registers 2

    .line 403
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .registers 5
    .param p1, "id"    # I

    .line 425
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/view/VelocityTracker;->nativeGetVelocity(JII)F

    move-result v0

    return v0
.end method

.method public isAxisSupported(I)Z
    .registers 3
    .param p1, "axis"    # I

    .line 331
    invoke-static {p1}, Landroid/view/VelocityTracker;->nativeIsAxisSupported(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 3

    .line 270
    iget v0, p0, Landroid/view/VelocityTracker;->mStrategy:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 271
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 272
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 274
    :cond_d
    return-void
.end method
