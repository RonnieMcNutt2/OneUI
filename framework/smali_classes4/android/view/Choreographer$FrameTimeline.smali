.class public Landroid/view/Choreographer$FrameTimeline;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# instance fields
.field private mDeadlineNanos:J

.field private mExpectedPresentationTimeNanos:J

.field private mInCallback:Z

.field private mVsyncId:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    return-wide v0
.end method

.method constructor <init>()V
    .registers 3

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    .line 1278
    iput-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentationTimeNanos:J

    .line 1279
    iput-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameTimeline;->mInCallback:Z

    .line 1284
    return-void
.end method

.method private checkInCallback()V
    .registers 3

    .line 1291
    iget-boolean v0, p0, Landroid/view/Choreographer$FrameTimeline;->mInCallback:Z

    if-eqz v0, :cond_5

    .line 1295
    return-void

    .line 1292
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FrameTimeline is not valid outside of the vsync callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDeadlineNanos()J
    .registers 3

    .line 1325
    invoke-direct {p0}, Landroid/view/Choreographer$FrameTimeline;->checkInCallback()V

    .line 1326
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    return-wide v0
.end method

.method public getExpectedPresentationTimeNanos()J
    .registers 3

    .line 1317
    invoke-direct {p0}, Landroid/view/Choreographer$FrameTimeline;->checkInCallback()V

    .line 1318
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentationTimeNanos:J

    return-wide v0
.end method

.method public getVsyncId()J
    .registers 3

    .line 1308
    invoke-direct {p0}, Landroid/view/Choreographer$FrameTimeline;->checkInCallback()V

    .line 1309
    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    return-wide v0
.end method

.method setInCallback(Z)V
    .registers 2
    .param p1, "inCallback"    # Z

    .line 1287
    iput-boolean p1, p0, Landroid/view/Choreographer$FrameTimeline;->mInCallback:Z

    .line 1288
    return-void
.end method

.method update(JJJ)V
    .registers 7
    .param p1, "vsyncId"    # J
    .param p3, "expectedPresentationTimeNanos"    # J
    .param p5, "deadlineNanos"    # J

    .line 1298
    iput-wide p1, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    .line 1299
    iput-wide p3, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentationTimeNanos:J

    .line 1300
    iput-wide p5, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    .line 1301
    return-void
.end method
