.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static sCompatibilityDone:Z

.field private static sRemeasureWeightedChildren:Z


# instance fields
.field private final mAllowInconsistentMeasurement:Z

.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 254
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 155
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 161
    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 228
    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 256
    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_2a

    if-eqz p1, :cond_2a

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 260
    .local v3, "targetSdkVersion":I
    const/16 v4, 0x1c

    if-lt v3, v4, :cond_25

    move v4, v0

    goto :goto_26

    :cond_25
    move v4, v2

    :goto_26
    sput-boolean v4, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    .line 262
    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 265
    .end local v3    # "targetSdkVersion":I
    :cond_2a
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 267
    .local v3, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/LinearLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 270
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 271
    .local v4, "index":I
    if-ltz v4, :cond_44

    .line 272
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 275
    :cond_44
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 276
    if-ltz v4, :cond_4d

    .line 277
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 280
    :cond_4d
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 281
    .local v5, "baselineAligned":Z
    if-nez v5, :cond_57

    .line 282
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 285
    :cond_57
    const/4 v6, 0x4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 287
    nop

    .line 288
    const/4 v6, 0x3

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 290
    const/4 v1, 0x6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 292
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 293
    const/16 v1, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 294
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 297
    .local v1, "version":I
    const/16 v6, 0x17

    if-gt v1, v6, :cond_91

    goto :goto_92

    :cond_91
    move v0, v2

    :goto_92
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 299
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    return-void
.end method

