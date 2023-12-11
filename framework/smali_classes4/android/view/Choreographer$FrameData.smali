.class public Landroid/view/Choreographer$FrameData;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameData"
.end annotation


# instance fields
.field private mFrameTimeNanos:J

.field private mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

.field private mInCallback:Z

.field private mPreferredFrameTimelineIndex:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method constructor <init>()V
    .registers 2

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    .line 1342
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    .line 1343
    return-void
.end method

.method private allocateFrameTimelines(I)V
    .registers 5
    .param p1, "length"    # I

    .line 1381
    new-array v0, p1, [Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    .line 1382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 1383
    new-instance v2, Landroid/view/Choreographer$FrameTimeline;

    invoke-direct {v2}, Landroid/view/Choreographer$FrameTimeline;-><init>()V

    aput-object v2, v1, v0

    .line 1382
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1385
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private checkInCallback()V
    .registers 3

    .line 1374
    iget-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    if-eqz v0, :cond_5

    .line 1378
    return-void

    .line 1375
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FrameData is not valid outside of the vsync callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFrameTimeNanos()J
    .registers 3

    .line 1347
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1348
    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method public getFrameTimelines()[Landroid/view/Choreographer$FrameTimeline;
    .registers 2

    .line 1355
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1356
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method public getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;
    .registers 3

    .line 1362
    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    .line 1363
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method setInCallback(Z)V
    .registers 5
    .param p1, "inCallback"    # Z

    .line 1367
    iput-boolean p1, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    .line 1368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 1369
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/Choreographer$FrameTimeline;->setInCallback(Z)V

    .line 1368
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1371
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;
    .registers 14
    .param p1, "frameTimeNanos"    # J
    .param p3, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1393
    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    if-eqz v0, :cond_35

    .line 1397
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v0, v0

    iget v1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    if-eq v0, v1, :cond_10

    .line 1398
    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    .line 1400
    :cond_10
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1401
    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    .line 1402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v2, v1

    if-ge v0, v2, :cond_30

    .line 1403
    iget-object v1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v1, v1, v0

    .line 1405
    .local v1, "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    iget-object v2, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v3, v2, v0

    iget-wide v4, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iget-wide v8, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    invoke-virtual/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;->update(JJJ)V

    .line 1402
    .end local v1    # "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1408
    .end local v0    # "i":I
    :cond_30
    iget v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v1, v0

    return-object v0

    .line 1394
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vsync event timelines length must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;
    .registers 13
    .param p1, "frameTimeNanos"    # J
    .param p3, "displayEventReceiver"    # Landroid/view/DisplayEventReceiver;
    .param p4, "jitterNanos"    # J

    .line 1418
    const/4 v0, 0x0

    .line 1419
    .local v0, "newPreferredIndex":I
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v2, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v1

    add-long/2addr v1, p4

    .line 1424
    .local v1, "minimumDeadline":J
    :goto_c
    iget-object v3, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_20

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_20

    .line 1426
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1429
    :cond_20
    iget-object v3, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v3

    .line 1430
    .local v3, "newPreferredDeadline":J
    cmp-long v5, v3, v1

    if-gez v5, :cond_35

    .line 1431
    nop

    .line 1432
    invoke-virtual {p3}, Landroid/view/DisplayEventReceiver;->getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v5

    .line 1433
    .local v5, "latestVsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    invoke-virtual {p0, p1, p2, v5}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    .line 1434
    .end local v5    # "latestVsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    goto :goto_38

    .line 1435
    :cond_35
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/Choreographer$FrameData;->update(JI)V

    .line 1437
    :goto_38
    iget-object v5, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v6, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v5, v5, v6

    return-object v5
.end method

.method update(JI)V
    .registers 4
    .param p1, "frameTimeNanos"    # J
    .param p3, "newPreferredFrameTimelineIndex"    # I

    .line 1441
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1442
    iput p3, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    .line 1443
    return-void
.end method
