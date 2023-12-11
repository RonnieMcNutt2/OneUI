.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$SliderDrawable;,
        Landroid/widget/AbsSeekBar$ThumbDrawable;
    }
.end annotation


# static fields
.field private static final MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final MUTE_VIB_DURATION:I = 0x1f4

.field private static final MUTE_VIB_TOTAL:I = 0x4

.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mAllowedSeekBarAnimation:Z

.field private mCurrentProgressLevel:I

.field private mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private final mGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mHasThumbBlendMode:Z

.field private mHasThumbTint:Z

.field private mHasTickMarkBlendMode:Z

.field private mHasTickMarkTint:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsTouchDisabled:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mLargeFont:Z

.field private mModeExpandThumbRadius:I

.field private mModeExpandTrackMaxWidth:I

.field private mModeExpandTrackMinWidth:I

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapPoint:I

.field private mScaledTouchSlop:I

.field private mSetDualColorMode:Z

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbBlendMode:Landroid/graphics/BlendMode;

.field private mThumbExclusionMaxSize:I

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbRadius:I

.field private final mThumbRect:Landroid/graphics/Rect;

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkBlendMode:Landroid/graphics/BlendMode;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mTouchThumbOffset:F

.field private mTrackMaxWidth:I

.field private mTrackMinWidth:I

.field private mUseMuteAnimation:Z

