.class public Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver$VsyncEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# instance fields
.field public deadline:J

.field public expectedPresentationTime:J

.field public vsyncId:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 182
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 186
    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    .line 161
    return-void
.end method

.method constructor <init>(JJJ)V
    .registers 9
    .param p1, "vsyncId"    # J
    .param p3, "expectedPresentationTime"    # J
    .param p5, "deadline"    # J

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 182
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 186
    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    .line 166
    iput-wide p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 167
    iput-wide p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 168
    iput-wide p5, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    .line 169
    return-void
.end method


# virtual methods
.method copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;)V
    .registers 4
    .param p1, "other"    # Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    .line 172
    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 173
    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 174
    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    .line 175
    return-void
.end method
