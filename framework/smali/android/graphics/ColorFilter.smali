.class public Landroid/graphics/ColorFilter;
.super Ljava/lang/Object;
.source "ColorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorFilter$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private mCleaner:Ljava/lang/Runnable;

.field private mNativeInstance:J


# direct methods
.method static bridge synthetic -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/ColorFilter;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeGetFinalizer()J
.end method


# virtual methods
.method createNativeInstance()J
    .registers 3

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method final declared-synchronized discardNativeInstance()V
    .registers 5

    monitor-enter p0

    .line 52
    :try_start_1
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 55
    iput-wide v2, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 57
    .end local p0    # "this":Landroid/graphics/ColorFilter;
    :cond_13
    monitor-exit p0

    return-void

    .line 51
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getNativeInstance()J
    .registers 5

    monitor-enter p0

    .line 61
    :try_start_1
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 62
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->createNativeInstance()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 64
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 68
    sget-object v0, Landroid/graphics/ColorFilter$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 72
    .end local p0    # "this":Landroid/graphics/ColorFilter;
    :cond_1d
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-wide v0

    .line 60
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