.field private mUserGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentProgressLevel(Landroid/widget/AbsSeekBar;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbPosX(Landroid/widget/AbsSeekBar;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentProgressLevel(Landroid/widget/AbsSeekBar;I)V
    .registers 2

    iput p1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 78
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 80
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 83
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 84
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 85
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 86
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 1427
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1437
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1448
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 1449
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 1450
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 1451
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1458
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1459
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 1460
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 78
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 80
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 83
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 84
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 85
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 86
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 1427
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1437
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1448
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 1449
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 1450
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 1451
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1458
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1459
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 1460
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 148
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 77
    const/4 v10, 0x0

    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 78
    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 79
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 80
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 83
    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 84
    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 85
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 86
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 102
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput v12, v7, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    const/4 v0, 0x0

    iput v0, v7, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 1427
    iput v11, v7, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1437
    const/4 v13, -0x1

    iput v13, v7, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1448
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 1449
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 1450
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 1451
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1458
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1459
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 1460
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    .line 150
    sget-object v0, Lcom/android/internal/R$styleable;->SeekBar:[I

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v8, v9, v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 152
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBar:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v10, v6

    .end local v6    # "a":Landroid/content/res/TypedArray;
    .local v10, "a":Landroid/content/res/TypedArray;
    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsSeekBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 155
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 159
    invoke-virtual {v10, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v2, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v1

    iput-object v1, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 161
    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 164
    :cond_88
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 165
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 166
    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 169
    :cond_97
    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 170
    .local v2, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v2}, Landroid/widget/AbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const/4 v3, 0x7

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 173
    invoke-virtual {v10, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 175
    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 178
    :cond_b4
    const/4 v3, 0x6

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 179
    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 180
    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 183
    :cond_c3
    const/4 v3, 0x2

    invoke-virtual {v10, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v7, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 186
    nop

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v4

    .line 186
    invoke-virtual {v10, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 188
    .local v4, "thumbOffset":I
    invoke-virtual {v7, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 190
    const/16 v5, 0x8

    invoke-virtual {v10, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 191
    .local v5, "useDisabledAlpha":Z
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    if-eqz v5, :cond_f4

    .line 194
    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v8, v9, v6, v11, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 195
    .local v6, "ta":Landroid/content/res/TypedArray;
    const v13, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v1, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 196
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    goto :goto_f8

    .line 198
    :cond_f4
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v7, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 201
    :goto_f8
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 202
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 204
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x105035c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mThumbExclusionMaxSize:I

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    .local v1, "res":Landroid/content/res/Resources;
    const v6, 0x10504a0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mTrackMinWidth:I

    .line 211
    const v6, 0x10504a1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mTrackMaxWidth:I

    .line 212
    const v6, 0x105049b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    .line 213
    const v6, 0x105049c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    .line 214
    const v6, 0x105049e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mThumbRadius:I

    .line 215
    const v6, 0x105049a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mModeExpandThumbRadius:I

    .line 217
    iget-boolean v6, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v6, :cond_157

    .line 218
    const v6, 0x10604a8

    goto :goto_15a

    .line 219
    :cond_157
    const v6, 0x10604a9

    :goto_15a
    nop

    .line 217
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 220
    const v6, 0x10604aa

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->semGetProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 223
    if-nez v6, :cond_192

    .line 224
    iget-boolean v6, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v6, :cond_183

    .line 225
    const v6, 0x10604a6

    goto :goto_186

    .line 226
    :cond_183
    const v6, 0x10604a7

    :goto_186
    nop

    .line 224
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 228
    :cond_192
    iget-boolean v6, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v6, :cond_19a

    .line 229
    const v6, 0x10604ad

    goto :goto_19d

    .line 230
    :cond_19a
    const v6, 0x10604ae

    :goto_19d
    nop

    .line 228
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 231
    iget-boolean v6, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v16, 0x10604ac

    if-eqz v6, :cond_1b4

    .line 232
    const v6, 0x10604ab

    goto :goto_1b6

    .line 233
    :cond_1b4
    move/from16 v6, v16

    :goto_1b6
    nop

    .line 231
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 235
    const v6, 0x101009e

    filled-new-array {v6}, [I

    move-result-object v6

    const v13, -0x101009e

    filled-new-array {v13}, [I

    move-result-object v13

    filled-new-array {v6, v13}, [[I

    move-result-object v6

    .line 239
    .local v6, "states":[[I
    new-array v13, v3, [I

    .line 240
    iget-boolean v3, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v3, :cond_1de

    .line 241
    const v3, 0x10604ab

    goto :goto_1e0

    .line 242
    :cond_1de
    move/from16 v3, v16

    .line 240
    :goto_1e0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v13, v11

    .line 243
    iget-boolean v3, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v16, 0x10604af

    const v17, 0x10604b0

    if-eqz v3, :cond_1f3

    .line 244
    move/from16 v3, v16

    goto :goto_1f5

    .line 245
    :cond_1f3
    move/from16 v3, v17

    .line 243
    :goto_1f5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v13, v12

    move-object v3, v13

    .line 247
    .local v3, "colors":[I
    new-instance v13, Landroid/content/res/ColorStateList;

    invoke-direct {v13, v6, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v13, v7, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 249
    iget-object v13, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v13, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 250
    if-nez v13, :cond_235

    .line 251
    const/4 v13, 0x2

    new-array v13, v13, [I

    .line 252
    iget-boolean v12, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v12, :cond_214

    .line 253
    const v12, 0x10604bc

    goto :goto_217

    .line 254
    :cond_214
    const v12, 0x10604bd

    .line 252
    :goto_217
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    aput v12, v13, v11

    .line 255
    iget-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v11, :cond_224

    .line 256
    move/from16 v11, v16

    goto :goto_226

    .line 257
    :cond_224
    move/from16 v11, v17

    .line 255
    :goto_226
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const/4 v12, 0x1

    aput v11, v13, v12

    move-object v3, v13

    .line 259
    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v6, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v11, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 261
    :cond_235
    const v11, 0x1110277

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 263
    if-eqz v11, :cond_243

    .line 264
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    .line 267
    :cond_243
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AbsSeekBar;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .line 72
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/AbsSeekBar;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .line 72
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/AbsSeekBar;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .line 72
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/AbsSeekBar;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .line 72
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyThumbTint()V
    .registers 3

    .line 440
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    if-eqz v1, :cond_37

    .line 441
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 443
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_1b

    .line 444
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 447
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    if-eqz v0, :cond_26

    .line 448
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 453
    :cond_26
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 454
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 457
    :cond_37
    return-void
.end method

.method private applyTickMarkTint()V
    .registers 3

    .line 627
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    if-eqz v1, :cond_37

    .line 628
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 630
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v1, :cond_1b

    .line 631
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 634
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    if-eqz v0, :cond_26

    .line 635
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 640
    :cond_26
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 641
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 644
    :cond_37
    return-void
.end method

.method private attemptClaimDrag()V
    .registers 3

    .line 1256
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 1257
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1259
    :cond_a
    return-void
.end method

.method private cancelMuteAnimation()V
    .registers 2

    .line 2044
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2045
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2047
    :cond_f
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .registers 3

    .line 1973
    iget v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 5
    .param p1, "color"    # I

    .line 1998
    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    .line 1999
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {p1}, [I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private getScale()F
    .registers 6

    .line 830
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v0

    .line 831
    .local v0, "min":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 832
    .local v1, "max":I
    sub-int v2, v1, v0

    .line 833
    .local v2, "range":I
    if-lez v2, :cond_15

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    return v3
.end method

.method private initDualOverlapDrawable()V
    .registers 5

    .line 1977
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 1978
    new-instance v0, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v1, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_38

    .line 1980
    :cond_15
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1981
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1982
    nop

    .line 1983
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1985
    :cond_38
    :goto_38
    return-void
.end method

.method private initMuteAnimation()V
    .registers 12

    .line 2017
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 2019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v1, 0x8

    .line 2021
    .local v1, "total":I
    const/16 v2, 0x1f4

    div-int/2addr v2, v1

    .line 2022
    .local v2, "duration":I
    const/16 v3, 0x190

    .line 2023
    .local v3, "distance":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v1, :cond_56

    .line 2024
    rem-int/lit8 v5, v4, 0x2

    const/4 v6, 0x0

    if-nez v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_1e

    :cond_1d
    move v5, v6

    .line 2025
    .local v5, "isGoingDirection":Z
    :goto_1e
    if-eqz v5, :cond_29

    filled-new-array {v6, v3}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    goto :goto_31

    .line 2026
    :cond_29
    filled-new-array {v3, v6}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    :goto_31
    nop

    .line 2027
    .local v6, "progressZeroAnimation":Landroid/animation/ValueAnimator;
    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2028
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2029
    new-instance v7, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v7, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2035
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    if-eqz v5, :cond_53

    .line 2037
    int-to-double v7, v3

    const-wide v9, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v7, v9

    double-to-int v3, v7

    .line 2023
    .end local v5    # "isGoingDirection":Z
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 2040
    .end local v4    # "i":I
    .end local v6    # "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :cond_56
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 2041
    return-void
.end method

.method private initializeExpandMode()V
    .registers 11

    .line 1819
    new-instance v0, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v1, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 1821
    .local v0, "background":Landroid/widget/AbsSeekBar$SliderDrawable;
    new-instance v1, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v2, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 1823
    .local v1, "secondaryProgress":Landroid/widget/AbsSeekBar$SliderDrawable;
    new-instance v2, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v3, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 1825
    .local v2, "primaryProgress":Landroid/widget/AbsSeekBar$SliderDrawable;
    new-instance v3, Landroid/widget/AbsSeekBar$ThumbDrawable;

    iget v4, p0, Landroid/widget/AbsSeekBar;->mModeExpandThumbRadius:I

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v4, v5, v6}, Landroid/widget/AbsSeekBar$ThumbDrawable;-><init>(Landroid/widget/AbsSeekBar;ILandroid/content/res/ColorStateList;Z)V

    .line 1827
    .local v3, "thumbDrawable":Landroid/widget/AbsSeekBar$ThumbDrawable;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 1828
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    aput-object v0, v4, v6

    .line 1829
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    const/16 v7, 0x13

    const/4 v8, 0x1

    invoke-direct {v5, v1, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v5, v4, v8

    .line 1831
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v5, v2, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 1834
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1835
    .local v5, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 1836
    const/high16 v9, 0x1020000

    invoke-virtual {v5, v6, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1837
    const v6, 0x102000f

    invoke-virtual {v5, v8, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1838
    const v6, 0x102000d

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1840
    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1841
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1842
    const v6, 0x10809cf

    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->setBackgroundResource(I)V

    .line 1843
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMaxHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    if-le v6, v7, :cond_78

    .line 1844
    invoke-virtual {p0, v7}, Landroid/widget/AbsSeekBar;->setMaxHeight(I)V

    .line 1846
    :cond_78
    return-void
.end method

.method private setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1190
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1191
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    .line 1192
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1194
    :cond_9
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 2136
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2137
    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 2121
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 2122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 2124
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 2125
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 22
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .line 847
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v4

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 849
    return-void

    .line 852
    :cond_15
    iget v4, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v4, p1, v4

    iget v5, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    .line 853
    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 854
    .local v5, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 855
    .local v6, "thumbHeight":I
    sub-int/2addr v4, v5

    .line 858
    iget v7, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 860
    int-to-float v7, v4

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 863
    .local v7, "thumbPos":I
    const/high16 v8, -0x80000000

    if-ne v3, v8, :cond_3d

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 865
    .local v8, "oldBounds":Landroid/graphics/Rect;
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 866
    .local v9, "top":I
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 867
    .local v8, "bottom":I
    goto :goto_41

    .line 868
    .end local v8    # "bottom":I
    .end local v9    # "top":I
    :cond_3d
    move/from16 v9, p4

    .line 869
    .restart local v9    # "top":I
    add-int v8, v3, v6

    .line 873
    .restart local v8    # "bottom":I
    :goto_41
    iget-boolean v10, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_4e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_4e

    sub-int v10, v4, v7

    goto :goto_4f

    :cond_4e
    move v10, v7

    .line 875
    .local v10, "left":I
    :goto_4f
    add-int v11, v10, v5

    .line 877
    .local v11, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 878
    .local v12, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_6c

    .line 879
    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v14, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v13, v14

    .line 880
    .local v13, "offsetX":I
    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 881
    .local v14, "offsetY":I
    add-int v15, v10, v13

    add-int v2, v9, v14

    add-int v3, v11, v13

    move/from16 v16, v4

    .end local v4    # "available":I
    .local v16, "available":I
    add-int v4, v8, v14

    invoke-virtual {v12, v15, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_6e

    .line 878
    .end local v13    # "offsetX":I
    .end local v14    # "offsetY":I
    .end local v16    # "available":I
    .restart local v4    # "available":I
    :cond_6c
    move/from16 v16, v4

    .line 886
    .end local v4    # "available":I
    .restart local v16    # "available":I
    :goto_6e
    invoke-virtual {v1, v10, v9, v11, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 889
    iget v2, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v2, v10

    iget v3, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    div-int/lit8 v4, v5, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 891
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    .line 893
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateGestureExclusionRects()V

    .line 894
    return-void
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 21
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .line 1542
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget v2, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v2, p1, v2

    iget v3, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v2, v3

    .line 1543
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1544
    .local v3, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1545
    .local v4, "thumbHeight":I
    sub-int/2addr v2, v4

    .line 1548
    iget v5, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 1550
    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 1553
    .local v5, "thumbPos":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_2d

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1555
    .local v6, "oldBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 1556
    .local v7, "left":I
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 1557
    .local v6, "right":I
    goto :goto_31

    .line 1558
    .end local v6    # "right":I
    .end local v7    # "left":I
    :cond_2d
    move/from16 v7, p4

    .line 1559
    .restart local v7    # "left":I
    add-int v6, v1, v3

    .line 1562
    .restart local v6    # "right":I
    :goto_31
    sub-int v8, v2, v5

    .line 1563
    .local v8, "top":I
    add-int v9, v8, v4

    .line 1565
    .local v9, "bottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1566
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_4d

    .line 1567
    iget v11, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .line 1568
    .local v11, "offsetX":I
    iget v12, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v12, v13

    .line 1570
    .local v12, "offsetY":I
    add-int v13, v7, v11

    add-int v14, v8, v12

    add-int v15, v6, v11

    add-int v1, v9, v12

    invoke-virtual {v10, v13, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1575
    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    :cond_4d
    move-object/from16 v1, p2

    invoke-virtual {v1, v7, v8, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1578
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v8

    iget v12, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v11, v12

    iput v11, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 1579
    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1179
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 1181
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1184
    :cond_f
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1185
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1186
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    .line 1187
    return-void
.end method

.method private startMuteAnimation()V
    .registers 2

    .line 2050
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 2052
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_a

    .line 2053
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2055
    :cond_a
    return-void
.end method

.method private trackHoverEvent(I)V
    .registers 8
    .param p1, "posX"    # I

    .line 1671
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    .line 1672
    .local v0, "width":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 1674
    .local v1, "available":I
    const/4 v2, 0x0

    .line 1676
    .local v2, "hoverLevel":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v3, :cond_12

    .line 1677
    const/4 v3, 0x0

    .local v3, "scale":F
    goto :goto_24

    .line 1678
    .end local v3    # "scale":F
    :cond_12
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v3, v0, v3

    if-le p1, v3, :cond_1b

    .line 1679
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_24

    .line 1681
    .end local v3    # "scale":F
    :cond_1b
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1682
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 1685
    :goto_24
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 1686
    .local v4, "max":I
    int-to-float v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    .line 1687
    float-to-int v5, v2

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1688
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1199
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1200
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    .line 1201
    return-void

    .line 1204
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1205
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1206
    .local v1, "y":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 1207
    .local v2, "width":I
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v3, v2, v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 1212
    .local v3, "availableWidth":I
    const/4 v4, 0x0

    .line 1213
    .local v4, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_4c

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v5, :cond_4c

    .line 1214
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v2, v5

    if-le v0, v5, :cond_37

    .line 1215
    const/4 v5, 0x0

    .local v5, "scale":F
    goto :goto_67

    .line 1216
    .end local v5    # "scale":F
    :cond_37
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v0, v5, :cond_3e

    .line 1217
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_67

    .line 1219
    .end local v5    # "scale":F
    :cond_3e
    sub-int v5, v3, v0

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    add-float/2addr v5, v6

    .line 1221
    .restart local v5    # "scale":F
    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_67

    .line 1224
    .end local v5    # "scale":F
    :cond_4c
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v0, v5, :cond_52

    .line 1225
    const/4 v5, 0x0

    .restart local v5    # "scale":F
    goto :goto_67

    .line 1226
    .end local v5    # "scale":F
    :cond_52
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v2, v5

    if-le v0, v5, :cond_5b

    .line 1227
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_67

    .line 1229
    .end local v5    # "scale":F
    :cond_5b
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    add-float/2addr v5, v6

    .line 1230
    .restart local v5    # "scale":F
    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 1234
    :goto_67
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1236
    .local v6, "range":I
    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    .line 1238
    .local v7, "basicWidth":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_8b

    cmpg-float v8, v5, v8

    if-gez v8, :cond_8b

    .line 1239
    rem-float v8, v5, v7

    .line 1240
    .local v8, "remainder":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_8b

    .line 1241
    sub-float v9, v7, v8

    add-float/2addr v5, v9

    .line 1245
    .end local v8    # "remainder":F
    :cond_8b
    int-to-float v8, v6

    mul-float/2addr v8, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v4, v8

    .line 1247
    int-to-float v8, v0

    int-to-float v9, v1

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1248
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1249
    return-void
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1607
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v0

    .line 1608
    .local v0, "height":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v1, v0, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 1609
    .local v1, "availableHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1610
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v3, v0, v3

    .line 1612
    .local v3, "y":I
    const/4 v4, 0x0

    .line 1613
    .local v4, "progress":F
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v3, v5, :cond_24

    .line 1614
    const/4 v5, 0x0

    .local v5, "scale":F
    goto :goto_36

    .line 1615
    .end local v5    # "scale":F
    :cond_24
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v5, v0, v5

    if-le v3, v5, :cond_2d

    .line 1616
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_36

    .line 1618
    .end local v5    # "scale":F
    :cond_2d
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 1619
    .restart local v5    # "scale":F
    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 1621
    :goto_36
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1622
    .local v6, "range":I
    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    .line 1623
    .local v7, "basicWidth":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_5a

    cmpg-float v8, v5, v8

    if-gez v8, :cond_5a

    .line 1624
    rem-float v8, v5, v7

    .line 1625
    .local v8, "remainder":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5a

    .line 1626
    sub-float v9, v7, v8

    add-float/2addr v5, v9

    .line 1629
    .end local v8    # "remainder":F
    :cond_5a
    int-to-float v8, v6

    mul-float/2addr v8, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v4, v8

    .line 1631
    int-to-float v8, v2

    int-to-float v9, v3

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1632
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1633
    return-void
.end method

.method private updateBoundsForDualColor()V
    .registers 3

    .line 1936
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    .line 1939
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1940
    .local v0, "base":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1941
    return-void

    .line 1937
    .end local v0    # "base":Landroid/graphics/Rect;
    :cond_1b
    :goto_1b
    return-void
.end method

.method private updateDualColorMode()V
    .registers 3

    .line 1913
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1914
    return-void

    .line 1917
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1918
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_3b

    .line 1919
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_2b

    .line 1920
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1921
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1922
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3b

    .line 1925
    :cond_2b
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1926
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1927
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1932
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1933
    return-void
.end method

.method private updateGestureExclusionRects()V
    .registers 5

    .line 904
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 905
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_a

    .line 906
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 907
    return-void

    .line 909
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 910
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 911
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 912
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbExclusionMaxSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->growRectTo(Landroid/graphics/Rect;I)V

    .line 913
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 915
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 916
    return-void
.end method

.method private updateSplitProgress()V
    .registers 13

    .line 1582
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    return-void

    .line 1584
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1585
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1586
    .local v1, "base":Landroid/graphics/Rect;
    if-eqz v0, :cond_38

    .line 1587
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1588
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_38

    .line 1590
    :cond_2d
    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1594
    :cond_38
    :goto_38
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 1595
    .local v2, "w":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    .line 1597
    .local v3, "h":I
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6d

    .line 1598
    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v7, v3

    div-float/2addr v7, v6

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    const/high16 v10, 0x41b00000    # 22.0f

    mul-float/2addr v9, v10

    div-float/2addr v9, v6

    sub-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v9, v2

    div-float/2addr v9, v6

    iget v11, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v11, v8

    div-float/2addr v11, v6

    add-float/2addr v9, v11

    float-to-int v8, v9

    int-to-float v9, v3

    div-float/2addr v9, v6

    iget v11, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v11, v10

    div-float/2addr v11, v6

    add-float/2addr v9, v11

    float-to-int v6, v9

    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1604
    :cond_6d
    return-void
.end method

.method private updateThumbAndTrackPos(II)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 789
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 790
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    .line 791
    return-void

    .line 794
    :cond_9
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 795
    .local v0, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 796
    .local v1, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 800
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 801
    .local v3, "trackHeight":I
    const/4 v4, 0x0

    if-nez v2, :cond_21

    move v5, v4

    goto :goto_25

    :cond_21
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 806
    .local v5, "thumbHeight":I
    :goto_25
    if-le v5, v3, :cond_32

    .line 807
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 808
    .local v6, "offsetHeight":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 809
    .local v7, "trackOffset":I
    nop

    .line 810
    .local v6, "thumbOffset":I
    goto :goto_3d

    .line 811
    .end local v6    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_32
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 812
    .local v6, "offsetHeight":I
    move v7, v6

    .line 813
    .restart local v7    # "trackOffset":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    .line 816
    .local v6, "thumbOffset":I
    :goto_3d
    if-eqz v1, :cond_4b

    .line 817
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    .line 818
    .local v8, "trackWidth":I
    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 821
    .end local v8    # "trackWidth":I
    :cond_4b
    if-eqz v2, :cond_54

    .line 822
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p1, v2, v4, v6}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 825
    :cond_54
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    .line 827
    return-void
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1509
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 1510
    .local v0, "paddedWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1511
    .local v1, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1515
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1516
    .local v3, "trackWidth":I
    const/4 v4, 0x0

    if-nez v2, :cond_18

    move v5, v4

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1521
    .local v5, "thumbWidth":I
    :goto_1c
    if-le v5, v3, :cond_29

    .line 1522
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 1523
    .local v6, "offsetWidth":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 1524
    .local v7, "trackOffset":I
    nop

    .line 1525
    .local v6, "thumbOffset":I
    goto :goto_34

    .line 1526
    .end local v6    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_29
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 1527
    .local v6, "offsetWidth":I
    move v7, v6

    .line 1528
    .restart local v7    # "trackOffset":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    .line 1531
    .local v6, "thumbOffset":I
    :goto_34
    if-eqz v1, :cond_42

    .line 1532
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    .line 1533
    .local v8, "trackHeight":I
    sub-int v9, v0, v7

    invoke-virtual {v1, v7, v4, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1536
    .end local v8    # "trackHeight":I
    :cond_42
    if-eqz v2, :cond_4b

    .line 1537
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p2, v2, v4, v6}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1539
    :cond_4b
    return-void
.end method

.method private updateWarningMode(I)V
    .registers 4
    .param p1, "progress"    # I

    .line 2003
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 2004
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    move v0, v1

    .line 2006
    .local v0, "isMax":Z
    if-eqz v0, :cond_1b

    .line 2007
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 2008
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_25

    .line 2010
    :cond_1b
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2011
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2014
    .end local v0    # "isMax":Z
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method canUserSetProgress()Z
    .registers 2

    .line 1400
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1049
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    .line 1050
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1054
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 1055
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_26

    .line 1057
    :cond_1a
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1059
    :goto_26
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1060
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1062
    .end local v0    # "saveCount":I
    :cond_2e
    return-void
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1023
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5e

    .line 1024
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1025
    .local v0, "count":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_5e

    .line 1026
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1027
    .local v2, "w":I
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1028
    .local v3, "h":I
    if-ltz v2, :cond_21

    div-int/lit8 v4, v2, 0x2

    goto :goto_22

    :cond_21
    move v4, v1

    .line 1029
    .local v4, "halfW":I
    :goto_22
    if-ltz v3, :cond_26

    div-int/lit8 v1, v3, 0x2

    .line 1030
    .local v1, "halfH":I
    :cond_26
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v6, v4

    neg-int v7, v1

    invoke-virtual {v5, v6, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1032
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 1033
    .local v5, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1034
    .local v6, "saveCount":I
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1035
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4d
    if-gt v7, v0, :cond_5b

    .line 1036
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1037
    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1035
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 1039
    .end local v7    # "i":I
    :cond_5b
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1042
    .end local v0    # "count":I
    .end local v1    # "halfH":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v4    # "halfW":I
    .end local v5    # "spacing":F
    .end local v6    # "saveCount":I
    :cond_5e
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 969
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 970
    .local v0, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3c

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_3c

    .line 971
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 972
    .local v1, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 973
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 974
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 975
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 976
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 978
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 979
    .local v3, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 980
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 981
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 982
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 983
    .end local v1    # "insets":Landroid/graphics/Insets;
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    .end local v3    # "saveCount":I
    goto :goto_42

    .line 984
    :cond_3c
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 985
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 988
    :goto_42
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v1

    if-nez v1, :cond_ce

    .line 989
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 990
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 991
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 992
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_74

    .line 994
    :cond_6b
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 997
    :goto_74
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 998
    .local v1, "base":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 999
    .restart local v2    # "tempRect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1000
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1001
    .local v3, "curProgress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 1002
    .local v4, "maxProgress":I
    iget v5, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_a5

    .line 1003
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 1004
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v4

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_b5

    .line 1006
    :cond_a5
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 1007
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v4

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 1009
    :goto_b5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1010
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 1011
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    if-eq v5, v6, :cond_cb

    .line 1012
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1014
    :cond_cb
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1017
    .end local v1    # "base":Landroid/graphics/Rect;
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    .end local v3    # "curProgress":I
    .end local v4    # "maxProgress":I
    :cond_ce
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 756
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 758
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 759
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 761
    :cond_a
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 5

    .line 713
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 715
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 716
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2a

    iget v1, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2a

    .line 717
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0xff

    goto :goto_20

    :cond_1a
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 718
    .local v1, "alpha":I
    :goto_20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 720
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2a

    .line 721
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 726
    .end local v1    # "alpha":I
    :cond_2a
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_49

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_49

    .line 727
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 728
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_49

    .line 730
    :cond_3f
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 731
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 735
    :cond_49
    :goto_49
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    if-eqz v1, :cond_60

    if-eqz v0, :cond_60

    .line 736
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_60

    .line 737
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 741
    :cond_60
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 742
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_77

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 743
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 744
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    :cond_77
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 748
    .local v2, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 749
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 750
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    :cond_8e
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1331
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .registers 2

    .line 665
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    .line 493
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 336
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()I
    .registers 2

    .line 1775
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .registers 2

    .line 463
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 436
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_9

    .line 423
    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 422
    :goto_a
    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 525
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 623
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 559
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 608
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_9

    .line 609
    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 608
    :goto_a
    return-object v0
.end method

.method public growRectTo(Landroid/graphics/Rect;I)V
    .registers 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "minimumSize"    # I

    .line 928
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p2, v0

    .line 929
    .local v0, "dy":I
    if-lez v0, :cond_18

    .line 930
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 931
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 933
    :cond_18
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    .line 934
    .local v1, "dx":I
    if-lez v1, :cond_30

    .line 935
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 936
    iget v2, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 938
    :cond_30
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 700
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 702
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 703
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 706
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 707
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 709
    :cond_11
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 954
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 956
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 957
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 958
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 961
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_13
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_1a

    .line 962
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 965
    :cond_1a
    monitor-exit p0

    return-void

    .line 953
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onHoverChanged(III)V
    .registers 4
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 1668
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1716
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 1717
    .local v1, "toolType":I
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v2, :cond_e

    if-eq v1, v4, :cond_e

    if-ne v1, v3, :cond_f

    :cond_e
    move v0, v4

    .line 1722
    .local v0, "isPossibleToolType":Z
    :cond_f
    if-eqz v0, :cond_49

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1724
    .local v2, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 1725
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 1726
    .local v6, "y":I
    packed-switch v2, :pswitch_data_4e

    :pswitch_28
    goto :goto_49

    .line 1741
    :pswitch_29
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    .line 1742
    goto :goto_49

    .line 1729
    :pswitch_2d
    invoke-direct {p0, v5}, Landroid/widget/AbsSeekBar;->trackHoverEvent(I)V

    .line 1730
    iget v3, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 1731
    goto :goto_49

    .line 1733
    :pswitch_36
    invoke-direct {p0, v5}, Landroid/widget/AbsSeekBar;->trackHoverEvent(I)V

    .line 1734
    iget v7, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v7, v5, v6}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 1736
    iget v7, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    if-ne v7, v3, :cond_49

    .line 1737
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    .line 1747
    .end local v2    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_49
    :goto_49
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_data_4e
    .packed-switch 0x7
        :pswitch_36
        :pswitch_28
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1337
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1339
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1340
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 1341
    .local v0, "progress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_18

    .line 1342
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1344
    :cond_18
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1345
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1348
    .end local v0    # "progress":I
    :cond_23
    return-void
.end method

.method onKeyChange()V
    .registers 1

    .line 1280
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1284
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1285
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 1287
    .local v0, "increment":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2c

    .line 1288
    sparse-switch p1, :sswitch_data_50

    .line 1301
    goto :goto_4a

    .line 1291
    :sswitch_12
    neg-int v0, v0

    .line 1296
    :sswitch_13
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1b

    neg-int v1, v0

    goto :goto_1c

    :cond_1b
    move v1, v0

    :goto_1c
    move v0, v1

    .line 1299
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1300
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1301
    return v3

    .line 1307
    :cond_2c
    sparse-switch p1, :sswitch_data_66

    goto :goto_4a

    .line 1310
    :sswitch_30
    neg-int v0, v0

    .line 1315
    :sswitch_31
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_39

    neg-int v1, v0

    goto :goto_3a

    :cond_39
    move v1, v0

    :goto_3a
    move v0, v1

    .line 1317
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1318
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1319
    return v3

    .line 1326
    .end local v0    # "increment":I
    :cond_4a
    :goto_4a
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_50
    .sparse-switch
        0x13 -> :sswitch_13
        0x14 -> :sswitch_12
        0x45 -> :sswitch_12
        0x46 -> :sswitch_13
        0x51 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_66
    .sparse-switch
        0x15 -> :sswitch_30
        0x16 -> :sswitch_31
        0x45 -> :sswitch_30
        0x46 -> :sswitch_31
        0x51 -> :sswitch_31
    .end sparse-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 1066
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1069
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1070
    .local v1, "dw":I
    const/4 v2, 0x0

    .line 1071
    .local v2, "dh":I
    const/4 v3, 0x0

    if-eqz v0, :cond_72

    .line 1073
    iget v4, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_41

    .line 1074
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_15

    move v4, v3

    goto :goto_19

    :cond_15
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1075
    .local v4, "thumbWidth":I
    :goto_19
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    .line 1076
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    .line 1077
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    .line 1078
    .end local v4    # "thumbWidth":I
    goto :goto_72

    .line 1079
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_41
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_47

    move v4, v3

    goto :goto_4b

    :cond_47
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1080
    .local v4, "thumbHeight":I
    :goto_4b
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    .line 1081
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    .line 1082
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    .line 1085
    .end local v4    # "thumbHeight":I
    :cond_72
    :goto_72
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 1086
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 1088
    invoke-static {v1, p1, v3}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    .line 1089
    invoke-static {v2, p2, v3}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v3

    .line 1088
    invoke-virtual {p0, v4, v3}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_8b

    .line 1090
    monitor-exit p0

    return-void

    .line 1065
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dw":I
    .end local v2    # "dh":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .registers 9
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .line 1481
    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1483
    .local v0, "targetLevel":I
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, v2

    .line 1486
    .local v1, "isMuteAnimationNeeded":Z
    :goto_15
    if-eqz v1, :cond_21

    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v3, :cond_21

    if-nez v0, :cond_21

    .line 1487
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->startMuteAnimation()V

    goto :goto_3b

    .line 1489
    :cond_21
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 1491
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 1492
    iput v0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    .line 1494
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    .line 1496
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1497
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3b

    .line 1498
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1503
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1506
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_3b
    :goto_3b
    return-void
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 945
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 947
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 948
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 950
    :cond_a
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .line 1405
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 1407
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1408
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    .line 1409
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1414
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1416
    :cond_17
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 782
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 784
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 785
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .registers 6
    .param p1, "level"    # I

    .line 2072
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    .line 2074
    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 2075
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 2076
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_18

    .line 2077
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 2082
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 2084
    :cond_18
    return-void
.end method

.method onStartTrackingHover(III)V
    .registers 4
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 1652
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .line 1265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1266
    return-void
.end method

.method onStopTrackingHover()V
    .registers 1

    .line 1660
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    .line 1273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1274
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1094
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_ed

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_ed

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_ed

    .line 1098
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_ee

    goto/16 :goto_ec

    .line 1164
    :pswitch_1b
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1166
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_27

    .line 1167
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1168
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1170
    :cond_27
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_ec

    .line 1123
    :pswitch_2c
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1125
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_37

    .line 1126
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_ec

    .line 1128
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1130
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1131
    .local v1, "y":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_53

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_66

    :cond_53
    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-ne v3, v4, :cond_69

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v3, v1, v3

    .line 1132
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_69

    .line 1134
    :cond_66
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 1137
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_69
    goto/16 :goto_ec

    .line 1141
    :pswitch_6b
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v0, :cond_71

    .line 1142
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1145
    :cond_71
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_7f

    .line 1146
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1147
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1148
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_88

    .line 1152
    :cond_7f
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1153
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1154
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1159
    :goto_88
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1160
    goto :goto_ec

    .line 1100
    :pswitch_8c
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_ce

    .line 1101
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v3

    .line 1102
    .local v0, "availableWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 1103
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v5, v0

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 1104
    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_ce

    .line 1105
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 1109
    .end local v0    # "availableWidth":I
    :cond_ce
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1111
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_dc

    goto :goto_e0

    .line 1117
    :cond_dc
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 1119
    goto :goto_ec

    .line 1112
    :cond_e0
    :goto_e0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 1114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    .line 1173
    :goto_ec
    return v2

    .line 1095
    :cond_ed
    :goto_ed
    return v1

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_6b
        :pswitch_2c
        :pswitch_1b
    .end packed-switch
.end method

.method onVisualProgressChanged(IF)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "scale"    # F

    .line 765
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    .line 767
    const v0, 0x102000d

    if-ne p1, v0, :cond_18

    .line 768
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 769
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_18

    .line 770
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 775
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 778
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_18
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1353
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1354
    return v1

    .line 1357
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 1358
    return v2

    .line 1361
    :cond_10
    sparse-switch p1, :sswitch_data_62

    .line 1393
    return v2

    .line 1363
    :sswitch_14
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1364
    return v2

    .line 1366
    :cond_1b
    if-eqz p2, :cond_30

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_30

    .line 1370
    :cond_26
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1372
    .local v0, "value":F
    float-to-int v2, v0

    invoke-virtual {p0, v2, v1, v1}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    return v1

    .line 1368
    .end local v0    # "value":F
    :cond_30
    :goto_30
    return v2

    .line 1376
    :sswitch_31
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1377
    return v2

    .line 1379
    :cond_38
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1380
    .local v0, "range":I
    int-to-float v3, v0

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1381
    .local v3, "increment":I
    const/16 v4, 0x2000

    if-ne p1, v4, :cond_52

    .line 1382
    neg-int v3, v3

    .line 1386
    :cond_52
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v1, v1}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1387
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1388
    return v1

    .line 1390
    :cond_61
    return v2

    :sswitch_data_62
    .sparse-switch
        0x1000 -> :sswitch_31
        0x2000 -> :sswitch_31
        0x102003d -> :sswitch_14
    .end sparse-switch
.end method

.method public semGetThumbBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1766
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public semSetHoverPopupType(I)V
    .registers 7
    .param p1, "type"    # I

    .line 1695
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1696
    return-void

    .line 1699
    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2b

    .line 1700
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 1703
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v1

    .line 1704
    .local v1, "contentHeight":I
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    div-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    .line 1705
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    .line 1708
    .end local v1    # "contentHeight":I
    :cond_2b
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetHoverPopupType(I)V

    .line 1709
    return-void
.end method

.method public semSetMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 1787
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-ne v0, p1, :cond_5

    .line 1788
    return-void

    .line 1790
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetMode(I)V

    .line 1791
    packed-switch p1, :pswitch_data_52

    :pswitch_b
    goto :goto_4a

    .line 1811
    :pswitch_c
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initializeExpandMode()V

    goto :goto_4a

    .line 1802
    :pswitch_10
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080c02

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1804
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080c03

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1805
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    .line 1806
    goto :goto_4a

    .line 1797
    :pswitch_2a
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080bf7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1799
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1800
    goto :goto_4a

    .line 1808
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_37
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    .line 1809
    goto :goto_4a

    .line 1793
    :pswitch_3f
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1794
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1795
    nop

    .line 1814
    :goto_4a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->drawableStateChanged()V

    .line 1815
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1816
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_37
        :pswitch_b
        :pswitch_2a
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public semSetOverlapPointForDualColor(I)V
    .registers 3
    .param p1, "value"    # I

    .line 1894
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_7

    .line 1895
    return-void

    .line 1897
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    .line 1898
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1900
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 1901
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1902
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_24

    .line 1904
    :cond_1a
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_21

    .line 1905
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initDualOverlapDrawable()V

    .line 1907
    :cond_21
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1909
    :goto_24
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1910
    return-void
.end method

.method public semSetThumbTintColor(I)V
    .registers 4
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1473
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1474
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1475
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 1477
    :cond_e
    return-void
.end method

.method public setDefaultColorForVolumePanel(Z)V
    .registers 7
    .param p1, "isClearCoverOpened"    # Z

    .line 2090
    if-eqz p1, :cond_48

    .line 2091
    const-string v0, "#ffe3e0e0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 2092
    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2093
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 2094
    const-string v0, "#fff7cdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 2095
    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2096
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_c4

    .line 2098
    :cond_48
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2099
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_56

    .line 2100
    const v1, 0x10604a8

    goto :goto_59

    .line 2101
    :cond_56
    const v1, 0x10604a9

    .line 2099
    :goto_59
    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 2102
    nop

    .line 2103
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_68

    .line 2104
    const v1, 0x10604a6

    goto :goto_6b

    .line 2105
    :cond_68
    const v1, 0x10604a7

    :goto_6b
    nop

    .line 2103
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 2102
    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2106
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_7f

    .line 2107
    const v1, 0x10604bc

    goto :goto_82

    .line 2108
    :cond_7f
    const v1, 0x10604bd

    :goto_82
    nop

    .line 2106
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 2109
    nop

    .line 2110
    const v1, 0x10604ae

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 2109
    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 2111
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v3, 0x10604ac

    const v4, 0x10604ab

    if-eqz v1, :cond_a7

    .line 2112
    move v1, v3

    goto :goto_a8

    .line 2113
    :cond_a7
    move v1, v4

    :goto_a8
    nop

    .line 2111
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2114
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_b8

    .line 2115
    goto :goto_b9

    .line 2116
    :cond_b8
    move v3, v4

    :goto_b9
    nop

    .line 2114
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 2118
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_c4
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1860
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 1861
    :cond_5
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1862
    return-void
.end method

.method public setDualModeOverlapColor(II)V
    .registers 6
    .param p1, "bgColor"    # I
    .param p2, "fgColor"    # I

    .line 1952
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1953
    .local v0, "mOverlapBackgroundColor":Landroid/content/res/ColorStateList;
    invoke-direct {p0, p2}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1956
    .local v1, "mOverlapForegroundColor":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1957
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 1961
    :cond_12
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1962
    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 1965
    :cond_1c
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1966
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1967
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .registers 3
    .param p1, "increment"    # I

    .line 653
    if-gez p1, :cond_4

    neg-int v0, p1

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 654
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 5
    .param p1, "max"    # I

    monitor-enter p0

    .line 683
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 684
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 686
    .local v0, "range":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_17

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_27

    .line 689
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_17
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 691
    :cond_27
    monitor-exit p0

    return-void

    .line 682
    .end local v0    # "range":I
    .end local p1    # "max":I
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .registers 5
    .param p1, "min"    # I

    monitor-enter p0

    .line 670
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 671
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 673
    .local v0, "range":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_17

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_27

    .line 677
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_17
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 679
    :cond_27
    monitor-exit p0

    return-void

    .line 669
    .end local v0    # "range":I
    .end local p1    # "min":I
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMuteAnimation(Z)V
    .registers 3
    .param p1, "use"    # Z

    .line 2064
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz v0, :cond_6

    .line 2065
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 2067
    :cond_6
    return-void
.end method

.method public setOverlapBackgroundForDualColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 1872
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1875
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1876
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 1880
    :cond_e
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 1882
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1883
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1754
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1755
    return-void
.end method

.method public setProgressInternal(IZZ)Z
    .registers 5
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .line 1640
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    move-result v0

    .line 1641
    .local v0, "superRet":Z
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    .line 1642
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1643
    return v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 2130
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2132
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2133
    return-void
.end method

.method public setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1852
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 1853
    :cond_5
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1854
    return-void
.end method

.method public setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z

    .line 485
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 486
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 487
    return-void
.end method

.method public setSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 898
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const-string/jumbo v0, "rects must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 900
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateGestureExclusionRects()V

    .line 901
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    if-eq p1, v0, :cond_c

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 284
    const/4 v0, 0x1

    .local v0, "needUpdate":Z
    goto :goto_d

    .line 286
    .end local v0    # "needUpdate":Z
    :cond_c
    const/4 v0, 0x0

    .line 289
    .restart local v0    # "needUpdate":Z
    :goto_d
    if-eqz p1, :cond_52

    .line 290
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 291
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 292
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 299
    :cond_1f
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2d

    .line 300
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_35

    .line 302
    :cond_2d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 306
    :goto_35
    if-eqz v0, :cond_52

    .line 307
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_4f

    .line 308
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_52

    .line 309
    :cond_4f
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 313
    :cond_52
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 315
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 316
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 318
    if-eqz v0, :cond_76

    .line 319
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 320
    if-eqz p1, :cond_76

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 323
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 324
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 327
    .end local v1    # "state":[I
    :cond_76
    return-void
.end method

.method public setThumbOffset(I)V
    .registers 2
    .param p1, "thumbOffset"    # I

    .line 473
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 474
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 475
    return-void
.end method

.method public setThumbTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 406
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 408
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 409
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 354
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 357
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 359
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 361
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 389
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    .line 390
    :cond_9
    const/4 v0, 0x0

    .line 389
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 391
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;

    .line 503
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 504
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 507
    :cond_8
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 509
    if-eqz p1, :cond_26

    .line 510
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 511
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 512
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 513
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 515
    :cond_23
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 518
    :cond_26
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 519
    return-void
.end method

.method public setTickMarkTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 591
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 594
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 595
    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 543
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 546
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 547
    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 575
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setTickMarkTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 576
    return-void
.end method

.method public setTouchDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 2146
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 2147
    return-void
.end method

.method protected updateDrawableBounds(II)V
    .registers 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1991
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1993
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1994
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1995
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 695
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
