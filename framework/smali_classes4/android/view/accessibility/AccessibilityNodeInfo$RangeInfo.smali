.class public final Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeInfo"
.end annotation


# static fields
.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2


# instance fields
.field private mCurrent:F

.field private mMax:F

.field private mMin:F

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrent(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMax(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMin(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return p0
.end method

.method public constructor <init>(IFFF)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "current"    # F

    .line 5751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5752
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 5753
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 5754
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 5755
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 5756
    return-void
.end method

.method private clear()V
    .registers 2

    .line 5808
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 5809
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 5810
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 5811
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 5812
    return-void
.end method

.method public static obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 5
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5738
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    return-object v0
.end method


# virtual methods
.method public getCurrent()F
    .registers 2

    .line 5795
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return v0
.end method

.method public getMax()F
    .registers 2

    .line 5786
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return v0
.end method

.method public getMin()F
    .registers 2

    .line 5777
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return v0
.end method

.method public getType()I
    .registers 2

    .line 5768
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return v0
.end method

.method recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5805
    return-void
.end method
