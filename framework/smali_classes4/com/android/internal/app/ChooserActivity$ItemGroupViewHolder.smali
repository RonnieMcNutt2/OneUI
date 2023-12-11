.class abstract Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemGroupViewHolder"
.end annotation


# instance fields
.field protected final mCells:[Landroid/view/View;

.field private final mColumnCount:I

.field private mItemIndices:[I

.field protected mMeasuredRowHeight:I


# direct methods
.method constructor <init>(ILandroid/view/View;I)V
    .registers 5
    .param p1, "cellCount"    # I
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .line 3769
    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;-><init>(Landroid/view/View;I)V

    .line 3770
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    .line 3771
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    .line 3772
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    .line 3773
    return-void
.end method


# virtual methods
.method abstract addView(ILandroid/view/View;)Landroid/view/ViewGroup;
.end method

.method public getColumnCount()I
    .registers 2

    .line 3786
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    return v0
.end method

.method public getItemIndex(I)I
    .registers 3
    .param p1, "itemIndex"    # I

    .line 3804
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMeasuredRowHeight()I
    .registers 2

    .line 3796
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    return v0
.end method

.method abstract getRow(I)Landroid/view/ViewGroup;
.end method

.method abstract getRowByIndex(I)Landroid/view/ViewGroup;
.end method

.method public getView(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 3808
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method abstract getViewGroup()Landroid/view/ViewGroup;
.end method

.method public measure()V
    .registers 3

    .line 3790
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3791
    .local v0, "spec":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 3792
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    .line 3793
    return-void
.end method

.method public setItemIndex(II)V
    .registers 4
    .param p1, "itemIndex"    # I
    .param p2, "listIndex"    # I

    .line 3800
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aput p2, v0, p1

    .line 3801
    return-void
.end method

.method abstract setViewVisibility(II)V
.end method
