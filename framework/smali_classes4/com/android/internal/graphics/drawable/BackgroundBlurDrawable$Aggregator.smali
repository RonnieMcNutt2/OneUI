.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aggregator"
.end annotation


# instance fields
.field private final mDrawables:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameRtUpdates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHasUiUpdates:Z

.field private mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field private mLastFrameNumber:J

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mRtLock:Ljava/lang/Object;

.field private mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field private mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public static synthetic $r8$lambda$JcO4hor7FoQlbU1QYyeg2bjdAdg(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->lambda$registerPreDrawListener$1()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZjOAxFraUOAlrPqRDsZTLYw4hNM(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->lambda$registerPreDrawListener$0([Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    .line 331
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    .line 332
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    .line 334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 337
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->setViewRoot(Landroid/view/ViewRootImpl;)V

    .line 344
    return-void
.end method

.method private handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V
    .registers 7
    .param p1, "frameNumber"    # J
    .param p3, "blurRegions"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p4, "forceUpdate"    # Z

    .line 548
    nop

    .line 549
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->getBlurRegionsForFrameLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)[[F

    move-result-object v0

    .line 550
    .local v0, "blurRegionsArray":[[F
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_e

    .line 551
    invoke-virtual {v1, v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchBlurRegions([[FJ)V

    .line 553
    :cond_e
    return-void
.end method

.method private synthetic lambda$registerPreDrawListener$0([Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V
    .registers 7
    .param p1, "blurRegionsForNextFrame"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p2, "hasUiUpdates"    # Z
    .param p3, "frame"    # J

    .line 418
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iput-wide p3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    .line 420
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 421
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    .line 423
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic lambda$registerPreDrawListener$1()Z
    .registers 5

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasUpdates()Z

    move-result v0

    .line 414
    .local v0, "hasUiUpdates":Z
    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 415
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->getBlurRegionsCopyForRT()[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    move-result-object v1

    .line 417
    .local v1, "blurRegionsForNextFrame":[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v3, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 426
    .end local v1    # "blurRegionsForNextFrame":[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 427
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 428
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 429
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 431
    :cond_3a
    const/4 v1, 0x1

    return v1
.end method

.method private registerPreDrawListener()V
    .registers 3

    .line 411
    new-instance v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 434
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 435
    return-void
.end method


# virtual methods
.method public createBackgroundBlurDrawable(Landroid/content/Context;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 355
    new-instance v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable-IA;)V

    .line 356
    .local v0, "drawable":Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 358
    return-object v0
.end method

.method public getBlurRegionsCopyForRT()[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .registers 5

    .line 490
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    if-eqz v0, :cond_2e

    .line 491
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 493
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    new-instance v2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iget-object v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    aput-object v2, v1, v0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 495
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 498
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    return-object v0
.end method

.method public getBlurRegionsForFrameLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)[[F
    .registers 9
    .param p1, "frameNumber"    # J
    .param p3, "blurRegionsForFrame"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p4, "forceUpdate"    # Z

    .line 510
    const/4 v0, 0x0

    if-nez p4, :cond_17

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    .line 511
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_17

    .line 512
    :cond_15
    const/4 v0, 0x0

    return-object v0

    .line 520
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_4a

    .line 521
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 522
    .local v1, "frameUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 523
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 524
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 526
    .end local v1    # "frameUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    .end local v2    # "i":I
    :cond_49
    goto :goto_17

    .line 528
    :cond_4a
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 529
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blur regions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_71
    array-length v0, p3

    new-array v0, v0, [[F

    .line 533
    .local v0, "blurRegionsArray":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_75
    array-length v2, v0

    if-ge v1, v2, :cond_96

    .line 534
    aget-object v2, p3, v1

    invoke-virtual {v2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->toFloatArray()[F

    move-result-object v2

    aput-object v2, v0, v1

    .line 535
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 536
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p3, v1

    invoke-virtual {v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 539
    .end local v1    # "i":I
    :cond_96
    return-object v0
.end method

.method public hasRegions()Z
    .registers 4

    .line 477
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 478
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasRegions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_26
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method public hasUpdates()Z
    .registers 4

    .line 464
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 465
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasUpdates "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_22
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    return v0
.end method

.method onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .registers 8
    .param p1, "drawable"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 366
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    if-lez v0, :cond_18

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmVisible(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 368
    .local v0, "shouldBeDrawn":Z
    :goto_19
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 371
    .local v2, "isDrawn":Z
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 372
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBlurDrawableUpdated dr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", shouldBeDrawn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isDrawn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    .line 375
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 376
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_74
    if-eqz v0, :cond_c1

    .line 381
    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 382
    if-nez v2, :cond_a0

    .line 383
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 385
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 388
    :cond_a0
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 389
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 392
    :cond_c1
    if-nez v0, :cond_ec

    if-eqz v2, :cond_ec

    .line 393
    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 394
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 395
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 396
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_ec
    :goto_ec
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_103

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_103

    .line 404
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_103

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-eqz v1, :cond_103

    .line 406
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->registerPreDrawListener()V

    .line 408
    :cond_103
    return-void
.end method

.method onRenderNodePositionChanged(JLjava/lang/Runnable;)V
    .registers 8
    .param p1, "frameNumber"    # J
    .param p3, "update"    # Ljava/lang/Runnable;

    .line 441
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 443
    .local v1, "frameRtUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    if-nez v1, :cond_18

    .line 444
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 445
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 447
    :cond_18
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 449
    iget-wide v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_27

    .line 452
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    .line 454
    .end local v1    # "frameRtUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    :cond_27
    monitor-exit v0

    .line 456
    return-void

    .line 454
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setViewRoot(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 347
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 348
    return-void
.end method
