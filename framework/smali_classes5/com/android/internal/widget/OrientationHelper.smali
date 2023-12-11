.class public abstract Lcom/android/internal/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .registers 3
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/OrientationHelper;->mLastTotalSpace:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/OrientationHelper;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/OrientationHelper;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
    .registers 2
    .param p0, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 251
    new-instance v0, Lcom/android/internal/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OrientationHelper$1;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;I)Lcom/android/internal/widget/OrientationHelper;
    .registers 4
    .param p0, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p1, "orientation"    # I

    .line 234
    packed-switch p1, :pswitch_data_16

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_c
    invoke-static {p0}, Lcom/android/internal/widget/OrientationHelper;->createVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_11
    invoke-static {p0}, Lcom/android/internal/widget/OrientationHelper;->createHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public static createVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
    .registers 2
    .param p0, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 349
    new-instance v0, Lcom/android/internal/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OrientationHelper$2;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .registers 3

    .line 71
    const/high16 v0, -0x80000000

    iget v1, p0, Lcom/android/internal/widget/OrientationHelper;->mLastTotalSpace:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_f

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    :goto_f
    return v0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/OrientationHelper;->mLastTotalSpace:I

    .line 58
    return-void
.end method
