.class Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "SemHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .registers 2

    .line 3896
    iget v0, p0, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .registers 2

    .line 3892
    iget v0, p0, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .registers 3
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .line 3887
    iput p1, p0, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 3888
    iput p2, p0, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 3889
    return-void
.end method
