.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "ImageFloatingTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mHasImage:Z

.field private mImageEndMargin:I

.field private mIndentLines:I

.field private mLayoutMaxLines:I

.field private mMaxLinesForHeight:I

.field private mResolvedDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 42
    iput-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 46
    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 47
    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    .line 65
    return-void
.end method

.method private invalidateTextIfIndenting()V
    .registers 2

    .line 177
    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v0, :cond_e

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->requestLayout()V

    .line 182
    :cond_e
    return-void
.end method

.method private setHasImageAndNumIndentLines(ZI)V
    .registers 5
    .param p1, "hasImage"    # Z
    .param p2, "lines"    # I

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    goto :goto_9

    :cond_8
    move v0, v1

    .line 202
    .local v0, "oldEffectiveLines":I
    :goto_9
    if-eqz p1, :cond_c

    move v1, p2

    .line 203
    .local v1, "newEffectiveLines":I
    :cond_c
    iput p2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 204
    iput-boolean p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    .line 205
    if-eq v0, v1, :cond_18

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->requestLayout()V

    .line 210
    :cond_18
    return-void
.end method


# virtual methods
.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .registers 16
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 72
    .local v0, "transformationMethod":Landroid/text/method/TransformationMethod;
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 73
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_e

    .line 74
    invoke-interface {v0, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 76
    :cond_e
    if-nez v1, :cond_13

    const-string v2, ""

    goto :goto_14

    :cond_13
    move-object v2, v1

    :goto_14
    move-object v1, v2

    .line 77
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 77
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingExtra()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingMultiplier()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getIncludeFontPadding()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 83
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 85
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 87
    .local v2, "builder":Landroid/text/StaticLayout$Builder;
    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    if-lez v4, :cond_57

    .line 88
    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .local v4, "maxLines":I
    goto :goto_65

    .line 90
    .end local v4    # "maxLines":I
    :cond_57
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v4

    if-ltz v4, :cond_62

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v4

    goto :goto_65

    :cond_62
    const v4, 0x7fffffff

    .line 92
    .restart local v4    # "maxLines":I
    :goto_65
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 93
    iput v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    .line 94
    if-eqz p5, :cond_73

    .line 95
    invoke-virtual {v2, p6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    .line 96
    invoke-virtual {v5, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 100
    :cond_73
    const/4 v5, 0x0

    .line 101
    .local v5, "margins":[I
    iget-boolean v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    if-eqz v6, :cond_8b

    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v6, :cond_8b

    .line 102
    add-int/2addr v6, v3

    new-array v5, v6, [I

    .line 103
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_80
    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-ge v6, v7, :cond_8b

    .line 104
    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    aput v7, v5, v6

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 107
    .end local v6    # "i":I
    :cond_8b
    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    const/4 v7, 0x0

    if-ne v6, v3, :cond_94

    .line 108
    invoke-virtual {v2, v5, v7}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    goto :goto_97

    .line 110
    :cond_94
    invoke-virtual {v2, v7, v5}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    .line 113
    :goto_97
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    return-object v3
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 139
    .local v0, "availableHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_20

    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    .line 145
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 147
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v2

    if-le v2, v0, :cond_59

    .line 150
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 151
    .local v2, "maxLines":I
    :goto_31
    const/4 v3, 0x1

    if-le v2, v3, :cond_3f

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    if-le v3, v0, :cond_3f

    .line 152
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 154
    :cond_3f
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    if-lez v3, :cond_4d

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 158
    :cond_4d
    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eq v2, v3, :cond_59

    .line 159
    iput v2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 164
    .end local v2    # "maxLines":I
    :cond_59
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 168
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 170
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    if-eq p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 171
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 172
    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->invalidateTextIfIndenting()V

    .line 174
    :cond_12
    return-void
.end method

.method public setHasImage(Z)V
    .registers 3
    .param p1, "hasImage"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 189
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImageAndNumIndentLines(ZI)V

    .line 190
    return-void
.end method

.method public setImageEndMargin(I)V
    .registers 3
    .param p1, "imageEndMargin"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 121
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    if-eq v0, p1, :cond_9

    .line 122
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    .line 123
    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->invalidateTextIfIndenting()V

    .line 125
    :cond_9
    return-void
.end method

.method public setImageEndMarginDp(F)V
    .registers 3
    .param p1, "imageEndMarginDp"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 132
    nop

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setImageEndMargin(I)V

    .line 134
    return-void
.end method

.method public setNumIndentLines(I)V
    .registers 3
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 197
    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImageAndNumIndentLines(ZI)V

    .line 198
    return-void
.end method