.method private allViewsAreGoneAfter(I)Z
    .registers 7
    .param p1, "childIndex"    # I

    .line 787
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 788
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_1b

    .line 789
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 790
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_18

    .line 791
    const/4 v3, 0x0

    return v3

    .line 788
    .end local v2    # "child":Landroid/view/View;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 794
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private allViewsAreGoneBefore(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 774
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_17

    .line 775
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 776
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    .line 777
    const/4 v2, 0x0

    return v2

    .line 774
    .end local v1    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 780
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private forceUniformHeight(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1548
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1550
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3d

    .line 1551
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1552
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3a

    .line 1553
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1555
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    .line 1558
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1559
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1562
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1563
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1550
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1567
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1108
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3d

    .line 1109
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1110
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3a

    .line 1111
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1113
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    .line 1116
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1117
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1120
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1121
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1108
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1125
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .registers 5

    .line 466
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 467
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    .line 469
    return-object v1

    .line 466
    .end local v1    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 472
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasDividerAfterChildAt(I)Z
    .registers 5
    .param p1, "childIndex"    # I

    .line 759
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 761
    return v1

    .line 763
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneAfter(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 765
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    move v1, v2

    :cond_14
    return v1

    .line 767
    :cond_15
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method

.method private isShowingDividers()Z
    .registers 2

    .line 307
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1891
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1892
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2016
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 476
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 477
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    .line 478
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_3f

    .line 479
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 480
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 481
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 482
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 484
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_2f

    .line 485
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_39

    .line 487
    .end local v5    # "position":I
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 489
    .restart local v5    # "position":I
    :goto_39
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 478
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 494
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 495
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v2

    .line 497
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_5f

    .line 498
    if-eqz v1, :cond_52

    .line 499
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_7b

    .line 501
    .end local v3    # "position":I
    :cond_52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_7b

    .line 504
    .end local v3    # "position":I
    :cond_5f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 505
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_73

    .line 506
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_7b

    .line 508
    .end local v4    # "position":I
    :cond_73
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    .line 511
    .local v3, "position":I
    :goto_7b
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 513
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_7e
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 436
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 437
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 438
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 440
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 441
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 442
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 443
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 437
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "top":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 448
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 449
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    .line 450
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 451
    .local v2, "bottom":I
    if-nez v1, :cond_4b

    .line 452
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_5a

    .line 454
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_4b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 455
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    .line 457
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_5a
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 459
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_5d
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 516
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 517
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 516
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 518
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 519
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 522
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 523
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 522
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 525
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2027
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2028
    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2029
    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2030
    const-string/jumbo v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2031
    const-string/jumbo v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2032
    const-string/jumbo v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2033
    const-string/jumbo v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2034
    const-string v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2035
    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2036
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1992
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1993
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1994
    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1995
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1997
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1979
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2002
    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1e

    .line 2003
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 2004
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 2005
    :cond_11
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 2006
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2009
    :cond_1e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2021
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 7

    .line 586
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 587
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 590
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_65

    .line 595
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 598
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 599
    iget v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_21

    .line 601
    return v2

    .line 605
    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_29
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 617
    .local v2, "childTop":I
    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5a

    .line 618
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 619
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5a

    .line 620
    sparse-switch v3, :sswitch_data_6e

    goto :goto_5a

    .line 622
    :sswitch_3c
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v4, v5

    .line 623
    goto :goto_5a

    .line 626
    :sswitch_49
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 633
    .end local v3    # "majorGravity":I
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 634
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 591
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_49
        0x50 -> :sswitch_3c
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .line 644
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1578
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .line 410
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .line 419
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 1956
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1620
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1632
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1919
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .line 338
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 673
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .line 686
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .line 698
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 735
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 737
    return v1

    .line 739
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_15

    .line 741
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    move v1, v2

    :cond_14
    return v1

    .line 743
    :cond_15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    .line 744
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_22

    .line 746
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_21

    move v1, v2

    :cond_21
    return v1

    .line 748
    :cond_22
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_29

    move v1, v2

    :cond_29
    return v1
.end method

.method public isBaselineAligned()Z
    .registers 2

    .line 535
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 564
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 38
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1762
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v7

    .line 1763
    .local v7, "isLayoutRtl":Z
    iget v8, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1769
    .local v8, "paddingTop":I
    sub-int v9, p4, p2

    .line 1770
    .local v9, "height":I
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v9, v0

    .line 1773
    .local v10, "childBottom":I
    sub-int v0, v9, v8

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v11, v0, v1

    .line 1775
    .local v11, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    .line 1777
    .local v12, "count":I
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    .line 1778
    .local v13, "majorGravity":I
    and-int/lit8 v14, v0, 0x70

    .line 1780
    .local v14, "minorGravity":I
    iget-boolean v15, v6, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1782
    .local v15, "baselineAligned":Z
    iget-object v5, v6, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1783
    .local v5, "maxAscent":[I
    iget-object v4, v6, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1785
    .local v4, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    .line 1786
    .local v3, "layoutDirection":I
    invoke-static {v13, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    sparse-switch v0, :sswitch_data_16c

    .line 1799
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .local v0, "childLeft":I
    goto :goto_4c

    .line 1789
    .end local v0    # "childLeft":I
    :sswitch_37
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1790
    .restart local v0    # "childLeft":I
    goto :goto_4c

    .line 1794
    .end local v0    # "childLeft":I
    :sswitch_41
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v1, p3, p1

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1795
    .restart local v0    # "childLeft":I
    nop

    .line 1803
    :goto_4c
    const/4 v1, 0x0

    .line 1804
    .local v1, "start":I
    const/4 v2, 0x1

    .line 1806
    .local v2, "dir":I
    if-eqz v7, :cond_58

    .line 1807
    add-int/lit8 v1, v12, -0x1

    .line 1808
    const/4 v2, -0x1

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_5c

    .line 1806
    :cond_58
    move/from16 v17, v1

    move/from16 v18, v2

    .line 1811
    .end local v1    # "start":I
    .end local v2    # "dir":I
    .local v17, "start":I
    .local v18, "dir":I
    :goto_5c
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_5e
    if-ge v2, v12, :cond_16a

    .line 1812
    mul-int v1, v18, v2

    add-int v1, v17, v1

    .line 1813
    .local v1, "childIndex":I
    move/from16 v19, v9

    .end local v9    # "height":I
    .local v19, "height":I
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1814
    .local v9, "child":Landroid/view/View;
    const/16 v20, 0x1

    if-nez v9, :cond_84

    .line 1815
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    move/from16 v22, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v28, v10

    move/from16 v26, v12

    goto/16 :goto_156

    .line 1816
    :cond_84
    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_147

    .line 1817
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 1818
    .local v23, "childWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1819
    .local v24, "childHeight":I
    const/4 v2, -0x1

    .line 1821
    .local v2, "childBaseline":I
    nop

    .line 1822
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1824
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v25, v2

    .end local v2    # "childBaseline":I
    .local v25, "childBaseline":I
    const/4 v2, -0x1

    if-eqz v15, :cond_b0

    move/from16 v26, v12

    .end local v12    # "count":I
    .local v26, "count":I
    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v12, v2, :cond_b2

    .line 1825
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v12

    .end local v25    # "childBaseline":I
    .local v12, "childBaseline":I
    goto :goto_b4

    .line 1824
    .end local v26    # "count":I
    .local v12, "count":I
    .restart local v25    # "childBaseline":I
    :cond_b0
    move/from16 v26, v12

    .line 1828
    .end local v12    # "count":I
    .restart local v26    # "count":I
    :cond_b2
    move/from16 v12, v25

    .end local v25    # "childBaseline":I
    .local v12, "childBaseline":I
    :goto_b4
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1829
    .local v2, "gravity":I
    if-gez v2, :cond_bc

    .line 1830
    move v2, v14

    move/from16 v27, v2

    goto :goto_be

    .line 1829
    :cond_bc
    move/from16 v27, v2

    .line 1833
    .end local v2    # "gravity":I
    .local v27, "gravity":I
    :goto_be
    and-int/lit8 v2, v27, 0x70

    sparse-switch v2, :sswitch_data_176

    .line 1865
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .local v28, "childBottom":I
    move v2, v8

    move v10, v2

    .local v2, "childTop":I
    goto :goto_ff

    .line 1858
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .restart local v10    # "childBottom":I
    :sswitch_c8
    sub-int v2, v10, v24

    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v10

    .line 1859
    .restart local v2    # "childTop":I
    const/4 v10, -0x1

    if-eq v12, v10, :cond_df

    .line 1860
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v12

    .line 1861
    .local v10, "descent":I
    aget v25, v4, v16

    sub-int v25, v25, v10

    sub-int v2, v2, v25

    .line 1862
    .end local v10    # "descent":I
    move v10, v2

    goto :goto_ff

    .line 1859
    :cond_df
    move v10, v2

    goto :goto_ff

    .line 1835
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .local v10, "childBottom":I
    :sswitch_e1
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v8

    .line 1836
    .restart local v2    # "childTop":I
    const/4 v10, -0x1

    if-eq v12, v10, :cond_ef

    .line 1837
    aget v10, v5, v20

    sub-int/2addr v10, v12

    add-int/2addr v2, v10

    move v10, v2

    goto :goto_ff

    .line 1836
    :cond_ef
    move v10, v2

    goto :goto_ff

    .line 1853
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .restart local v10    # "childBottom":I
    :sswitch_f1
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v10

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v10

    .line 1855
    .restart local v2    # "childTop":I
    move v10, v2

    .line 1869
    .end local v2    # "childTop":I
    .local v10, "childTop":I
    :goto_ff
    if-eqz v7, :cond_10b

    .line 1872
    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;->hasDividerAfterChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 1873
    iget v2, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v0, v2

    goto :goto_114

    .line 1875
    :cond_10b
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 1876
    iget v2, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v0, v2

    .line 1879
    :cond_114
    :goto_114
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v25, v0, v2

    .line 1880
    .end local v0    # "childLeft":I
    .local v25, "childLeft":I
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v2, v25, v0

    move-object/from16 v0, p0

    move/from16 v29, v7

    move v7, v1

    .end local v1    # "childIndex":I
    .local v7, "childIndex":I
    .local v29, "isLayoutRtl":Z
    move-object v1, v9

    move/from16 v30, v8

    move-object v8, v3

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v30, "paddingTop":I
    move v3, v10

    move-object/from16 v31, v4

    .end local v4    # "maxDescent":[I
    .local v31, "maxDescent":[I
    move/from16 v4, v23

    move-object/from16 v32, v5

    .end local v5    # "maxAscent":[I
    .local v32, "maxAscent":[I
    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1882
    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v0, v23, v0

    .line 1883
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v25, v25, v0

    .line 1885
    invoke-virtual {v6, v9, v7}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v2, v21, v0

    move/from16 v0, v25

    .end local v21    # "i":I
    .local v2, "i":I
    goto :goto_156

    .line 1816
    .end local v2    # "i":I
    .end local v23    # "childWidth":I
    .end local v24    # "childHeight":I
    .end local v25    # "childLeft":I
    .end local v26    # "count":I
    .end local v27    # "gravity":I
    .end local v28    # "childBottom":I
    .end local v29    # "isLayoutRtl":Z
    .end local v30    # "paddingTop":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .restart local v0    # "childLeft":I
    .restart local v1    # "childIndex":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v7, "isLayoutRtl":Z
    .local v8, "paddingTop":I
    .local v10, "childBottom":I
    .local v12, "count":I
    .restart local v21    # "i":I
    :cond_147
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v28, v10

    move/from16 v26, v12

    move v7, v1

    .end local v1    # "childIndex":I
    .end local v4    # "maxDescent":[I
    .end local v5    # "maxAscent":[I
    .end local v8    # "paddingTop":I
    .end local v10    # "childBottom":I
    .end local v12    # "count":I
    .local v7, "childIndex":I
    .restart local v26    # "count":I
    .restart local v28    # "childBottom":I
    .restart local v29    # "isLayoutRtl":Z
    .restart local v30    # "paddingTop":I
    .restart local v31    # "maxDescent":[I
    .restart local v32    # "maxAscent":[I
    move/from16 v2, v21

    .line 1811
    .end local v7    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    .end local v21    # "i":I
    .restart local v2    # "i":I
    :goto_156
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v19

    move/from16 v3, v22

    move/from16 v12, v26

    move/from16 v10, v28

    move/from16 v7, v29

    move/from16 v8, v30

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_5e

    .line 1888
    .end local v2    # "i":I
    .end local v19    # "height":I
    .end local v22    # "layoutDirection":I
    .end local v26    # "count":I
    .end local v28    # "childBottom":I
    .end local v29    # "isLayoutRtl":Z
    .end local v30    # "paddingTop":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .local v3, "layoutDirection":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v7, "isLayoutRtl":Z
    .restart local v8    # "paddingTop":I
    .local v9, "height":I
    .restart local v10    # "childBottom":I
    .restart local v12    # "count":I
    :cond_16a
    return-void

    nop

    :sswitch_data_16c
    .sparse-switch
        0x1 -> :sswitch_41
        0x5 -> :sswitch_37
    .end sparse-switch

    :sswitch_data_176
    .sparse-switch
        0x10 -> :sswitch_f1
        0x30 -> :sswitch_e1
        0x50 -> :sswitch_c8
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .registers 29
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1657
    move-object/from16 v6, p0

    iget v7, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1663
    .local v7, "paddingLeft":I
    sub-int v8, p3, p1

    .line 1664
    .local v8, "width":I
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v8, v0

    .line 1667
    .local v9, "childRight":I
    sub-int v0, v8, v7

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v10, v0, v1

    .line 1669
    .local v10, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1671
    .local v11, "count":I
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    .line 1672
    .local v12, "majorGravity":I
    const v1, 0x800007

    and-int v13, v0, v1

    .line 1674
    .local v13, "minorGravity":I
    sparse-switch v12, :sswitch_data_d8

    .line 1687
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    .local v0, "childTop":I
    goto :goto_38

    .line 1677
    .end local v0    # "childTop":I
    :sswitch_23
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1678
    .restart local v0    # "childTop":I
    goto :goto_38

    .line 1682
    .end local v0    # "childTop":I
    :sswitch_2d
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1683
    .restart local v0    # "childTop":I
    nop

    .line 1691
    :goto_38
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_3a
    if-ge v14, v11, :cond_d6

    .line 1692
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1693
    .local v15, "child":Landroid/view/View;
    if-nez v15, :cond_4b

    .line 1694
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v23, v7

    goto/16 :goto_d0

    .line 1695
    :cond_4b
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_ce

    .line 1696
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1697
    .local v16, "childWidth":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1699
    .local v17, "childHeight":I
    nop

    .line 1700
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1702
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1703
    .local v1, "gravity":I
    if-gez v1, :cond_6a

    .line 1704
    move v1, v13

    move v4, v1

    goto :goto_6b

    .line 1703
    :cond_6a
    move v4, v1

    .line 1706
    .end local v1    # "gravity":I
    .local v4, "gravity":I
    :goto_6b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    .line 1707
    .local v3, "layoutDirection":I
    invoke-static {v4, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    .line 1708
    .local v18, "absoluteGravity":I
    and-int/lit8 v1, v18, 0x7

    sparse-switch v1, :sswitch_data_e2

    .line 1720
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v19, v1

    .local v1, "childLeft":I
    goto :goto_93

    .line 1715
    .end local v1    # "childLeft":I
    :sswitch_7e
    sub-int v1, v9, v16

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1716
    .restart local v1    # "childLeft":I
    move/from16 v19, v1

    goto :goto_93

    .line 1710
    .end local v1    # "childLeft":I
    :sswitch_86
    sub-int v1, v10, v16

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1712
    .restart local v1    # "childLeft":I
    move/from16 v19, v1

    .line 1724
    .end local v1    # "childLeft":I
    .local v19, "childLeft":I
    :goto_93
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1725
    iget v1, v6, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1728
    :cond_9c
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v20, v0, v1

    .line 1729
    .end local v0    # "childTop":I
    .local v20, "childTop":I
    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v21, v20, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v19

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    move/from16 v3, v21

    move/from16 v21, v4

    .end local v4    # "gravity":I
    .local v21, "gravity":I
    move/from16 v4, v16

    move/from16 v23, v7

    move-object v7, v5

    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v23, "paddingLeft":I
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1731
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1733
    invoke-virtual {v6, v15, v14}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v0, v20

    goto :goto_d0

    .line 1695
    .end local v16    # "childWidth":I
    .end local v17    # "childHeight":I
    .end local v18    # "absoluteGravity":I
    .end local v19    # "childLeft":I
    .end local v20    # "childTop":I
    .end local v21    # "gravity":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "paddingLeft":I
    .restart local v0    # "childTop":I
    .local v7, "paddingLeft":I
    :cond_ce
    move/from16 v23, v7

    .line 1691
    .end local v7    # "paddingLeft":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v23    # "paddingLeft":I
    :goto_d0
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v23

    goto/16 :goto_3a

    .line 1736
    .end local v14    # "i":I
    .end local v23    # "paddingLeft":I
    .restart local v7    # "paddingLeft":I
    :cond_d6
    return-void

    nop

    :sswitch_data_d8
    .sparse-switch
        0x10 -> :sswitch_2d
        0x50 -> :sswitch_23
    .end sparse-switch

    :sswitch_data_e2
    .sparse-switch
        0x1 -> :sswitch_86
        0x5 -> :sswitch_7e
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1608
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1610
    return-void
.end method

.method measureHorizontal(II)V
    .registers 53
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1139
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1140
    const/4 v0, 0x0

    .line 1141
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 1142
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 1143
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 1144
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 1145
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 1147
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1149
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1150
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 1152
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 1153
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 1155
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v15, :cond_25

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v15, :cond_2e

    .line 1156
    :cond_25
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1157
    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1160
    :cond_2e
    iget-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1161
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1163
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 1164
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 1166
    iget-boolean v6, v7, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1167
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 1169
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_5a

    move/from16 v23, v20

    goto :goto_5c

    :cond_5a
    const/16 v23, 0x0

    .line 1171
    .local v23, "isExactly":Z
    :goto_5c
    const/high16 v24, -0x80000000

    .line 1172
    .local v24, "largestChildWidth":I
    const/16 v25, 0x0

    .line 1174
    .local v25, "usedExcessSpace":I
    const/16 v26, 0x0

    .line 1177
    .local v26, "nonSkippedChildCount":I
    const/16 v27, 0x0

    move/from16 v9, v27

    move/from16 v47, v5

    move v5, v0

    move/from16 v0, v47

    move/from16 v48, v3

    move v3, v1

    move/from16 v1, v48

    move/from16 v49, v18

    move/from16 v18, v4

    move/from16 v4, v24

    move/from16 v24, v22

    move/from16 v22, v49

    .local v0, "totalWeight":F
    .local v1, "weightedMaxHeight":I
    .local v3, "childState":I
    .local v4, "largestChildWidth":I
    .local v5, "maxHeight":I
    .local v9, "i":I
    .local v18, "allFillParent":Z
    .local v22, "matchHeight":Z
    .local v24, "skippedMeasure":Z
    :goto_7a
    const/16 v29, 0x0

    if-ge v9, v11, :cond_264

    .line 1178
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1179
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_9a

    .line 1180
    move/from16 v31, v1

    .end local v1    # "weightedMaxHeight":I
    .local v31, "weightedMaxHeight":I
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v28

    add-int v1, v1, v28

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1181
    move/from16 v21, v6

    move/from16 v32, v11

    move/from16 v1, v31

    move/from16 v31, v12

    goto/16 :goto_258

    .line 1184
    .end local v31    # "weightedMaxHeight":I
    .restart local v1    # "weightedMaxHeight":I
    :cond_9a
    move/from16 v31, v1

    .end local v1    # "weightedMaxHeight":I
    .restart local v31    # "weightedMaxHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v32, v2

    const/16 v2, 0x8

    .end local v2    # "alternativeMaxHeight":I
    .local v32, "alternativeMaxHeight":I
    if-ne v1, v2, :cond_b7

    .line 1185
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v9, v1

    .line 1186
    move/from16 v21, v6

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v32, v11

    move/from16 v31, v12

    goto/16 :goto_258

    .line 1189
    :cond_b7
    add-int/lit8 v26, v26, 0x1

    .line 1190
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1191
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1194
    :cond_c6
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1196
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v30, v0, v1

    .line 1198
    .end local v0    # "totalWeight":F
    .local v30, "totalWeight":F
    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_de

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v29

    if-lez v0, :cond_de

    move/from16 v0, v20

    goto :goto_df

    :cond_de
    const/4 v0, 0x0

    :goto_df
    move/from16 v33, v0

    .line 1199
    .local v33, "useExcessSpace":Z
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_142

    if-eqz v33, :cond_142

    .line 1203
    if-eqz v23, :cond_f6

    .line 1204
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v34, v3

    .end local v3    # "childState":I
    .local v34, "childState":I
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_106

    .line 1206
    .end local v34    # "childState":I
    .restart local v3    # "childState":I
    :cond_f6
    move/from16 v34, v3

    .end local v3    # "childState":I
    .restart local v34    # "childState":I
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1207
    .local v0, "totalLength":I
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1216
    .end local v0    # "totalLength":I
    :goto_106
    if-eqz v6, :cond_12f

    .line 1217
    nop

    .line 1218
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1217
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 1219
    .local v0, "freeWidthSpec":I
    nop

    .line 1220
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1219
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1221
    .local v3, "freeHeightSpec":I
    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    .line 1222
    .end local v0    # "freeWidthSpec":I
    .end local v3    # "freeHeightSpec":I
    move-object v1, v2

    move/from16 v21, v6

    move/from16 v36, v31

    move/from16 v37, v32

    move/from16 v39, v34

    move/from16 v32, v11

    move/from16 v31, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b9

    .line 1223
    :cond_12f
    const/16 v24, 0x1

    move-object v1, v2

    move/from16 v21, v6

    move/from16 v36, v31

    move/from16 v37, v32

    move/from16 v39, v34

    move/from16 v32, v11

    move/from16 v31, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b9

    .line 1199
    .end local v34    # "childState":I
    .local v3, "childState":I
    :cond_142
    move/from16 v34, v3

    .line 1226
    .end local v3    # "childState":I
    .restart local v34    # "childState":I
    if-eqz v33, :cond_149

    .line 1232
    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1239
    :cond_149
    cmpl-float v0, v30, v29

    if-nez v0, :cond_150

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_151

    :cond_150
    const/4 v0, 0x0

    :goto_151
    move v3, v4

    .end local v4    # "largestChildWidth":I
    .local v3, "largestChildWidth":I
    move v4, v0

    .line 1240
    .local v4, "usedWidth":I
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v36, v31

    .end local v31    # "weightedMaxHeight":I
    .local v36, "weightedMaxHeight":I
    move-object v1, v8

    move-object/from16 v38, v2

    move/from16 v37, v32

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "alternativeMaxHeight":I
    .local v37, "alternativeMaxHeight":I
    .local v38, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move v2, v9

    move/from16 v40, v3

    move/from16 v39, v34

    .end local v3    # "largestChildWidth":I
    .end local v34    # "childState":I
    .local v39, "childState":I
    .local v40, "largestChildWidth":I
    move/from16 v3, p1

    move/from16 v31, v12

    move v12, v5

    .end local v5    # "maxHeight":I
    .local v12, "maxHeight":I
    .local v31, "widthMode":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v32, v11

    const/4 v11, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v11    # "count":I
    .local v21, "baselineAligned":Z
    .local v32, "count":I
    move/from16 v6, v35

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1243
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1244
    .local v0, "childWidth":I
    if-eqz v33, :cond_182

    .line 1248
    move-object/from16 v1, v38

    const/4 v2, 0x0

    .end local v38    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1249
    add-int v25, v25, v0

    goto :goto_184

    .line 1244
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v38    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_182
    move-object/from16 v1, v38

    .line 1252
    .end local v38    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_184
    if-eqz v23, :cond_197

    .line 1253
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 1254
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1ac

    .line 1256
    :cond_197
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1257
    .local v2, "totalLength":I
    add-int v3, v2, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 1258
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1257
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1261
    .end local v2    # "totalLength":I
    :goto_1ac
    if-eqz v14, :cond_1b6

    .line 1262
    move/from16 v2, v40

    .end local v40    # "largestChildWidth":I
    .local v2, "largestChildWidth":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    goto :goto_1b9

    .line 1261
    .end local v2    # "largestChildWidth":I
    .restart local v40    # "largestChildWidth":I
    :cond_1b6
    move/from16 v2, v40

    .end local v40    # "largestChildWidth":I
    .restart local v2    # "largestChildWidth":I
    move v4, v2

    .line 1266
    .end local v0    # "childWidth":I
    .end local v2    # "largestChildWidth":I
    .local v4, "largestChildWidth":I
    :goto_1b9
    const/4 v0, 0x0

    .line 1267
    .local v0, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_1c5

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v2, v11, :cond_1c5

    .line 1271
    const/16 v22, 0x1

    .line 1272
    const/4 v0, 0x1

    .line 1275
    :cond_1c5
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1276
    .local v2, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1277
    .local v3, "childHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v39

    .end local v39    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    .line 1279
    .end local v6    # "childState":I
    .local v5, "childState":I
    if-eqz v21, :cond_210

    .line 1280
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1281
    .local v6, "childBaseline":I
    if-eq v6, v11, :cond_20b

    .line 1284
    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v11, :cond_1e8

    iget v11, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_1ea

    :cond_1e8
    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_1ea
    and-int/lit8 v11, v11, 0x70

    .line 1286
    .local v11, "gravity":I
    shr-int/lit8 v35, v11, 0x4

    const/16 v28, -0x2

    and-int/lit8 v28, v35, -0x2

    shr-int/lit8 v28, v28, 0x1

    .line 1289
    .local v28, "index":I
    move/from16 v35, v2

    .end local v2    # "margin":I
    .local v35, "margin":I
    aget v2, v10, v28

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v28

    .line 1290
    aget v2, v15, v28

    move/from16 v38, v4

    .end local v4    # "largestChildWidth":I
    .local v38, "largestChildWidth":I
    sub-int v4, v3, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v28

    goto :goto_214

    .line 1281
    .end local v11    # "gravity":I
    .end local v28    # "index":I
    .end local v35    # "margin":I
    .end local v38    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v4    # "largestChildWidth":I
    :cond_20b
    move/from16 v35, v2

    move/from16 v38, v4

    .end local v2    # "margin":I
    .end local v4    # "largestChildWidth":I
    .restart local v35    # "margin":I
    .restart local v38    # "largestChildWidth":I
    goto :goto_214

    .line 1279
    .end local v6    # "childBaseline":I
    .end local v35    # "margin":I
    .end local v38    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v4    # "largestChildWidth":I
    :cond_210
    move/from16 v35, v2

    move/from16 v38, v4

    .line 1294
    .end local v2    # "margin":I
    .end local v4    # "largestChildWidth":I
    .restart local v35    # "margin":I
    .restart local v38    # "largestChildWidth":I
    :goto_214
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1296
    .end local v12    # "maxHeight":I
    .local v2, "maxHeight":I
    if-eqz v18, :cond_222

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_222

    move/from16 v4, v20

    goto :goto_223

    :cond_222
    const/4 v4, 0x0

    .line 1297
    .end local v18    # "allFillParent":Z
    .local v4, "allFillParent":Z
    :goto_223
    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v29

    if-lez v6, :cond_237

    .line 1302
    nop

    .line 1303
    if-eqz v0, :cond_22f

    move/from16 v6, v35

    goto :goto_230

    :cond_22f
    move v6, v3

    .line 1302
    :goto_230
    move/from16 v11, v36

    .end local v36    # "weightedMaxHeight":I
    .local v11, "weightedMaxHeight":I
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v11    # "weightedMaxHeight":I
    .local v6, "weightedMaxHeight":I
    goto :goto_248

    .line 1305
    .end local v6    # "weightedMaxHeight":I
    .restart local v36    # "weightedMaxHeight":I
    :cond_237
    move/from16 v11, v36

    .line 1306
    .end local v36    # "weightedMaxHeight":I
    .restart local v11    # "weightedMaxHeight":I
    if-eqz v0, :cond_23e

    move/from16 v6, v35

    goto :goto_23f

    :cond_23e
    move v6, v3

    .line 1305
    :goto_23f
    move/from16 v12, v37

    .end local v37    # "alternativeMaxHeight":I
    .local v12, "alternativeMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v37, v6

    move v6, v11

    .line 1309
    .end local v11    # "weightedMaxHeight":I
    .end local v12    # "alternativeMaxHeight":I
    .restart local v6    # "weightedMaxHeight":I
    .restart local v37    # "alternativeMaxHeight":I
    :goto_248
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v9, v11

    move/from16 v18, v4

    move v3, v5

    move v1, v6

    move/from16 v0, v30

    move/from16 v4, v38

    move v5, v2

    move/from16 v2, v37

    .line 1177
    .end local v6    # "weightedMaxHeight":I
    .end local v8    # "child":Landroid/view/View;
    .end local v30    # "totalWeight":F
    .end local v33    # "useExcessSpace":Z
    .end local v35    # "margin":I
    .end local v37    # "alternativeMaxHeight":I
    .end local v38    # "largestChildWidth":I
    .local v0, "totalWeight":F
    .local v1, "weightedMaxHeight":I
    .local v2, "alternativeMaxHeight":I
    .local v3, "childState":I
    .local v4, "largestChildWidth":I
    .local v5, "maxHeight":I
    .restart local v18    # "allFillParent":Z
    :goto_258
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, p1

    move/from16 v6, v21

    move/from16 v12, v31

    move/from16 v11, v32

    goto/16 :goto_7a

    .end local v21    # "baselineAligned":Z
    .end local v31    # "widthMode":I
    .end local v32    # "count":I
    .local v6, "baselineAligned":Z
    .local v11, "count":I
    .local v12, "widthMode":I
    :cond_264
    move/from16 v21, v6

    move/from16 v32, v11

    move/from16 v31, v12

    const/16 v28, -0x2

    move v11, v1

    move v1, v2

    move v6, v3

    move v2, v4

    move v12, v5

    .line 1312
    .end local v3    # "childState":I
    .end local v4    # "largestChildWidth":I
    .end local v5    # "maxHeight":I
    .end local v9    # "i":I
    .local v1, "alternativeMaxHeight":I
    .local v2, "largestChildWidth":I
    .local v6, "childState":I
    .local v11, "weightedMaxHeight":I
    .local v12, "maxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v31    # "widthMode":I
    .restart local v32    # "count":I
    if-lez v26, :cond_283

    move/from16 v3, v32

    .end local v32    # "count":I
    .local v3, "count":I
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_285

    .line 1313
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_285

    .line 1312
    .end local v3    # "count":I
    .restart local v32    # "count":I
    :cond_283
    move/from16 v3, v32

    .line 1318
    .end local v32    # "count":I
    .restart local v3    # "count":I
    :cond_285
    :goto_285
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_29c

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_29c

    aget v4, v10, v19

    if-ne v4, v5, :cond_29c

    aget v4, v10, v17

    if-eq v4, v5, :cond_298

    goto :goto_29c

    :cond_298
    move/from16 v39, v6

    move v5, v12

    goto :goto_2cf

    .line 1322
    :cond_29c
    :goto_29c
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    .line 1324
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1323
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1322
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1325
    .local v4, "ascent":I
    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v39, v6

    .end local v6    # "childState":I
    .restart local v39    # "childState":I
    aget v6, v15, v19

    .line 1327
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1326
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1325
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1328
    .local v5, "descent":I
    add-int v6, v4, v5

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 1331
    .end local v4    # "ascent":I
    .end local v12    # "maxHeight":I
    .local v5, "maxHeight":I
    :goto_2cf
    if-eqz v14, :cond_36a

    const/high16 v4, -0x80000000

    move/from16 v6, v31

    .end local v31    # "widthMode":I
    .local v6, "widthMode":I
    if-eq v6, v4, :cond_2de

    if-nez v6, :cond_2da

    goto :goto_2de

    :cond_2da
    move/from16 v31, v5

    goto/16 :goto_36e

    .line 1333
    :cond_2de
    :goto_2de
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1334
    const/4 v4, 0x0

    .line 1336
    .end local v26    # "nonSkippedChildCount":I
    .local v4, "nonSkippedChildCount":I
    const/4 v8, 0x0

    move/from16 v26, v4

    .end local v4    # "nonSkippedChildCount":I
    .local v8, "i":I
    .restart local v26    # "nonSkippedChildCount":I
    :goto_2e5
    if-ge v8, v3, :cond_356

    .line 1337
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1338
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_2f9

    .line 1339
    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1340
    move/from16 v31, v5

    goto :goto_351

    .line 1343
    :cond_2f9
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_309

    .line 1344
    invoke-virtual {v7, v4, v8}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v8, v9

    .line 1345
    move/from16 v31, v5

    goto :goto_351

    .line 1348
    :cond_309
    add-int/lit8 v26, v26, 0x1

    .line 1349
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_318

    .line 1350
    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v12, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v9, v12

    iput v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1353
    :cond_318
    nop

    .line 1354
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1355
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v23, :cond_336

    .line 1356
    iget v12, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v5

    .end local v5    # "maxHeight":I
    .local v31, "maxHeight":I
    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v2

    move/from16 v32, v8

    .end local v8    # "i":I
    .local v32, "i":I
    iget v8, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v8

    .line 1357
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v5, v8

    add-int/2addr v12, v5

    iput v12, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_34f

    .line 1359
    .end local v31    # "maxHeight":I
    .end local v32    # "i":I
    .restart local v5    # "maxHeight":I
    .restart local v8    # "i":I
    :cond_336
    move/from16 v31, v5

    move/from16 v32, v8

    .end local v5    # "maxHeight":I
    .end local v8    # "i":I
    .restart local v31    # "maxHeight":I
    .restart local v32    # "i":I
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1360
    .local v5, "totalLength":I
    add-int v8, v5, v2

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v12

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v12

    .line 1361
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v8, v12

    .line 1360
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1336
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "totalLength":I
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_34f
    move/from16 v8, v32

    .end local v32    # "i":I
    .restart local v8    # "i":I
    :goto_351
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v31

    goto :goto_2e5

    .end local v31    # "maxHeight":I
    .local v5, "maxHeight":I
    :cond_356
    move/from16 v31, v5

    move/from16 v32, v8

    .line 1365
    .end local v5    # "maxHeight":I
    .end local v8    # "i":I
    .restart local v31    # "maxHeight":I
    if-lez v26, :cond_36e

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_36e

    .line 1366
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_36e

    .line 1331
    .end local v6    # "widthMode":I
    .restart local v5    # "maxHeight":I
    .local v31, "widthMode":I
    :cond_36a
    move/from16 v6, v31

    move/from16 v31, v5

    .line 1371
    .end local v5    # "maxHeight":I
    .restart local v6    # "widthMode":I
    .local v31, "maxHeight":I
    :cond_36e
    :goto_36e
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v8, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v8

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1373
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1376
    .local v4, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1379
    move/from16 v5, p1

    move/from16 v8, v28

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v12

    .line 1380
    .local v12, "widthSizeAndState":I
    const v9, 0xffffff

    and-int v4, v12, v9

    .line 1385
    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v4, v9

    .line 1386
    iget-boolean v8, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v8, :cond_39a

    const/4 v8, 0x0

    goto :goto_39c

    :cond_39a
    move/from16 v8, v25

    :goto_39c
    add-int/2addr v9, v8

    .line 1387
    .local v9, "remainingExcess":I
    if-nez v24, :cond_43a

    sget-boolean v32, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v32, :cond_3a5

    if-eqz v9, :cond_3b1

    :cond_3a5
    cmpl-float v32, v0, v29

    if-lez v32, :cond_3b1

    move/from16 v33, v0

    move/from16 v35, v4

    move/from16 v36, v9

    goto/16 :goto_440

    .line 1501
    :cond_3b1
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1505
    if-eqz v14, :cond_41c

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v6, v8, :cond_41c

    .line 1506
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3bc
    if-ge v8, v3, :cond_413

    .line 1507
    move/from16 v33, v0

    .end local v0    # "totalWeight":F
    .local v33, "totalWeight":F
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1508
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_402

    move/from16 v16, v1

    .end local v1    # "alternativeMaxHeight":I
    .local v16, "alternativeMaxHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v35, v4

    const/16 v4, 0x8

    .end local v4    # "widthSize":I
    .local v35, "widthSize":I
    if-ne v1, v4, :cond_3d5

    .line 1509
    move/from16 v36, v9

    goto :goto_408

    .line 1512
    :cond_3d5
    nop

    .line 1513
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1515
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1516
    .local v4, "childExtra":F
    cmpl-float v17, v4, v29

    if-lez v17, :cond_3fb

    .line 1517
    nop

    .line 1518
    move-object/from16 v17, v1

    move/from16 v19, v4

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "childExtra":F
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v19, "childExtra":F
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1519
    move/from16 v36, v9

    .end local v9    # "remainingExcess":I
    .local v36, "remainingExcess":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1517
    invoke-virtual {v0, v4, v9}, Landroid/view/View;->measure(II)V

    goto :goto_408

    .line 1516
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v36    # "remainingExcess":I
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "childExtra":F
    .restart local v9    # "remainingExcess":I
    :cond_3fb
    move-object/from16 v17, v1

    move/from16 v19, v4

    move/from16 v36, v9

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "childExtra":F
    .end local v9    # "remainingExcess":I
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v19    # "childExtra":F
    .restart local v36    # "remainingExcess":I
    goto :goto_408

    .line 1508
    .end local v16    # "alternativeMaxHeight":I
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v35    # "widthSize":I
    .end local v36    # "remainingExcess":I
    .local v1, "alternativeMaxHeight":I
    .local v4, "widthSize":I
    .restart local v9    # "remainingExcess":I
    :cond_402
    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    .line 1506
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxHeight":I
    .end local v4    # "widthSize":I
    .end local v9    # "remainingExcess":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v35    # "widthSize":I
    .restart local v36    # "remainingExcess":I
    :goto_408
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    move/from16 v0, v33

    move/from16 v4, v35

    move/from16 v9, v36

    goto :goto_3bc

    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v35    # "widthSize":I
    .end local v36    # "remainingExcess":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v4    # "widthSize":I
    .restart local v9    # "remainingExcess":I
    :cond_413
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v4    # "widthSize":I
    .end local v9    # "remainingExcess":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v35    # "widthSize":I
    .restart local v36    # "remainingExcess":I
    goto :goto_424

    .line 1505
    .end local v8    # "i":I
    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v35    # "widthSize":I
    .end local v36    # "remainingExcess":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v4    # "widthSize":I
    .restart local v9    # "remainingExcess":I
    :cond_41c
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    .line 1526
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v4    # "widthSize":I
    .end local v9    # "remainingExcess":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v35    # "widthSize":I
    .restart local v36    # "remainingExcess":I
    :goto_424
    move/from16 v40, v2

    move/from16 v43, v6

    move/from16 v37, v12

    move/from16 v1, v16

    move/from16 v5, v31

    move/from16 v9, v36

    move/from16 v4, v39

    move/from16 v6, p2

    move/from16 v36, v11

    move/from16 v31, v14

    goto/16 :goto_65c

    .line 1387
    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v35    # "widthSize":I
    .end local v36    # "remainingExcess":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v4    # "widthSize":I
    .restart local v9    # "remainingExcess":I
    :cond_43a
    move/from16 v33, v0

    move/from16 v35, v4

    move/from16 v36, v9

    .line 1389
    .end local v0    # "totalWeight":F
    .end local v4    # "widthSize":I
    .end local v9    # "remainingExcess":I
    .restart local v33    # "totalWeight":F
    .restart local v35    # "widthSize":I
    .restart local v36    # "remainingExcess":I
    :goto_440
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v4, v0, v29

    if-lez v4, :cond_447

    goto :goto_449

    :cond_447
    move/from16 v0, v33

    .line 1391
    .local v0, "remainingWeightSum":F
    :goto_449
    const/4 v4, -0x1

    aput v4, v10, v17

    aput v4, v10, v19

    aput v4, v10, v20

    const/4 v8, 0x0

    aput v4, v10, v8

    .line 1392
    aput v4, v15, v17

    aput v4, v15, v19

    aput v4, v15, v20

    aput v4, v15, v8

    .line 1393
    const/4 v4, -0x1

    .line 1395
    .end local v31    # "maxHeight":I
    .local v4, "maxHeight":I
    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1396
    const/4 v8, 0x0

    .line 1398
    .end local v26    # "nonSkippedChildCount":I
    .local v8, "nonSkippedChildCount":I
    const/4 v9, 0x0

    move/from16 v26, v8

    move v8, v4

    move/from16 v4, v39

    move/from16 v47, v36

    move/from16 v36, v11

    move/from16 v11, v47

    .end local v39    # "childState":I
    .local v4, "childState":I
    .local v8, "maxHeight":I
    .local v9, "i":I
    .local v11, "remainingExcess":I
    .restart local v26    # "nonSkippedChildCount":I
    .local v36, "weightedMaxHeight":I
    :goto_46b
    if-ge v9, v3, :cond_5eb

    .line 1399
    move/from16 v31, v14

    .end local v14    # "useLargestChild":Z
    .local v31, "useLargestChild":Z
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1400
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_5cd

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v37, v12

    const/16 v12, 0x8

    .end local v12    # "widthSizeAndState":I
    .local v37, "widthSizeAndState":I
    if-ne v5, v12, :cond_48c

    .line 1401
    move/from16 v40, v2

    move/from16 v38, v3

    move/from16 v43, v6

    move v2, v11

    const/16 v28, -0x2

    move/from16 v6, p2

    goto/16 :goto_5da

    .line 1404
    :cond_48c
    add-int/lit8 v26, v26, 0x1

    .line 1405
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_49b

    .line 1406
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v12, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v5, v12

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1409
    :cond_49b
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1410
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1411
    .local v12, "childWeight":F
    cmpl-float v38, v12, v29

    if-lez v38, :cond_50e

    .line 1412
    move/from16 v38, v3

    .end local v3    # "count":I
    .local v38, "count":I
    int-to-float v3, v11

    mul-float/2addr v3, v12

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 1413
    .local v3, "share":I
    sub-int/2addr v11, v3

    .line 1414
    sub-float/2addr v0, v12

    .line 1417
    move/from16 v39, v0

    .end local v0    # "remainingWeightSum":F
    .local v39, "remainingWeightSum":F
    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_4bb

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v0, :cond_4bb

    .line 1418
    move v0, v2

    .local v0, "childWidth":I
    goto :goto_4ce

    .line 1419
    .end local v0    # "childWidth":I
    :cond_4bb
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_4c9

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v0, :cond_4c7

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v6, v0, :cond_4c9

    .line 1423
    :cond_4c7
    move v0, v3

    .restart local v0    # "childWidth":I
    goto :goto_4ce

    .line 1427
    .end local v0    # "childWidth":I
    :cond_4c9
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    .line 1430
    .restart local v0    # "childWidth":I
    :goto_4ce
    nop

    .line 1431
    move/from16 v40, v2

    move/from16 v41, v3

    const/4 v2, 0x0

    .end local v2    # "largestChildWidth":I
    .end local v3    # "share":I
    .restart local v40    # "largestChildWidth":I
    .local v41, "share":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1430
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1432
    .local v3, "childWidthMeasureSpec":I
    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v42, v0

    .end local v0    # "childWidth":I
    .local v42, "childWidth":I
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v43, v6

    move/from16 v27, v11

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v6, p2

    .end local v6    # "widthMode":I
    .end local v11    # "remainingExcess":I
    .local v27, "remainingExcess":I
    .local v43, "widthMode":I
    invoke-static {v6, v2, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1435
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {v14, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1438
    nop

    .line 1439
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v32, -0x1000000

    and-int v2, v2, v32

    .line 1438
    invoke-static {v4, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v4

    move/from16 v2, v27

    move/from16 v0, v39

    goto :goto_519

    .line 1411
    .end local v27    # "remainingExcess":I
    .end local v38    # "count":I
    .end local v39    # "remainingWeightSum":F
    .end local v40    # "largestChildWidth":I
    .end local v41    # "share":I
    .end local v42    # "childWidth":I
    .end local v43    # "widthMode":I
    .local v0, "remainingWeightSum":F
    .restart local v2    # "largestChildWidth":I
    .local v3, "count":I
    .restart local v6    # "widthMode":I
    .restart local v11    # "remainingExcess":I
    :cond_50e
    move/from16 v40, v2

    move/from16 v38, v3

    move/from16 v43, v6

    move v2, v11

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v6, p2

    .line 1442
    .end local v3    # "count":I
    .end local v6    # "widthMode":I
    .end local v11    # "remainingExcess":I
    .local v2, "remainingExcess":I
    .restart local v38    # "count":I
    .restart local v40    # "largestChildWidth":I
    .restart local v43    # "widthMode":I
    :goto_519
    if-eqz v23, :cond_536

    .line 1443
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v27, v27, v11

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v27, v27, v11

    .line 1444
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int v27, v27, v11

    add-int v3, v3, v27

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v27, v0

    goto :goto_550

    .line 1446
    :cond_536
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1447
    .local v3, "totalLength":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    move/from16 v27, v0

    .end local v0    # "remainingWeightSum":F
    .local v27, "remainingWeightSum":F
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v0

    .line 1448
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v11, v0

    .line 1447
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1451
    .end local v3    # "totalLength":I
    :goto_550
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_55c

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_55c

    move/from16 v0, v20

    goto :goto_55d

    :cond_55c
    const/4 v0, 0x0

    .line 1454
    .local v0, "matchHeightLocally":Z
    :goto_55d
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    .line 1455
    .local v3, "margin":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    .line 1456
    .local v11, "childHeight":I
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1457
    nop

    .line 1458
    move/from16 v41, v0

    if-eqz v0, :cond_572

    move v0, v3

    goto :goto_573

    :cond_572
    move v0, v11

    .line 1457
    .end local v0    # "matchHeightLocally":Z
    .local v41, "matchHeightLocally":Z
    :goto_573
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1460
    .end local v1    # "alternativeMaxHeight":I
    .local v0, "alternativeMaxHeight":I
    if-eqz v18, :cond_583

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v42, v0

    const/4 v0, -0x1

    .end local v0    # "alternativeMaxHeight":I
    .local v42, "alternativeMaxHeight":I
    if-ne v1, v0, :cond_585

    move/from16 v0, v20

    goto :goto_586

    .end local v42    # "alternativeMaxHeight":I
    .restart local v0    # "alternativeMaxHeight":I
    :cond_583
    move/from16 v42, v0

    .end local v0    # "alternativeMaxHeight":I
    .restart local v42    # "alternativeMaxHeight":I
    :cond_585
    const/4 v0, 0x0

    .line 1462
    .end local v18    # "allFillParent":Z
    .local v0, "allFillParent":Z
    :goto_586
    if-eqz v21, :cond_5c0

    .line 1463
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1464
    .local v1, "childBaseline":I
    move/from16 v18, v0

    const/4 v0, -0x1

    .end local v0    # "allFillParent":Z
    .restart local v18    # "allFillParent":Z
    if-eq v1, v0, :cond_5bb

    .line 1466
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v0, :cond_598

    iget v0, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_59a

    :cond_598
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_59a
    and-int/lit8 v0, v0, 0x70

    .line 1468
    .local v0, "gravity":I
    shr-int/lit8 v44, v0, 0x4

    const/16 v28, -0x2

    and-int/lit8 v44, v44, -0x2

    shr-int/lit8 v44, v44, 0x1

    .line 1471
    .local v44, "index":I
    move/from16 v45, v0

    .end local v0    # "gravity":I
    .local v45, "gravity":I
    aget v0, v10, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v44

    .line 1472
    aget v0, v15, v44

    move/from16 v46, v2

    .end local v2    # "remainingExcess":I
    .local v46, "remainingExcess":I
    sub-int v2, v11, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v44

    goto :goto_5c6

    .line 1464
    .end local v44    # "index":I
    .end local v45    # "gravity":I
    .end local v46    # "remainingExcess":I
    .restart local v2    # "remainingExcess":I
    :cond_5bb
    move/from16 v46, v2

    const/16 v28, -0x2

    .end local v2    # "remainingExcess":I
    .restart local v46    # "remainingExcess":I
    goto :goto_5c6

    .line 1462
    .end local v1    # "childBaseline":I
    .end local v18    # "allFillParent":Z
    .end local v46    # "remainingExcess":I
    .local v0, "allFillParent":Z
    .restart local v2    # "remainingExcess":I
    :cond_5c0
    move/from16 v18, v0

    move/from16 v46, v2

    const/16 v28, -0x2

    .line 1398
    .end local v0    # "allFillParent":Z
    .end local v2    # "remainingExcess":I
    .end local v3    # "margin":I
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "childHeight":I
    .end local v12    # "childWeight":F
    .end local v14    # "child":Landroid/view/View;
    .end local v41    # "matchHeightLocally":Z
    .restart local v18    # "allFillParent":Z
    .restart local v46    # "remainingExcess":I
    :goto_5c6
    move/from16 v0, v27

    move/from16 v1, v42

    move/from16 v11, v46

    goto :goto_5db

    .line 1400
    .end local v27    # "remainingWeightSum":F
    .end local v37    # "widthSizeAndState":I
    .end local v38    # "count":I
    .end local v40    # "largestChildWidth":I
    .end local v42    # "alternativeMaxHeight":I
    .end local v43    # "widthMode":I
    .end local v46    # "remainingExcess":I
    .local v0, "remainingWeightSum":F
    .local v1, "alternativeMaxHeight":I
    .local v2, "largestChildWidth":I
    .local v3, "count":I
    .restart local v6    # "widthMode":I
    .local v11, "remainingExcess":I
    .local v12, "widthSizeAndState":I
    .restart local v14    # "child":Landroid/view/View;
    :cond_5cd
    move/from16 v40, v2

    move/from16 v38, v3

    move/from16 v43, v6

    move v2, v11

    move/from16 v37, v12

    const/16 v28, -0x2

    move/from16 v6, p2

    .line 1398
    .end local v3    # "count":I
    .end local v6    # "widthMode":I
    .end local v11    # "remainingExcess":I
    .end local v12    # "widthSizeAndState":I
    .end local v14    # "child":Landroid/view/View;
    .local v2, "remainingExcess":I
    .restart local v37    # "widthSizeAndState":I
    .restart local v38    # "count":I
    .restart local v40    # "largestChildWidth":I
    .restart local v43    # "widthMode":I
    :goto_5da
    move v11, v2

    .end local v2    # "remainingExcess":I
    .restart local v11    # "remainingExcess":I
    :goto_5db
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move/from16 v14, v31

    move/from16 v12, v37

    move/from16 v3, v38

    move/from16 v2, v40

    move/from16 v6, v43

    goto/16 :goto_46b

    .end local v31    # "useLargestChild":Z
    .end local v37    # "widthSizeAndState":I
    .end local v38    # "count":I
    .end local v40    # "largestChildWidth":I
    .end local v43    # "widthMode":I
    .local v2, "largestChildWidth":I
    .restart local v3    # "count":I
    .restart local v6    # "widthMode":I
    .restart local v12    # "widthSizeAndState":I
    .local v14, "useLargestChild":Z
    :cond_5eb
    move/from16 v40, v2

    move/from16 v38, v3

    move/from16 v43, v6

    move v2, v11

    move/from16 v37, v12

    move/from16 v31, v14

    move/from16 v6, p2

    .line 1478
    .end local v3    # "count":I
    .end local v6    # "widthMode":I
    .end local v9    # "i":I
    .end local v11    # "remainingExcess":I
    .end local v12    # "widthSizeAndState":I
    .end local v14    # "useLargestChild":Z
    .local v2, "remainingExcess":I
    .restart local v31    # "useLargestChild":Z
    .restart local v37    # "widthSizeAndState":I
    .restart local v38    # "count":I
    .restart local v40    # "largestChildWidth":I
    .restart local v43    # "widthMode":I
    if-lez v26, :cond_60a

    move/from16 v3, v38

    .end local v38    # "count":I
    .restart local v3    # "count":I
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_60c

    .line 1479
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v9, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v5, v9

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_60c

    .line 1478
    .end local v3    # "count":I
    .restart local v38    # "count":I
    :cond_60a
    move/from16 v3, v38

    .line 1483
    .end local v38    # "count":I
    .restart local v3    # "count":I
    :cond_60c
    :goto_60c
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v11, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v9, v11

    add-int/2addr v5, v9

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1488
    aget v5, v10, v20

    const/4 v9, -0x1

    if-ne v5, v9, :cond_62b

    const/4 v5, 0x0

    aget v11, v10, v5

    if-ne v11, v9, :cond_62b

    aget v5, v10, v19

    if-ne v5, v9, :cond_62b

    aget v5, v10, v17

    if-eq v5, v9, :cond_629

    goto :goto_62b

    :cond_629
    move v5, v8

    goto :goto_65b

    .line 1492
    :cond_62b
    :goto_62b
    aget v5, v10, v17

    const/4 v9, 0x0

    aget v11, v10, v9

    aget v12, v10, v20

    aget v14, v10, v19

    .line 1494
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1493
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1492
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1495
    .local v5, "ascent":I
    aget v11, v15, v17

    aget v9, v15, v9

    aget v12, v15, v20

    aget v14, v15, v19

    .line 1497
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1496
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1495
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1498
    .local v9, "descent":I
    add-int v11, v5, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    .line 1500
    .end local v0    # "remainingWeightSum":F
    .end local v8    # "maxHeight":I
    .end local v9    # "descent":I
    .local v5, "maxHeight":I
    :goto_65b
    move v9, v2

    .line 1526
    .end local v2    # "remainingExcess":I
    .local v9, "remainingExcess":I
    :goto_65c
    if-nez v18, :cond_663

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_663

    .line 1527
    move v5, v1

    .line 1530
    :cond_663
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v5, v0

    .line 1533
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1535
    .end local v5    # "maxHeight":I
    .local v0, "maxHeight":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v4

    or-int v2, v37, v2

    shl-int/lit8 v5, v4, 0x10

    .line 1536
    invoke-static {v0, v6, v5}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1535
    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1539
    if-eqz v22, :cond_687

    .line 1540
    move/from16 v2, p1

    invoke-direct {v7, v3, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    goto :goto_689

    .line 1539
    :cond_687
    move/from16 v2, p1

    .line 1542
    :goto_689
    return-void
.end method

.method measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 1589
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 44
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 809
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 812
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 813
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 814
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 815
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 817
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 819
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 820
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 822
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 823
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 825
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 826
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 828
    .local v10, "useLargestChild":Z
    const/high16 v17, -0x80000000

    .line 829
    .local v17, "largestChildHeight":I
    const/16 v18, 0x0

    .line 831
    .local v18, "consumedExcessSpace":I
    const/16 v19, 0x0

    .line 834
    .local v19, "nonSkippedChildCount":I
    const/16 v20, 0x0

    move/from16 v38, v14

    move v14, v0

    move v0, v5

    move v5, v1

    move/from16 v1, v19

    move/from16 v19, v38

    move/from16 v39, v4

    move v4, v2

    move/from16 v2, v17

    move/from16 v17, v39

    move/from16 v40, v18

    move/from16 v18, v6

    move/from16 v6, v20

    move/from16 v20, v40

    .local v0, "totalWeight":F
    .local v1, "nonSkippedChildCount":I
    .local v2, "largestChildHeight":I
    .local v4, "alternativeMaxWidth":I
    .local v5, "childState":I
    .local v6, "i":I
    .local v14, "maxWidth":I
    .local v17, "allFillParent":Z
    .local v18, "matchWidth":Z
    .local v19, "skippedMeasure":Z
    .local v20, "consumedExcessSpace":I
    :goto_41
    move/from16 v21, v4

    .end local v4    # "alternativeMaxWidth":I
    .local v21, "alternativeMaxWidth":I
    const/16 v23, 0x0

    const/16 v25, 0x1

    if-ge v6, v11, :cond_1c2

    .line 835
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 836
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_65

    .line 837
    move/from16 v27, v2

    .end local v2    # "largestChildHeight":I
    .local v27, "largestChildHeight":I
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v2, v2, v22

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 838
    move/from16 v22, v11

    move/from16 v4, v21

    move/from16 v2, v27

    move/from16 v27, v13

    goto/16 :goto_1b6

    .line 841
    .end local v27    # "largestChildHeight":I
    .restart local v2    # "largestChildHeight":I
    :cond_65
    move/from16 v27, v2

    .end local v2    # "largestChildHeight":I
    .restart local v27    # "largestChildHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v28, v3

    const/16 v3, 0x8

    .end local v3    # "weightedMaxWidth":I
    .local v28, "weightedMaxWidth":I
    if-ne v2, v3, :cond_82

    .line 842
    invoke-virtual {v7, v4, v6}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v6, v2

    .line 843
    move/from16 v22, v11

    move/from16 v4, v21

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v27, v13

    goto/16 :goto_1b6

    .line 846
    :cond_82
    add-int/lit8 v24, v1, 0x1

    .line 847
    .end local v1    # "nonSkippedChildCount":I
    .local v24, "nonSkippedChildCount":I
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 848
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 851
    :cond_91
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v29, v0, v1

    .line 855
    .end local v0    # "totalWeight":F
    .local v29, "totalWeight":F
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_a9

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_a9

    move/from16 v0, v25

    goto :goto_aa

    :cond_a9
    const/4 v0, 0x0

    :goto_aa
    move/from16 v30, v0

    .line 856
    .local v30, "useExcessSpace":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v13, v2, :cond_d6

    if-eqz v30, :cond_d6

    .line 860
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 861
    .local v0, "totalLength":I
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 862
    const/16 v19, 0x1

    .line 863
    .end local v0    # "totalLength":I
    move-object v9, v3

    move-object v3, v4

    move/from16 v34, v5

    move/from16 v32, v6

    move/from16 v22, v11

    move/from16 v2, v27

    move/from16 v8, v28

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v27, v13

    move/from16 v13, v21

    goto/16 :goto_137

    .line 864
    :cond_d6
    if-eqz v30, :cond_db

    .line 870
    const/4 v0, -0x2

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 877
    :cond_db
    cmpl-float v0, v29, v23

    if-nez v0, :cond_e2

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_e3

    :cond_e2
    const/4 v0, 0x0

    :goto_e3
    move v1, v6

    .end local v6    # "i":I
    .local v1, "i":I
    move v6, v0

    .line 878
    .local v6, "usedHeight":I
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v32, v1

    .end local v1    # "i":I
    .local v32, "i":I
    move-object v1, v4

    move/from16 v33, v27

    const/high16 v26, 0x40000000    # 2.0f

    .end local v27    # "largestChildHeight":I
    .local v33, "largestChildHeight":I
    move/from16 v2, v32

    move-object v9, v3

    move/from16 v8, v28

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "weightedMaxWidth":I
    .local v8, "weightedMaxWidth":I
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v3, p1

    move/from16 v22, v11

    move/from16 v27, v13

    move/from16 v13, v21

    move/from16 v11, v26

    move-object/from16 v21, v4

    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .local v13, "alternativeMaxWidth":I
    .local v21, "child":Landroid/view/View;
    .local v22, "count":I
    .local v27, "heightMode":I
    move/from16 v4, v31

    move/from16 v34, v5

    .end local v5    # "childState":I
    .local v34, "childState":I
    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 881
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 882
    .local v0, "childHeight":I
    if-eqz v30, :cond_115

    .line 886
    const/4 v1, 0x0

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 887
    add-int v20, v20, v0

    .line 890
    :cond_115
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 891
    .local v1, "totalLength":I
    add-int v2, v1, v0

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 892
    move-object/from16 v3, v21

    .end local v21    # "child":Landroid/view/View;
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 891
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 894
    if-eqz v10, :cond_135

    .line 895
    move/from16 v2, v33

    .end local v33    # "largestChildHeight":I
    .restart local v2    # "largestChildHeight":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_137

    .line 894
    .end local v2    # "largestChildHeight":I
    .restart local v33    # "largestChildHeight":I
    :cond_135
    move/from16 v2, v33

    .line 903
    .end local v0    # "childHeight":I
    .end local v1    # "totalLength":I
    .end local v6    # "usedHeight":I
    .end local v33    # "largestChildHeight":I
    .restart local v2    # "largestChildHeight":I
    :goto_137
    if-ltz v15, :cond_144

    move/from16 v4, v32

    .end local v32    # "i":I
    .local v4, "i":I
    add-int/lit8 v6, v4, 0x1

    if-ne v15, v6, :cond_146

    .line 904
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v0, v7, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    goto :goto_146

    .line 903
    .end local v4    # "i":I
    .restart local v32    # "i":I
    :cond_144
    move/from16 v4, v32

    .line 910
    .end local v32    # "i":I
    .restart local v4    # "i":I
    :cond_146
    :goto_146
    if-ge v4, v15, :cond_157

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_14f

    goto :goto_157

    .line 911
    :cond_14f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_157
    :goto_157
    const/4 v0, 0x0

    .line 918
    .local v0, "matchWidthLocally":Z
    if-eq v12, v11, :cond_162

    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_162

    .line 923
    const/16 v18, 0x1

    .line 924
    const/4 v0, 0x1

    .line 927
    :cond_162
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    .line 928
    .local v1, "margin":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    .line 929
    .local v5, "measuredWidth":I
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 930
    .end local v14    # "maxWidth":I
    .local v6, "maxWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    move/from16 v14, v34

    .end local v34    # "childState":I
    .local v14, "childState":I
    invoke-static {v14, v11}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v11

    .line 932
    .end local v14    # "childState":I
    .local v11, "childState":I
    if-eqz v17, :cond_186

    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v21, v1

    const/4 v1, -0x1

    .end local v1    # "margin":I
    .local v21, "margin":I
    if-ne v14, v1, :cond_188

    move/from16 v1, v25

    goto :goto_189

    .end local v21    # "margin":I
    .restart local v1    # "margin":I
    :cond_186
    move/from16 v21, v1

    .end local v1    # "margin":I
    .restart local v21    # "margin":I
    :cond_188
    const/4 v1, 0x0

    .line 933
    .end local v17    # "allFillParent":Z
    .local v1, "allFillParent":Z
    :goto_189
    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v23

    if-lez v14, :cond_19b

    .line 938
    nop

    .line 939
    if-eqz v0, :cond_195

    move/from16 v14, v21

    goto :goto_196

    :cond_195
    move v14, v5

    .line 938
    :goto_196
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1a6

    .line 941
    :cond_19b
    nop

    .line 942
    if-eqz v0, :cond_1a1

    move/from16 v14, v21

    goto :goto_1a2

    :cond_1a1
    move v14, v5

    .line 941
    :goto_1a2
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 945
    :goto_1a6
    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int/2addr v4, v14

    move/from16 v17, v1

    move v14, v6

    move v3, v8

    move v5, v11

    move/from16 v1, v24

    move/from16 v0, v29

    move v6, v4

    move v4, v13

    .line 834
    .end local v8    # "weightedMaxWidth":I
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "childState":I
    .end local v13    # "alternativeMaxWidth":I
    .end local v21    # "margin":I
    .end local v24    # "nonSkippedChildCount":I
    .end local v29    # "totalWeight":F
    .end local v30    # "useExcessSpace":Z
    .local v0, "totalWeight":F
    .local v1, "nonSkippedChildCount":I
    .local v3, "weightedMaxWidth":I
    .local v4, "alternativeMaxWidth":I
    .local v5, "childState":I
    .local v6, "i":I
    .local v14, "maxWidth":I
    .restart local v17    # "allFillParent":Z
    :goto_1b6
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v22

    move/from16 v13, v27

    goto/16 :goto_41

    .end local v4    # "alternativeMaxWidth":I
    .end local v22    # "count":I
    .end local v27    # "heightMode":I
    .local v11, "count":I
    .local v13, "heightMode":I
    .local v21, "alternativeMaxWidth":I
    :cond_1c2
    move v8, v3

    move v4, v6

    move/from16 v22, v11

    move/from16 v27, v13

    move/from16 v13, v21

    const/high16 v11, 0x40000000    # 2.0f

    .line 948
    .end local v3    # "weightedMaxWidth":I
    .end local v6    # "i":I
    .end local v11    # "count":I
    .end local v21    # "alternativeMaxWidth":I
    .restart local v8    # "weightedMaxWidth":I
    .local v13, "alternativeMaxWidth":I
    .restart local v22    # "count":I
    .restart local v27    # "heightMode":I
    if-lez v1, :cond_1de

    move/from16 v3, v22

    .end local v22    # "count":I
    .local v3, "count":I
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 949
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v4, v6

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1e0

    .line 948
    .end local v3    # "count":I
    .restart local v22    # "count":I
    :cond_1de
    move/from16 v3, v22

    .line 952
    .end local v22    # "count":I
    .restart local v3    # "count":I
    :cond_1e0
    :goto_1e0
    if-eqz v10, :cond_248

    const/high16 v4, -0x80000000

    move/from16 v6, v27

    .end local v27    # "heightMode":I
    .local v6, "heightMode":I
    if-eq v6, v4, :cond_1ee

    if-nez v6, :cond_1eb

    goto :goto_1ee

    :cond_1eb
    move/from16 v22, v1

    goto :goto_24c

    .line 954
    :cond_1ee
    :goto_1ee
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 956
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f2
    if-ge v4, v3, :cond_243

    .line 957
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 958
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_209

    .line 959
    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v11, v11, v22

    iput v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 960
    move/from16 v22, v1

    move/from16 v28, v4

    goto :goto_23a

    .line 963
    :cond_209
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v22, v1

    const/16 v1, 0x8

    .end local v1    # "nonSkippedChildCount":I
    .local v22, "nonSkippedChildCount":I
    if-ne v11, v1, :cond_219

    .line 964
    invoke-virtual {v7, v9, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v4, v1

    .line 965
    goto :goto_23c

    .line 968
    :cond_219
    nop

    .line 969
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 972
    .local v11, "totalLength":I
    add-int v27, v11, v2

    move/from16 v28, v4

    .end local v4    # "i":I
    .local v28, "i":I
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v27, v27, v4

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v27, v27, v4

    .line 973
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v27, v4

    .line 972
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 956
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "totalLength":I
    .end local v22    # "nonSkippedChildCount":I
    .end local v28    # "i":I
    .local v1, "nonSkippedChildCount":I
    .restart local v4    # "i":I
    :goto_23a
    move/from16 v4, v28

    .end local v1    # "nonSkippedChildCount":I
    .restart local v22    # "nonSkippedChildCount":I
    :goto_23c
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v22

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_1f2

    .end local v22    # "nonSkippedChildCount":I
    .restart local v1    # "nonSkippedChildCount":I
    :cond_243
    move/from16 v22, v1

    move/from16 v28, v4

    .end local v1    # "nonSkippedChildCount":I
    .end local v4    # "i":I
    .restart local v22    # "nonSkippedChildCount":I
    .restart local v28    # "i":I
    goto :goto_24c

    .line 952
    .end local v6    # "heightMode":I
    .end local v22    # "nonSkippedChildCount":I
    .end local v28    # "i":I
    .restart local v1    # "nonSkippedChildCount":I
    .restart local v27    # "heightMode":I
    :cond_248
    move/from16 v22, v1

    move/from16 v6, v27

    .line 978
    .end local v1    # "nonSkippedChildCount":I
    .end local v27    # "heightMode":I
    .restart local v6    # "heightMode":I
    .restart local v22    # "nonSkippedChildCount":I
    :goto_24c
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v4, v9

    add-int/2addr v1, v4

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 980
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 983
    .local v1, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 986
    move/from16 v4, p2

    const/4 v9, 0x0

    invoke-static {v1, v4, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v11

    .line 987
    .local v11, "heightSizeAndState":I
    const v9, 0xffffff

    and-int v1, v11, v9

    .line 991
    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v1, v9

    .line 992
    move/from16 v27, v1

    .end local v1    # "heightSize":I
    .local v27, "heightSize":I
    iget-boolean v1, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v1, :cond_278

    const/4 v1, 0x0

    goto :goto_27a

    :cond_278
    move/from16 v1, v20

    :goto_27a
    add-int/2addr v9, v1

    .line 993
    .local v9, "remainingExcess":I
    if-nez v19, :cond_314

    sget-boolean v1, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v1, :cond_283

    if-eqz v9, :cond_28f

    :cond_283
    cmpl-float v1, v0, v23

    if-lez v1, :cond_28f

    move/from16 v28, v0

    move/from16 v34, v5

    move/from16 v29, v8

    goto/16 :goto_31a

    .line 1059
    :cond_28f
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1065
    .end local v13    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    if-eqz v10, :cond_2fa

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v6, v13, :cond_2fa

    .line 1066
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_29a
    if-ge v13, v3, :cond_2f1

    .line 1067
    move/from16 v28, v0

    .end local v0    # "totalWeight":F
    .local v28, "totalWeight":F
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1068
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2e0

    move/from16 v16, v1

    .end local v1    # "alternativeMaxWidth":I
    .local v16, "alternativeMaxWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v34, v5

    const/16 v5, 0x8

    .end local v5    # "childState":I
    .restart local v34    # "childState":I
    if-ne v1, v5, :cond_2b3

    .line 1069
    move/from16 v29, v8

    goto :goto_2e6

    .line 1072
    :cond_2b3
    nop

    .line 1073
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1075
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1076
    .local v5, "childExtra":F
    cmpl-float v25, v5, v23

    if-lez v25, :cond_2d9

    .line 1077
    nop

    .line 1078
    move-object/from16 v25, v1

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v25, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move/from16 v26, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "childExtra":F
    .local v26, "childExtra":F
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1080
    move/from16 v29, v8

    .end local v8    # "weightedMaxWidth":I
    .local v29, "weightedMaxWidth":I
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1077
    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    goto :goto_2e6

    .line 1076
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "childExtra":F
    .end local v29    # "weightedMaxWidth":I
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "childExtra":F
    .restart local v8    # "weightedMaxWidth":I
    :cond_2d9
    move-object/from16 v25, v1

    move/from16 v26, v5

    move/from16 v29, v8

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "childExtra":F
    .end local v8    # "weightedMaxWidth":I
    .restart local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v26    # "childExtra":F
    .restart local v29    # "weightedMaxWidth":I
    goto :goto_2e6

    .line 1068
    .end local v16    # "alternativeMaxWidth":I
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "childExtra":F
    .end local v29    # "weightedMaxWidth":I
    .end local v34    # "childState":I
    .local v1, "alternativeMaxWidth":I
    .local v5, "childState":I
    .restart local v8    # "weightedMaxWidth":I
    :cond_2e0
    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    .line 1066
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxWidth":I
    .end local v5    # "childState":I
    .end local v8    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v29    # "weightedMaxWidth":I
    .restart local v34    # "childState":I
    :goto_2e6
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    move/from16 v0, v28

    move/from16 v8, v29

    move/from16 v5, v34

    goto :goto_29a

    .end local v16    # "alternativeMaxWidth":I
    .end local v28    # "totalWeight":F
    .end local v29    # "weightedMaxWidth":I
    .end local v34    # "childState":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v5    # "childState":I
    .restart local v8    # "weightedMaxWidth":I
    :cond_2f1
    move/from16 v28, v0

    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v5    # "childState":I
    .end local v8    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v28    # "totalWeight":F
    .restart local v29    # "weightedMaxWidth":I
    .restart local v34    # "childState":I
    goto :goto_302

    .line 1065
    .end local v13    # "i":I
    .end local v16    # "alternativeMaxWidth":I
    .end local v28    # "totalWeight":F
    .end local v29    # "weightedMaxWidth":I
    .end local v34    # "childState":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v5    # "childState":I
    .restart local v8    # "weightedMaxWidth":I
    :cond_2fa
    move/from16 v28, v0

    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    .line 1087
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v5    # "childState":I
    .end local v8    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v28    # "totalWeight":F
    .restart local v29    # "weightedMaxWidth":I
    .restart local v34    # "childState":I
    :goto_302
    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v1, v16

    move/from16 v5, v34

    move/from16 v6, p1

    move/from16 v34, v2

    goto/16 :goto_44b

    .line 993
    .end local v16    # "alternativeMaxWidth":I
    .end local v28    # "totalWeight":F
    .end local v29    # "weightedMaxWidth":I
    .end local v34    # "childState":I
    .restart local v0    # "totalWeight":F
    .restart local v5    # "childState":I
    .restart local v8    # "weightedMaxWidth":I
    .local v13, "alternativeMaxWidth":I
    :cond_314
    move/from16 v28, v0

    move/from16 v34, v5

    move/from16 v29, v8

    .line 995
    .end local v0    # "totalWeight":F
    .end local v5    # "childState":I
    .end local v8    # "weightedMaxWidth":I
    .restart local v28    # "totalWeight":F
    .restart local v29    # "weightedMaxWidth":I
    .restart local v34    # "childState":I
    :goto_31a
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v1, v0, v23

    if-lez v1, :cond_321

    goto :goto_323

    :cond_321
    move/from16 v0, v28

    .line 997
    .local v0, "remainingWeightSum":F
    :goto_323
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 999
    const/4 v1, 0x0

    move/from16 v5, v34

    .end local v34    # "childState":I
    .local v1, "i":I
    .restart local v5    # "childState":I
    :goto_329
    if-ge v1, v3, :cond_434

    .line 1000
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1001
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_41a

    move/from16 v30, v10

    .end local v10    # "useLargestChild":Z
    .local v30, "useLargestChild":Z
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    move/from16 v31, v15

    const/16 v15, 0x8

    .end local v15    # "baselineChildIndex":I
    .local v31, "baselineChildIndex":I
    if-ne v10, v15, :cond_347

    .line 1002
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v6, p1

    goto/16 :goto_426

    .line 1005
    :cond_347
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 1006
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v15, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1007
    .local v15, "childWeight":F
    cmpl-float v32, v15, v23

    if-lez v32, :cond_3b1

    .line 1008
    move/from16 v32, v3

    .end local v3    # "count":I
    .local v32, "count":I
    int-to-float v3, v9

    mul-float/2addr v3, v15

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 1009
    .local v3, "share":I
    sub-int/2addr v9, v3

    .line 1010
    sub-float/2addr v0, v15

    .line 1013
    move/from16 v33, v0

    .end local v0    # "remainingWeightSum":F
    .local v33, "remainingWeightSum":F
    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_367

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v0, :cond_367

    .line 1014
    move v0, v2

    .local v0, "childHeight":I
    goto :goto_37a

    .line 1015
    .end local v0    # "childHeight":I
    :cond_367
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_375

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v0, :cond_373

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v6, v0, :cond_375

    .line 1019
    :cond_373
    move v0, v3

    .restart local v0    # "childHeight":I
    goto :goto_37a

    .line 1023
    .end local v0    # "childHeight":I
    :cond_375
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 1026
    .restart local v0    # "childHeight":I
    :goto_37a
    nop

    .line 1027
    move/from16 v34, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    .end local v2    # "largestChildHeight":I
    .end local v3    # "share":I
    .local v16, "share":I
    .local v34, "largestChildHeight":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1026
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1028
    .local v3, "childHeightMeasureSpec":I
    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v35, v0

    .end local v0    # "childHeight":I
    .local v35, "childHeight":I
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v36, v6

    move/from16 v6, p1

    .end local v6    # "heightMode":I
    .local v36, "heightMode":I
    invoke-static {v6, v2, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1031
    .local v0, "childWidthMeasureSpec":I
    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    .line 1034
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    invoke-static {v5, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    move/from16 v0, v33

    goto :goto_3b9

    .line 1007
    .end local v16    # "share":I
    .end local v32    # "count":I
    .end local v33    # "remainingWeightSum":F
    .end local v34    # "largestChildHeight":I
    .end local v35    # "childHeight":I
    .end local v36    # "heightMode":I
    .local v0, "remainingWeightSum":F
    .restart local v2    # "largestChildHeight":I
    .local v3, "count":I
    .restart local v6    # "heightMode":I
    :cond_3b1
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v6, p1

    .line 1038
    .end local v2    # "largestChildHeight":I
    .end local v3    # "count":I
    .end local v6    # "heightMode":I
    .restart local v32    # "count":I
    .restart local v34    # "largestChildHeight":I
    .restart local v36    # "heightMode":I
    :goto_3b9
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 1039
    .local v2, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 1040
    .local v3, "measuredWidth":I
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1042
    move/from16 v16, v0

    const/high16 v0, 0x40000000    # 2.0f

    .end local v0    # "remainingWeightSum":F
    .local v16, "remainingWeightSum":F
    if-eq v12, v0, :cond_3d7

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v33, v2

    const/4 v2, -0x1

    .end local v2    # "margin":I
    .local v33, "margin":I
    if-ne v0, v2, :cond_3d9

    move/from16 v0, v25

    goto :goto_3da

    .end local v33    # "margin":I
    .restart local v2    # "margin":I
    :cond_3d7
    move/from16 v33, v2

    .end local v2    # "margin":I
    .restart local v33    # "margin":I
    :cond_3d9
    const/4 v0, 0x0

    .line 1045
    .local v0, "matchWidthLocally":Z
    :goto_3da
    nop

    .line 1046
    if-eqz v0, :cond_3e0

    move/from16 v2, v33

    goto :goto_3e1

    :cond_3e0
    move v2, v3

    .line 1045
    :goto_3e1
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1048
    .end local v13    # "alternativeMaxWidth":I
    .local v2, "alternativeMaxWidth":I
    if-eqz v17, :cond_3f1

    iget v13, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .local v35, "matchWidthLocally":Z
    if-ne v13, v0, :cond_3f4

    move/from16 v13, v25

    goto :goto_3f5

    .end local v35    # "matchWidthLocally":Z
    .restart local v0    # "matchWidthLocally":Z
    :cond_3f1
    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .restart local v35    # "matchWidthLocally":Z
    :cond_3f4
    const/4 v13, 0x0

    .line 1050
    .end local v17    # "allFillParent":Z
    .local v13, "allFillParent":Z
    :goto_3f5
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1051
    .local v0, "totalLength":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v0, v17

    move/from16 v37, v2

    .end local v2    # "alternativeMaxWidth":I
    .local v37, "alternativeMaxWidth":I
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v17, v17, v2

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v17, v2

    .line 1052
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v17, v2

    .line 1051
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v17, v13

    move/from16 v0, v16

    move/from16 v13, v37

    goto :goto_426

    .line 1001
    .end local v16    # "remainingWeightSum":F
    .end local v30    # "useLargestChild":Z
    .end local v31    # "baselineChildIndex":I
    .end local v32    # "count":I
    .end local v33    # "margin":I
    .end local v34    # "largestChildHeight":I
    .end local v35    # "matchWidthLocally":Z
    .end local v36    # "heightMode":I
    .end local v37    # "alternativeMaxWidth":I
    .local v0, "remainingWeightSum":F
    .local v2, "largestChildHeight":I
    .local v3, "count":I
    .restart local v6    # "heightMode":I
    .local v10, "useLargestChild":Z
    .local v13, "alternativeMaxWidth":I
    .local v15, "baselineChildIndex":I
    .restart local v17    # "allFillParent":Z
    :cond_41a
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v6, p1

    .line 999
    .end local v2    # "largestChildHeight":I
    .end local v3    # "count":I
    .end local v6    # "heightMode":I
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "useLargestChild":Z
    .end local v15    # "baselineChildIndex":I
    .restart local v30    # "useLargestChild":Z
    .restart local v31    # "baselineChildIndex":I
    .restart local v32    # "count":I
    .restart local v34    # "largestChildHeight":I
    .restart local v36    # "heightMode":I
    :goto_426
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v30

    move/from16 v15, v31

    move/from16 v3, v32

    move/from16 v2, v34

    move/from16 v6, v36

    goto/16 :goto_329

    .end local v30    # "useLargestChild":Z
    .end local v31    # "baselineChildIndex":I
    .end local v32    # "count":I
    .end local v34    # "largestChildHeight":I
    .end local v36    # "heightMode":I
    .restart local v2    # "largestChildHeight":I
    .restart local v3    # "count":I
    .restart local v6    # "heightMode":I
    .restart local v10    # "useLargestChild":Z
    .restart local v15    # "baselineChildIndex":I
    :cond_434
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v6, p1

    .line 1056
    .end local v1    # "i":I
    .end local v2    # "largestChildHeight":I
    .end local v3    # "count":I
    .end local v6    # "heightMode":I
    .end local v10    # "useLargestChild":Z
    .end local v15    # "baselineChildIndex":I
    .restart local v30    # "useLargestChild":Z
    .restart local v31    # "baselineChildIndex":I
    .restart local v32    # "count":I
    .restart local v34    # "largestChildHeight":I
    .restart local v36    # "heightMode":I
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1058
    .end local v0    # "remainingWeightSum":F
    move v1, v13

    .line 1087
    .end local v13    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    :goto_44b
    if-nez v17, :cond_452

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_452

    .line 1088
    move v14, v1

    .line 1091
    :cond_452
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    .line 1094
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1096
    .end local v14    # "maxWidth":I
    .local v0, "maxWidth":I
    invoke-static {v0, v6, v5}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v11}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1099
    if-eqz v18, :cond_46f

    .line 1100
    move/from16 v2, v32

    .end local v32    # "count":I
    .local v2, "count":I
    invoke-direct {v7, v2, v4}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    goto :goto_471

    .line 1099
    .end local v2    # "count":I
    .restart local v32    # "count":I
    :cond_46f
    move/from16 v2, v32

    .line 1102
    .end local v32    # "count":I
    .restart local v2    # "count":I
    :goto_471
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 424
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 425
    return-void

    .line 428
    :cond_5
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 429
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 431
    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 433
    :goto_11
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1637
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1638
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_c

    .line 1640
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    .line 1642
    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 720
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 721
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_c

    .line 723
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 725
    :goto_c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1740
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1741
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_10

    .line 1742
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 1743
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_10

    .line 1744
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1747
    :cond_10
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 549
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 550
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 655
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 659
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 660
    return-void

    .line 656
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 657
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 363
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    .line 364
    return-void

    .line 366
    :cond_5
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 367
    if-eqz p1, :cond_16

    .line 368
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 369
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_1b

    .line 371
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 372
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 375
    :goto_1b
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 376
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 377
    return-void
.end method

.method public setDividerPadding(I)V
    .registers 3
    .param p1, "padding"    # I

    .line 391
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_5

    .line 392
    return-void

    .line 394
    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 396
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 397
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 398
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 400
    :cond_13
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1934
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1935
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1936
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1939
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1940
    or-int/lit8 p1, p1, 0x30

    .line 1943
    :cond_14
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1944
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1946
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1961
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1962
    .local v1, "gravity":I
    iget v2, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_14

    .line 1963
    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1964
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1966
    :cond_14
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 581
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 582
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 1902
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1903
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1904
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1906
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .line 318
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_5

    .line 319
    return-void

    .line 321
    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 323
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 324
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 325
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 5
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1970
    and-int/lit8 v0, p1, 0x70

    .line 1971
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_10

    .line 1972
    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1973
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1975
    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 715
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 716
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 329
    const/4 v0, 0x0

    return v0
.end method
