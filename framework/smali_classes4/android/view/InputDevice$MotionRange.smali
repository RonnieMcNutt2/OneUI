.class public final Landroid/view/InputDevice$MotionRange;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionRange"
.end annotation


# instance fields
.field private mAxis:I

.field private mFlat:F

.field private mFuzz:F

.field private mMax:F

.field private mMin:F

.field private mResolution:F

.field private mSource:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I
    .registers 1

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F
    .registers 1

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F
    .registers 1

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F
    .registers 1

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F
    .registers 1

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F
    .registers 1

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I
    .registers 1

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    return p0
.end method

.method private constructor <init>(IIFFFFF)V
    .registers 8
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    iput p1, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    .line 1377
    iput p2, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    .line 1378
    iput p3, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    .line 1379
    iput p4, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    .line 1380
    iput p5, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    .line 1381
    iput p6, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    .line 1382
    iput p7, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    .line 1383
    return-void
.end method

.method synthetic constructor <init>(IIFFFFFLandroid/view/InputDevice$MotionRange-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFF)V

    return-void
.end method


# virtual methods
.method public getAxis()I
    .registers 2

    .line 1390
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    return v0
.end method

.method public getFlat()F
    .registers 2

    .line 1447
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return v0
.end method

.method public getFuzz()F
    .registers 2

    .line 1459
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return v0
.end method

.method public getMax()F
    .registers 2

    .line 1427
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return v0
.end method

.method public getMin()F
    .registers 2

    .line 1419
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return v0
.end method

.method public getRange()F
    .registers 3

    .line 1435
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    iget v1, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getResolution()F
    .registers 2

    .line 1467
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return v0
.end method

.method public getSource()I
    .registers 2

    .line 1398
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    return v0
.end method

.method public isFromSource(I)Z
    .registers 3
    .param p1, "source"    # I

    .line 1411
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
