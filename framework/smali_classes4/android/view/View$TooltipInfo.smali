.class Landroid/view/View$TooltipInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipInfo"
.end annotation


# instance fields
.field mAnchorX:I

.field mAnchorY:I

.field mHideTooltipRunnable:Ljava/lang/Runnable;

.field mHoverSlop:I

.field mSemIsTooltipNull:Z

.field mSemSetTooltipPosition:Z

.field mSemX:I

.field mSemY:I

.field mShowTooltipRunnable:Ljava/lang/Runnable;

.field mTooltipFromLongClick:Z

.field mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$mclearAnchorPos(Landroid/view/View$TooltipInfo;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/View$TooltipInfo;->clearAnchorPos()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAnchorPos(Landroid/view/View$TooltipInfo;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$TooltipInfo;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 4981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5026
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$TooltipInfo;->mSemIsTooltipNull:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$TooltipInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/View$TooltipInfo;-><init>()V

    return-void
.end method

.method private clearAnchorPos()V
    .registers 2

    .line 5057
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 5058
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 5059
    return-void
.end method

.method private updateAnchorPos(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 5043
    .local v0, "newAnchorX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 5044
    .local v1, "newAnchorY":I
    iget v2, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v2, v3, :cond_24

    iget v2, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    sub-int v2, v1, v2

    .line 5045
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v2, v3, :cond_24

    .line 5046
    const/4 v2, 0x0

    return v2

    .line 5048
    :cond_24
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 5049
    iput v1, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 5050
    const/4 v2, 0x1

    return v2
.end method
