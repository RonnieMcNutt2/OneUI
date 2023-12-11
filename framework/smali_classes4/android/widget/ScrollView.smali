.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field public static final SEM_GO_TO_TOP_BUTTON_STYLE_BLACK:I = 0x1

.field public static final SEM_GO_TO_TOP_BUTTON_STYLE_WHITE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScrollView"

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private final GTP_STATE_MAINTAINED:I

.field private final GTP_STATE_NONE:I

.field private final GTP_STATE_PRESSED:I

.field private final GTP_STATE_SHOWN:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private final ON_ABSORB_VELOCITY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private mActivePointerId:I

.field private mAutoscrollDuration:F

.field private mAutoscrollDurationGap:F

.field private mChildToScrollTo:Landroid/view/View;

.field public mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private final mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

.field private mGoToTopElevation:I

.field private mGoToTopGap:I

.field private mGoToTopRenderNode:Landroid/graphics/RenderNode;

.field private mGoToTopWH:I

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreDelaychildPrerssed:Z

.field private mIsBeingDragged:Z

.field private mIsGoToTopShown:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLinear:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mOutline:Landroid/graphics/Outline;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPreviousTextViewScroll:Z

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemEnableGoToTop:Z

.field private mSemGoToTopBitmap:Landroid/graphics/Bitmap;

.field private mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopLastState:I

.field private mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopPressed:Z

.field private final mSemGoToTopRect:Landroid/graphics/Rect;

.field private mSemGoToTopState:I

.field private mSizeChange:Z

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmSemGoToTopImage(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGoToTopShown(Landroid/widget/ScrollView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessage(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msemPlayGoToTopFadeIn(Landroid/widget/ScrollView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGoToTopFadeIn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msemPlayGoToTopFadeOut(Landroid/widget/ScrollView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGoToTopFadeOut()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msemSetupGoToTop(Landroid/widget/ScrollView;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 206
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 397
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 400
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 401
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 408
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 186
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 207
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 209
    const/16 v3, 0x2710

    iput v3, p0, Landroid/widget/ScrollView;->ON_ABSORB_VELOCITY:I

    .line 215
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 230
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 231
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 234
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 236
    new-instance v3, Landroid/graphics/Outline;

    invoke-direct {v3}, Landroid/graphics/Outline;-><init>()V

    iput-object v3, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    .line 239
    iput v2, p0, Landroid/widget/ScrollView;->GTP_STATE_NONE:I

    .line 240
    iput v0, p0, Landroid/widget/ScrollView;->GTP_STATE_SHOWN:I

    .line 241
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/ScrollView;->GTP_STATE_PRESSED:I

    .line 242
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/ScrollView;->GTP_STATE_MAINTAINED:I

    .line 246
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 247
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 248
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 249
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    .line 256
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 261
    new-array v5, v3, [I

    iput-object v5, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 262
    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 271
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 272
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 294
    iput v2, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 295
    iput v2, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 300
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 301
    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 302
    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 303
    const-wide/16 v7, 0x12c

    iput-wide v7, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    .line 304
    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 305
    iput v4, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 310
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 311
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 312
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    .line 324
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 325
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    .line 330
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 335
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 340
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 342
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 346
    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_FLING:I

    .line 347
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    .line 348
    const v1, 0x4188cccd    # 17.1f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    .line 349
    const v1, 0x3f96c8b4    # 1.178f

    iput v1, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 964
    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

    .line 3166
    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3276
    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    .line 3280
    new-instance v1, Landroid/widget/ScrollView$3;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    .line 3286
    new-instance v1, Landroid/widget/ScrollView$4;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    .line 3292
    new-instance v1, Landroid/widget/ScrollView$5;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 409
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 410
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 412
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0, v0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 413
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0, v0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 415
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 417
    sget-object v0, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 419
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->ScrollView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v0

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ScrollView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 422
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 424
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_f3

    .line 427
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setRevealOnFocusHint(Z)V

    .line 429
    :cond_f3
    return-void
.end method

.method private autoScrollWithDuration(F)V
    .registers 5
    .param p1, "duration"    # F

    .line 1887
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1888
    .local v0, "tempdur":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoScrollWithDuration() duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    nop

    .line 1892
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    .line 1890
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 1894
    return-void
.end method

.method private canScroll()Z
    .registers 7

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 636
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_19

    .line 637
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 638
    .local v2, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 640
    .end local v2    # "childHeight":I
    :cond_19
    return v0
.end method

.method private canScrollDown()Z
    .registers 6

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 655
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1c

    .line 656
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    .line 658
    :cond_1c
    return v0
.end method

.method private canScrollUp()Z
    .registers 7

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 646
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_19

    .line 647
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 648
    .local v2, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 650
    .end local v2    # "childHeight":I
    :cond_19
    return v0
.end method

.method private static clamp(III)I
    .registers 4
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .line 3059
    if-ge p1, p2, :cond_d

    if-gez p0, :cond_5

    goto :goto_d

    .line 3077
    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_c

    .line 3083
    sub-int v0, p2, p1

    return v0

    .line 3085
    :cond_c
    return p0

    .line 3075
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method private consumeFlingInStretch(I)I
    .registers 7
    .param p1, "unconsumed"    # I

    .line 2463
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-lez p1, :cond_39

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_39

    .line 2464
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2465
    .local v1, "size":I
    neg-int v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 2466
    .local v3, "deltaDistance":F
    neg-int v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2467
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v4, v0

    .line 2466
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2468
    .local v0, "consumed":I
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2469
    if-eq v0, p1, :cond_36

    .line 2470
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2472
    :cond_36
    sub-int v2, p1, v0

    return v2

    .line 2474
    .end local v0    # "consumed":I
    .end local v1    # "size":I
    .end local v3    # "deltaDistance":F
    :cond_39
    if-gez p1, :cond_6b

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_6b

    .line 2475
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2476
    .restart local v1    # "size":I
    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 2477
    .restart local v3    # "deltaDistance":F
    int-to-float v4, v1

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 2478
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v4, v0

    .line 2477
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2479
    .restart local v0    # "consumed":I
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2480
    if-eq v0, p1, :cond_68

    .line 2481
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2483
    :cond_68
    sub-int v2, p1, v0

    return v2

    .line 2485
    .end local v0    # "consumed":I
    .end local v1    # "size":I
    .end local v3    # "deltaDistance":F
    :cond_6b
    return p1
.end method

.method private doScrollY(I)V
    .registers 4
    .param p1, "delta"    # I

    .line 2228
    if-eqz p1, :cond_e

    .line 2229
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 2230
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_e

    .line 2232
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2235
    :cond_e
    :goto_e
    return-void
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3021
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 3022
    .local v0, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3024
    .local v1, "restoreCount":I
    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3026
    if-nez v0, :cond_16

    iget v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v2, :cond_16

    .line 3027
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3029
    :cond_16
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    .line 3030
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3031
    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    .line 3032
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    .line 3033
    .local v2, "alpha":F
    iget-object v4, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v4

    .line 3034
    .local v4, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v5, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 3035
    iget-object v5, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v6, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 3036
    iget-object v5, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, v2}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 3037
    iget-object v5, p0, Landroid/widget/ScrollView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v3, v6}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3038
    iget-object v3, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 3039
    iget-object v3, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 3040
    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    .line 3041
    .end local v2    # "alpha":F
    .end local v4    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    goto :goto_61

    .line 3042
    :cond_5c
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3045
    :cond_61
    :goto_61
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3046
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 3049
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 3050
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3049
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3051
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3052
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3053
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3054
    return-object v0
.end method

.method private endDrag()V
    .registers 2

    .line 2857
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2859
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 2861
    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2862
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2863
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2866
    :cond_16
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_20

    .line 2867
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2870
    :cond_20
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1965
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1966
    .local v0, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1975
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v2, 0x0

    .line 1977
    .local v2, "foundFullyContainedFocusable":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1978
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v3, :cond_54

    .line 1979
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1980
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1981
    .local v6, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1983
    .local v7, "viewBottom":I
    if-ge p2, v7, :cond_51

    if-ge v6, p3, :cond_51

    .line 1989
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge p2, v6, :cond_28

    if-ge v7, p3, :cond_28

    move v10, v9

    goto :goto_29

    :cond_28
    move v10, v8

    .line 1992
    .local v10, "viewIsFullyContained":Z
    :goto_29
    if-nez v1, :cond_2e

    .line 1994
    move-object v1, v5

    .line 1995
    move v2, v10

    goto :goto_51

    .line 1997
    :cond_2e
    if-eqz p1, :cond_36

    .line 1998
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v6, v11, :cond_3e

    :cond_36
    if-nez p1, :cond_40

    .line 2000
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v7, v11, :cond_40

    :cond_3e
    move v8, v9

    goto :goto_41

    :cond_40
    nop

    .line 2002
    .local v8, "viewIsCloserToBoundary":Z
    :goto_41
    if-eqz v2, :cond_49

    .line 2003
    if-eqz v10, :cond_51

    if-eqz v8, :cond_51

    .line 2009
    move-object v1, v5

    goto :goto_51

    .line 2012
    :cond_49
    if-eqz v10, :cond_4e

    .line 2014
    move-object v1, v5

    .line 2015
    const/4 v2, 0x1

    goto :goto_51

    .line 2016
    :cond_4e
    if-eqz v8, :cond_51

    .line 2021
    move-object v1, v5

    .line 1978
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewTop":I
    .end local v7    # "viewBottom":I
    .end local v8    # "viewIsCloserToBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    :cond_51
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2028
    .end local v4    # "i":I
    :cond_54
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .registers 6
    .param p1, "velocityY"    # I

    .line 2810
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v0, :cond_6

    if-lez p1, :cond_11

    :cond_6
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2811
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_13

    if-gez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 2812
    .local v0, "canFling":Z
    :goto_14
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 2813
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    move-result v1

    .line 2814
    .local v1, "consumed":Z
    if-eqz v0, :cond_27

    .line 2815
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_5e

    .line 2816
    :cond_27
    if-nez v1, :cond_5e

    .line 2817
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_45

    .line 2818
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v3, p1

    invoke-direct {p0, v2, v3}, Landroid/widget/ScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2819
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5e

    .line 2821
    :cond_41
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_5e

    .line 2823
    :cond_45
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 2824
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v2, p1}, Landroid/widget/ScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2825
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5e

    .line 2827
    :cond_5b
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 2832
    .end local v1    # "consumed":Z
    :cond_5e
    :goto_5e
    return-void
.end method

.method private flingWithoutAcc(I)V
    .registers 18
    .param p1, "velocityY"    # I

    .line 2793
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_43

    .line 2794
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 2795
    .local v1, "height":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2797
    .local v3, "bottom":I
    iget-object v4, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v8, v3, v1

    .line 2798
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    div-int/lit8 v14, v1, 0x2

    const/4 v15, 0x1

    .line 2797
    move/from16 v8, p1

    invoke-virtual/range {v4 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    .line 2800
    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v2, :cond_40

    .line 2801
    const-string v2, "ScrollView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2804
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2806
    .end local v1    # "height":I
    .end local v3    # "bottom":I
    :cond_43
    return-void
.end method

.method private getScrollRange()I
    .registers 7

    .line 1939
    const/4 v0, 0x0

    .line 1940
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 1941
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1942
    .local v2, "child":Landroid/view/View;
    nop

    .line 1943
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1942
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1945
    .end local v2    # "child":Landroid/view/View;
    :cond_20
    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 3185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_13a

    goto/16 :goto_139

    .line 3187
    :pswitch_7
    const/4 v0, 0x0

    .line 3188
    .local v0, "offset":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    .line 3190
    .local v1, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 3191
    iget-wide v4, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 3193
    iget-wide v4, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_26

    .line 3194
    goto/16 :goto_139

    .line 3196
    :cond_26
    iget v2, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 3197
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 3196
    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3199
    iget-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v7, 0x2

    cmp-long v3, v5, v7

    const-wide/16 v7, 0x4

    if-lez v3, :cond_57

    cmp-long v3, v5, v7

    if-gez v3, :cond_57

    .line 3200
    int-to-double v5, v2

    const-wide v7, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v5, v7

    double-to-int v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_7c

    .line 3201
    :cond_57
    cmp-long v3, v5, v7

    const-wide/16 v7, 0x5

    if-ltz v3, :cond_6d

    cmp-long v3, v5, v7

    if-gez v3, :cond_6d

    .line 3202
    int-to-double v5, v2

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v5, v7

    double-to-int v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_7c

    .line 3203
    :cond_6d
    cmp-long v3, v5, v7

    if-ltz v3, :cond_7c

    .line 3204
    int-to-double v5, v2

    const-wide v7, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v5, v7

    double-to-int v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3207
    :cond_7c
    :goto_7c
    iget v2, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_86

    .line 3208
    iget v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v2, -0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    goto :goto_89

    .line 3210
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :cond_86
    iget v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/2addr v2, v4

    .line 3213
    .end local v0    # "offset":I
    .restart local v2    # "offset":I
    :goto_89
    if-gez v2, :cond_9c

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v0, :cond_9c

    .line 3214
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3215
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v3, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v5, v3

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_139

    .line 3216
    :cond_9c
    if-lez v2, :cond_af

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v0, v1, :cond_af

    .line 3217
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3218
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v3, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v5, v3

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_139

    .line 3221
    :cond_af
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v0

    .line 3222
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_bc

    if-ne v0, v4, :cond_ba

    if-lez v1, :cond_ba

    goto :goto_bc

    :cond_ba
    const/4 v5, 0x0

    goto :goto_bd

    :cond_bc
    :goto_bc
    move v5, v4

    .line 3225
    .local v5, "canOverscroll":Z
    :goto_bd
    if-eqz v5, :cond_130

    iget-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_130

    .line 3226
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/16 v7, 0x2710

    if-ne v6, v3, :cond_ef

    .line 3227
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v6

    .line 3228
    .local v3, "width":I
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3229
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 3231
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_11a

    .line 3232
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_11a

    .line 3234
    .end local v3    # "width":I
    :cond_ef
    if-ne v6, v4, :cond_11a

    .line 3235
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v6

    .line 3236
    .restart local v3    # "width":I
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3237
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 3239
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 3241
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_11b

    .line 3242
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_11b

    .line 3234
    .end local v3    # "width":I
    :cond_11a
    :goto_11a
    nop

    .line 3246
    :cond_11b
    :goto_11b
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_12b

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12e

    .line 3247
    :cond_12b
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 3249
    :cond_12e
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 3252
    :cond_130
    if-nez v5, :cond_138

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_138

    .line 3253
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 3256
    .end local v0    # "overscrollMode":I
    .end local v5    # "canOverscroll":Z
    :cond_138
    nop

    .line 3260
    .end local v1    # "range":I
    .end local v2    # "offset":I
    :goto_139
    return-void

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method private inChild(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1062
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    .line 1063
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1064
    .local v0, "scrollY":I
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1065
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_29

    .line 1066
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_29

    .line 1067
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_29

    .line 1068
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 1065
    :goto_2a
    return v1

    .line 1070
    .end local v0    # "scrollY":I
    .end local v2    # "child":Landroid/view/View;
    :cond_2b
    return v1
.end method

.method private initGoToTop()V
    .registers 6

    .line 567
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 568
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 569
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 570
    .local v1, "value":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x112014c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 572
    .local v2, "resolved":Z
    if-eqz v2, :cond_2c

    .line 573
    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    .line 575
    :cond_2c
    const v3, 0x10503fc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mGoToTopWH:I

    .line 577
    const v3, 0x10503fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mGoToTopGap:I

    .line 579
    const v3, 0x10503f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mGoToTopElevation:I

    .line 581
    const-string v3, "ScrollView"

    const-string v4, "initGoToTop"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v4, 0x0

    if-eqz v3, :cond_58

    .line 583
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 586
    :cond_58
    iput v4, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 587
    iput v4, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 588
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 589
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 590
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 1074
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 1075
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    .line 1077
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1079
    :goto_e
    return-void
.end method

.method private initScrollView()V
    .registers 3

    .line 548
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 549
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 550
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 552
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 553
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 554
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 555
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 556
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 557
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 558
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    .line 560
    invoke-direct {p0}, Landroid/widget/ScrollView;->initGoToTop()V

    .line 562
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 1082
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 1083
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1085
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;

    .line 2207
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 2760
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2761
    return v0

    .line 2764
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2765
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .line 2215
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2216
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2218
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 2219
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 2218
    :goto_24
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1662
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1663
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_2b

    .line 1667
    if-nez v0, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 1668
    .local v2, "newPointerIndex":I
    :goto_17
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1669
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1670
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2b

    .line 1671
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1674
    .end local v2    # "newPointerIndex":I
    :cond_2b
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 1088
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 1089
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1090
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1092
    :cond_a
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 11
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 2111
    const/4 v0, 0x1

    .line 2113
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2114
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 2115
    .local v2, "containerTop":I
    add-int v3, v2, v1

    .line 2116
    .local v3, "containerBottom":I
    const/16 v4, 0x21

    if-ne p1, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    .line 2118
    .local v4, "up":Z
    :goto_12
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 2119
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_19

    .line 2120
    move-object v5, p0

    .line 2123
    :cond_19
    if-lt p2, v2, :cond_1f

    if-gt p3, v3, :cond_1f

    .line 2124
    const/4 v0, 0x0

    goto :goto_29

    .line 2126
    :cond_1f
    if-eqz v4, :cond_24

    sub-int v6, p2, v2

    goto :goto_26

    :cond_24
    sub-int v6, p3, v3

    .line 2127
    .local v6, "delta":I
    :goto_26
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2130
    .end local v6    # "delta":I
    :goto_29
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_32

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2132
    :cond_32
    return v0
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 2519
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2520
    .local v0, "delta":I
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    .line 2521
    .local v2, "scroll":Z
    :goto_a
    if-eqz v2, :cond_15

    .line 2522
    if-eqz p2, :cond_12

    .line 2523
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_15

    .line 2525
    :cond_12
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2528
    :cond_15
    :goto_15
    return v2
.end method

.method private semGetParentViewRotation()F
    .registers 4

    .line 3536
    move-object v0, p0

    .line 3537
    .local v0, "parent":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 3538
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 3539
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3540
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    return v1

    .line 3543
    :cond_1e
    return v2
.end method

.method private semGetRotatePointerIcon(I)I
    .registers 9
    .param p1, "iconId"    # I

    .line 3504
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRotation()F

    move-result v0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semGetParentViewRotation()F

    move-result v1

    add-float/2addr v0, v1

    .line 3509
    .local v0, "rotation":F
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x4e2b

    if-ne p1, v3, :cond_11

    move v4, v1

    goto :goto_12

    :cond_11
    move v4, v2

    .line 3510
    .local v4, "scrollUp":Z
    :goto_12
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    .line 3511
    .local v1, "isNegative":Z
    :goto_19
    if-eqz v1, :cond_1e

    const/16 v5, -0x2d

    goto :goto_20

    :cond_1e
    const/16 v5, 0x2d

    :goto_20
    int-to-float v5, v5

    add-float/2addr v5, v0

    .line 3512
    .local v5, "editedRotation":F
    const/high16 v6, 0x42b40000    # 90.0f

    div-float v6, v5, v6

    float-to-int v6, v6

    .line 3513
    .local v6, "direction":I
    if-eqz v4, :cond_2a

    goto :goto_2f

    :cond_2a
    if-eqz v1, :cond_2e

    const/4 v2, -0x2

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x2

    :goto_2f
    add-int/2addr v6, v2

    .line 3514
    rem-int/lit8 v6, v6, 0x4

    .line 3516
    if-eqz v1, :cond_38

    if-eqz v6, :cond_38

    .line 3517
    add-int/lit8 v6, v6, 0x4

    .line 3521
    :cond_38
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    packed-switch v2, :pswitch_data_4c

    .line 3531
    const/16 v2, 0x4e21

    return v2

    .line 3529
    :pswitch_42
    const/16 v2, 0x4e31

    return v2

    .line 3527
    :pswitch_45
    const/16 v2, 0x4e2f

    return v2

    .line 3525
    :pswitch_48
    const/16 v2, 0x4e2d

    return v2

    .line 3523
    :pswitch_4b
    return v3

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
    .end packed-switch
.end method

.method private semIsSupportGotoTop()Z
    .registers 2

    .line 984
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private semIsTalkBackIsRunning()Z
    .registers 4

    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, "isRunning":Z
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 975
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 976
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 977
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 978
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    :goto_2b
    move v0, v2

    .line 980
    :cond_2c
    return v0
.end method

.method private semPlayGoToTopFadeIn()V
    .registers 4

    .line 3391
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3392
    return-void

    .line 3394
    :cond_9
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3395
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3396
    return-void
.end method

.method private semPlayGoToTopFadeOut()V
    .registers 4

    .line 3383
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3384
    return-void

    .line 3386
    :cond_9
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3387
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3388
    return-void
.end method

.method private semSetupGoToTop(I)V
    .registers 23
    .param p1, "where"    # I

    .line 3300
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v1, :cond_7

    .line 3301
    return-void

    .line 3303
    :cond_7
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3305
    const/4 v1, 0x3

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_1d

    .line 3306
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget v4, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    goto :goto_1c

    :cond_1b
    move v4, v2

    :goto_1c
    move v3, v4

    .line 3309
    .end local p1    # "where":I
    .local v3, "where":I
    :cond_1d
    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    .line 3310
    iget-object v5, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3313
    :cond_27
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-nez v5, :cond_36

    if-nez v3, :cond_36

    iget v5, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v5, :cond_36

    .line 3314
    iget-object v5, v0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3317
    :cond_36
    iput v3, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 3318
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    .line 3319
    .local v5, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    .line 3320
    .local v6, "h":I
    iget v7, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v7, v5, v7

    iget v8, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v7, v8

    .line 3321
    .local v7, "contentW":I
    iget v8, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    .line 3323
    .local v8, "centerX":I
    filled-new-array {v2, v2}, [I

    move-result-object v9

    .line 3324
    .local v9, "locOnScr":[I
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 3325
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 3326
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 3327
    .local v11, "display":Landroid/view/Display;
    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v12

    .line 3328
    .local v12, "rotate":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_76

    if-ne v12, v1, :cond_74

    goto :goto_76

    :cond_74
    move v1, v2

    goto :goto_77

    :cond_76
    :goto_76
    move v1, v13

    .line 3329
    .local v1, "isLandScape":Z
    :goto_77
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 3330
    .local v14, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3332
    if-eqz v1, :cond_84

    iget v15, v14, Landroid/graphics/Rect;->left:I

    goto :goto_85

    :cond_84
    move v15, v2

    .line 3333
    .local v15, "left":I
    :goto_85
    if-eqz v1, :cond_8a

    iget v13, v14, Landroid/graphics/Rect;->right:I

    goto :goto_8c

    :cond_8a
    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3335
    .local v13, "right":I
    :goto_8c
    aget v4, v9, v2

    if-ge v4, v15, :cond_a0

    .line 3336
    aget v4, v9, v2

    neg-int v4, v4

    .line 3337
    .local v4, "overlappedW":I
    iget v2, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v4, v2, :cond_a0

    .line 3338
    iget v2, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v2, v4, v2

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    .line 3343
    .end local v4    # "overlappedW":I
    :cond_a0
    const/4 v2, 0x0

    aget v4, v9, v2

    add-int/2addr v4, v5

    if-le v4, v13, :cond_b9

    .line 3344
    aget v4, v9, v2

    add-int/2addr v4, v5

    iget v2, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v2

    .line 3345
    .restart local v4    # "overlappedW":I
    iget v2, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v4, v2, :cond_b9

    .line 3346
    iget v2, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v2, v4, v2

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v8, v2

    .line 3350
    .end local v4    # "overlappedW":I
    :cond_b9
    iget v2, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    packed-switch v2, :pswitch_data_136

    move/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v7

    .end local v1    # "isLandScape":Z
    .end local v5    # "w":I
    .end local v7    # "contentW":I
    .local v18, "isLandScape":Z
    .local v19, "w":I
    .local v20, "contentW":I
    goto :goto_f3

    .line 3358
    .end local v18    # "isLandScape":Z
    .end local v19    # "w":I
    .end local v20    # "contentW":I
    .restart local v1    # "isLandScape":Z
    .restart local v5    # "w":I
    .restart local v7    # "contentW":I
    :pswitch_c5
    iget-object v2, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/widget/ScrollView;->mGoToTopWH:I

    div-int/lit8 v17, v4, 0x2

    move/from16 v18, v1

    .end local v1    # "isLandScape":Z
    .restart local v18    # "isLandScape":Z
    sub-int v1, v8, v17

    sub-int v17, v6, v4

    move/from16 v19, v5

    .end local v5    # "w":I
    .restart local v19    # "w":I
    iget v5, v0, Landroid/widget/ScrollView;->mGoToTopGap:I

    move/from16 v20, v7

    .end local v7    # "contentW":I
    .restart local v20    # "contentW":I
    sub-int v7, v17, v5

    const/16 v16, 0x2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    sub-int v5, v6, v5

    invoke-virtual {v2, v1, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3360
    goto :goto_f3

    .line 3352
    .end local v18    # "isLandScape":Z
    .end local v19    # "w":I
    .end local v20    # "contentW":I
    .restart local v1    # "isLandScape":Z
    .restart local v5    # "w":I
    .restart local v7    # "contentW":I
    :pswitch_e4
    move/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v7

    .end local v1    # "isLandScape":Z
    .end local v5    # "w":I
    .end local v7    # "contentW":I
    .restart local v18    # "isLandScape":Z
    .restart local v19    # "w":I
    .restart local v20    # "contentW":I
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-eqz v1, :cond_f3

    .line 3353
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3365
    :cond_f3
    :goto_f3
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3367
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-eqz v1, :cond_101

    .line 3368
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    .line 3371
    :cond_101
    const/4 v1, 0x1

    if-ne v3, v1, :cond_111

    iget v1, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v1, :cond_10c

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v1, :cond_111

    .line 3372
    :cond_10c
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3375
    :cond_111
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 3376
    iget v2, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iput v2, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 3377
    iget-object v2, v0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    iget-object v4, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 3378
    iget-object v2, v0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v4, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/RenderNode;->setPosition(Landroid/graphics/Rect;)Z

    .line 3379
    iget-object v2, v0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 3380
    return-void

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_c5
        :pswitch_c5
    .end packed-switch
.end method

.method private semShowGoToTop()V
    .registers 3

    .line 3497
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_16

    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3498
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 3499
    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 3501
    :cond_16
    return-void
.end method

.method private shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .registers 7
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p2, "velocity"    # I

    .line 2844
    const/4 v0, 0x1

    if-lez p2, :cond_4

    .line 2845
    return v0

    .line 2847
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 2850
    .local v1, "distance":F
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    neg-int v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->getSplineFlingDistance(I)D

    move-result-wide v2

    double-to-float v2, v2

    .line 2852
    .local v2, "flingDistance":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private shouldDisplayEdgeEffects()Z
    .registers 3

    .line 1239
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .line 3263
    const/16 v0, 0x4e2b

    if-eq p2, v0, :cond_8

    const/16 v0, 0x4e2f

    if-ne p2, v0, :cond_c

    .line 3265
    :cond_8
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->semGetRotatePointerIcon(I)I

    move-result p2

    .line 3268
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 3269
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_16

    .line 3270
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    goto :goto_2e

    .line 3272
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change PointerIcon to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :goto_2e
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 596
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 600
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 601
    return-void

    .line 597
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 605
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 609
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 610
    return-void

    .line 606
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 623
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 627
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 628
    return-void

    .line 624
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 614
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 618
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    return-void

    .line 615
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrowScroll(I)Z
    .registers 12
    .param p1, "direction"    # I

    .line 2144
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2145
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 2147
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2149
    .local v1, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    .line 2151
    .local v2, "maxJump":I
    const/4 v3, 0x1

    if-eqz v1, :cond_4e

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2152
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2153
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2154
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v4

    .line 2155
    .local v4, "scrollDelta":I
    invoke-direct {p0, v4}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2157
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v5, :cond_4a

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_4a

    iget v5, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4a

    if-eqz v4, :cond_4a

    .line 2158
    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2159
    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 2162
    :cond_4a
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2163
    .end local v4    # "scrollDelta":I
    goto :goto_91

    .line 2165
    :cond_4e
    move v4, v2

    .line 2167
    .restart local v4    # "scrollDelta":I
    const/16 v5, 0x21

    const/4 v6, 0x0

    const/16 v7, 0x82

    if-ne p1, v5, :cond_61

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    if-ge v5, v4, :cond_61

    .line 2168
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    goto :goto_83

    .line 2169
    :cond_61
    if-ne p1, v7, :cond_83

    .line 2170
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_83

    .line 2171
    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2172
    .local v5, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    .line 2173
    .local v8, "screenBottom":I
    sub-int v9, v5, v8

    if-ge v9, v2, :cond_83

    .line 2174
    sub-int v4, v5, v8

    .line 2178
    .end local v5    # "daBottom":I
    .end local v8    # "screenBottom":I
    :cond_83
    :goto_83
    if-nez v4, :cond_86

    .line 2179
    return v6

    .line 2182
    :cond_86
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 2184
    if-ne p1, v7, :cond_8d

    move v5, v4

    goto :goto_8e

    :cond_8d
    neg-int v5, v4

    :goto_8e
    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2187
    .end local v4    # "scrollDelta":I
    :goto_91
    if-eqz v0, :cond_ae

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 2188
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 2194
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v4

    .line 2195
    .local v4, "descendantFocusability":I
    const/high16 v5, 0x20000

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2196
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 2197
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2199
    .end local v4    # "descendantFocusability":I
    :cond_ae
    return v3
.end method

.method public computeScroll()V
    .registers 21

    .line 2402
    move-object/from16 v10, p0

    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 2419
    iget v11, v10, Landroid/widget/ScrollView;->mScrollX:I

    .line 2420
    .local v11, "oldX":I
    iget v12, v10, Landroid/widget/ScrollView;->mScrollY:I

    .line 2421
    .local v12, "oldY":I
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .line 2422
    .local v13, "x":I
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .line 2423
    .local v14, "y":I
    sub-int v0, v14, v12

    invoke-direct {v10, v0}, Landroid/widget/ScrollView;->consumeFlingInStretch(I)I

    move-result v15

    .line 2425
    .local v15, "deltaY":I
    if-ne v11, v13, :cond_28

    if-eqz v15, :cond_25

    goto :goto_28

    :cond_25
    move/from16 v18, v13

    goto :goto_83

    .line 2426
    :cond_28
    :goto_28
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v9

    .line 2427
    .local v9, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v8

    .line 2428
    .local v8, "overscrollMode":I
    const/4 v0, 0x1

    if-eqz v8, :cond_39

    if-ne v8, v0, :cond_38

    if-lez v9, :cond_38

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :cond_39
    :goto_39
    move/from16 v16, v0

    .line 2431
    .local v16, "canOverscroll":Z
    sub-int v1, v13, v11

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v6, v10, Landroid/widget/ScrollView;->mOverflingDistance:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v2, v15

    move v3, v11

    move v4, v12

    move/from16 v18, v6

    move v6, v9

    move/from16 v19, v8

    .end local v8    # "overscrollMode":I
    .local v19, "overscrollMode":I
    move/from16 v8, v18

    move/from16 v18, v13

    move v13, v9

    .end local v9    # "range":I
    .local v13, "range":I
    .local v18, "x":I
    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 2433
    iget v0, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, v10, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v10, v0, v1, v11, v12}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2435
    if-eqz v16, :cond_83

    if-eqz v15, :cond_83

    .line 2436
    if-gez v14, :cond_73

    if-ltz v12, :cond_73

    .line 2437
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_83

    .line 2438
    :cond_73
    if-le v14, v13, :cond_83

    if-gt v12, v13, :cond_83

    .line 2439
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2444
    .end local v13    # "range":I
    .end local v16    # "canOverscroll":Z
    .end local v19    # "overscrollMode":I
    :cond_83
    :goto_83
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 2446
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2448
    .end local v11    # "oldX":I
    .end local v12    # "oldY":I
    .end local v14    # "y":I
    .end local v15    # "deltaY":I
    .end local v18    # "x":I
    :cond_8c
    goto :goto_97

    .line 2449
    :cond_8d
    iget-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_97

    .line 2450
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2451
    const/4 v0, 0x0

    iput-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2454
    :cond_97
    :goto_97
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2540
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2542
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 2543
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 2544
    .local v2, "screenTop":I
    add-int v3, v2, v0

    .line 2546
    .local v3, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 2549
    .local v4, "fadingEdge":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    .line 2550
    add-int/2addr v2, v4

    .line 2554
    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_28

    .line 2555
    sub-int/2addr v3, v4

    .line 2558
    :cond_28
    const/4 v5, 0x0

    .line 2560
    .local v5, "scrollYDelta":I
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4f

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-le v6, v2, :cond_4f

    .line 2565
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v6, v0, :cond_3c

    .line 2567
    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_40

    .line 2570
    :cond_3c
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 2574
    :goto_40
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2575
    .local v1, "bottom":I
    sub-int v6, v1, v3

    .line 2576
    .local v6, "distanceToBottom":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2578
    .end local v1    # "bottom":I
    .end local v6    # "distanceToBottom":I
    :cond_4e
    goto :goto_71

    :cond_4f
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4e

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_4e

    .line 2583
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, v0, :cond_63

    .line 2585
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v1

    sub-int/2addr v5, v1

    goto :goto_68

    .line 2588
    :cond_63
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    sub-int/2addr v5, v1

    .line 2592
    :goto_68
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2594
    :goto_71
    return v5
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .line 2362
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 7

    .line 2342
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 2343
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 2344
    .local v1, "contentHeight":I
    if-nez v0, :cond_11

    .line 2345
    return v1

    .line 2348
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2349
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2350
    .local v4, "scrollY":I
    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2351
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_26

    .line 2352
    sub-int/2addr v3, v4

    goto :goto_2b

    .line 2353
    :cond_26
    if-le v4, v2, :cond_2b

    .line 2354
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    .line 2357
    :cond_2b
    :goto_2b
    return v3
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->isHoveringUIEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1296
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 1299
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1302
    .local v2, "action":I
    const/16 v3, 0x9

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1e

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    if-eqz v3, :cond_51

    .line 1303
    :cond_1e
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 1305
    .local v3, "toolType":I
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1306
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    .line 1309
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-nez v7, :cond_2c

    .line 1310
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1314
    :cond_2c
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_48

    if-ne v3, v4, :cond_48

    .line 1316
    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_hovering"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_43

    move v7, v6

    goto :goto_44

    :cond_43
    move v7, v5

    .line 1319
    .local v7, "isHoveringOn":Z
    :goto_44
    if-nez v7, :cond_48

    .line 1320
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1325
    .end local v7    # "isHoveringOn":Z
    :cond_48
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_51

    const/4 v7, 0x3

    if-ne v3, v7, :cond_51

    .line 1326
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1331
    .end local v3    # "toolType":I
    :cond_51
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_5a

    .line 1332
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1336
    :cond_5a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1337
    .local v3, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    .line 1338
    .local v7, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    .line 1339
    .local v8, "childCount":I
    const/4 v9, 0x0

    .line 1340
    .local v9, "contentBottom":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    .line 1343
    .local v10, "range":I
    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v11, :cond_78

    .line 1344
    new-instance v11, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v11, v0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 1347
    :cond_78
    iget v11, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v11, :cond_80

    iget v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v11, :cond_a8

    .line 1348
    :cond_80
    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 1350
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 1348
    const/high16 v12, 0x41c80000    # 25.0f

    invoke-static {v6, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 1352
    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 1354
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 1352
    invoke-static {v6, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    add-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 1357
    :cond_a8
    if-eqz v8, :cond_ae

    .line 1358
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    .line 1361
    :cond_ae
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v4, :cond_b6

    move v11, v6

    goto :goto_b7

    :cond_b6
    move v11, v5

    .line 1363
    .local v11, "isPossibleTooltype":Z
    :goto_b7
    iget v12, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/16 v13, 0x4e21

    if-le v7, v12, :cond_c3

    iget v12, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v12, v9, v12

    if-lt v7, v12, :cond_1e7

    :cond_c3
    if-lez v3, :cond_1e7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v12

    if-gt v3, v12, :cond_1e7

    if-eqz v10, :cond_1e7

    if-ltz v7, :cond_db

    iget v12, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v12, :cond_db

    iget v12, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v12, :cond_db

    iget-boolean v12, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v12, :cond_1e7

    :cond_db
    iget v12, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v12, v9, v12

    if-lt v7, v12, :cond_eb

    if-gt v7, v9, :cond_eb

    iget v12, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v12, v10, :cond_eb

    iget-boolean v12, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v12, :cond_1e7

    :cond_eb
    if-eqz v11, :cond_f5

    .line 1366
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    const/16 v4, 0x20

    if-eq v12, v4, :cond_1e7

    :cond_f5
    if-eqz v11, :cond_1e7

    .line 1367
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->isLockScreenMode()Z

    move-result v4

    if-nez v4, :cond_1e7

    iget-boolean v4, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v4, :cond_10f

    iget v4, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v4, :cond_10f

    iget-object v4, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_10f

    goto/16 :goto_1e7

    .line 1390
    :cond_10f
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v4, :cond_119

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1393
    :cond_119
    const/16 v4, 0x4e2f

    const/16 v12, 0x4e2b

    packed-switch v2, :pswitch_data_228

    :pswitch_120
    goto/16 :goto_1e6

    .line 1451
    :pswitch_122
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 1452
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1454
    :cond_12f
    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1455
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1456
    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1457
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1458
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1459
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1395
    :pswitch_141
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1397
    if-ltz v7, :cond_164

    iget v5, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v5, :cond_164

    .line 1399
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1e6

    .line 1400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1401
    invoke-direct {v0, v1, v12}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1402
    const/4 v4, 0x2

    iput v4, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1403
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1e6

    .line 1406
    :cond_164
    iget v5, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v5, v9, v5

    if-lt v7, v5, :cond_1e6

    if-gt v7, v9, :cond_1e6

    .line 1408
    iget-object v5, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_1e6

    .line 1409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1410
    invoke-direct {v0, v1, v4}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1411
    iput v6, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1412
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_1e6

    .line 1419
    :pswitch_185
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v5, :cond_195

    .line 1420
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1421
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1422
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1425
    :cond_195
    if-ltz v7, :cond_1bd

    iget v5, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v5, :cond_1bd

    .line 1427
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1e6

    .line 1428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1429
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v4, :cond_1b1

    iget v4, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    if-ne v4, v6, :cond_1b4

    .line 1430
    :cond_1b1
    invoke-direct {v0, v1, v12}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1432
    :cond_1b4
    const/4 v4, 0x2

    iput v4, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1433
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_1e6

    .line 1436
    :cond_1bd
    iget v5, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v5, v9, v5

    if-lt v7, v5, :cond_1e6

    if-gt v7, v9, :cond_1e6

    .line 1438
    iget-object v5, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_1e6

    .line 1439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1440
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v5, :cond_1dc

    iget v5, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v12, 0x2

    if-ne v5, v12, :cond_1df

    .line 1441
    :cond_1dc
    invoke-direct {v0, v1, v4}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1443
    :cond_1df
    iput v6, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1444
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1463
    :cond_1e6
    :goto_1e6
    return v6

    .line 1369
    :cond_1e7
    :goto_1e7
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1f7

    .line 1370
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1371
    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1374
    :cond_1f7
    iget v4, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v7, v4, :cond_201

    iget v4, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v4, v9, v4

    if-lt v7, v4, :cond_209

    :cond_201
    if-lez v3, :cond_209

    .line 1375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v4

    if-le v3, v4, :cond_20b

    .line 1376
    :cond_209
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1379
    :cond_20b
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v4, :cond_217

    iget-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_21a

    .line 1380
    :cond_217
    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1383
    :cond_21a
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1384
    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1385
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1387
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    nop

    :pswitch_data_228
    .packed-switch 0x7
        :pswitch_185
        :pswitch_120
        :pswitch_141
        :pswitch_122
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 746
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 762
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 763
    .local v1, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 764
    .local v2, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    .line 765
    .local v3, "childCount":I
    const/4 v4, 0x0

    .line 766
    .local v4, "contentBottom":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 767
    .local v5, "range":I
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v6

    .line 771
    .local v6, "needToScroll":Z
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v7, :cond_24

    .line 772
    new-instance v7, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v7, v0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 775
    :cond_24
    iget v7, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/4 v8, 0x1

    if-lez v7, :cond_2d

    iget v7, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v7, :cond_55

    .line 776
    :cond_2d
    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 778
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 776
    const/high16 v9, 0x41c80000    # 25.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 780
    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 782
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 780
    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    add-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 785
    :cond_55
    if-eqz v3, :cond_5b

    .line 786
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 789
    :cond_5b
    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_67

    move v10, v8

    goto :goto_68

    :cond_67
    move v10, v7

    .line 791
    .local v10, "isPossibleTooltype":Z
    :goto_68
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 793
    .local v12, "action":I
    const v15, 0x10100a7

    packed-switch v12, :pswitch_data_280

    goto/16 :goto_10a

    .line 837
    :pswitch_74
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v16

    if-eqz v16, :cond_85

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v13, :cond_85

    .line 838
    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v14, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 840
    :cond_85
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 841
    goto/16 :goto_10a

    .line 807
    :pswitch_89
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_10a

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_10a

    .line 809
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_a7

    .line 810
    iput v8, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 811
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v11, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 812
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 814
    :cond_a7
    return v8

    .line 818
    :pswitch_a8
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_d7

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_d7

    .line 819
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v11

    if-eqz v11, :cond_c7

    .line 820
    new-instance v11, Landroid/widget/ScrollView$1;

    invoke-direct {v11, v0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v11}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 826
    iget-object v11, v0, Landroid/widget/ScrollView;->mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x96

    invoke-virtual {v0, v11, v13, v14}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 828
    :cond_c7
    iput v8, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 830
    iget-object v11, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 831
    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    .line 832
    return v8

    .line 834
    :cond_d7
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 835
    goto :goto_10a

    .line 795
    :pswitch_da
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 796
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_10a

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v13, v11, :cond_10a

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_10a

    .line 798
    invoke-direct {v0, v11}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 799
    iput-boolean v8, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 800
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v11, v1

    int-to-float v13, v2

    invoke-virtual {v7, v11, v13}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 801
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v11, 0x10100a1

    const v13, 0x101009e

    filled-new-array {v15, v13, v11}, [I

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 803
    return v8

    .line 846
    :cond_10a
    :goto_10a
    iget v13, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const-wide/16 v7, 0x0

    if-le v2, v13, :cond_116

    iget v13, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v13, v4, v13

    if-lt v2, v13, :cond_263

    :cond_116
    if-lez v1, :cond_263

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v13

    if-gt v1, v13, :cond_263

    if-eqz v5, :cond_263

    if-eqz v10, :cond_263

    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_12c

    goto/16 :goto_263

    .line 861
    :cond_12c
    iget-boolean v13, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v13, :cond_136

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 864
    :cond_136
    packed-switch v12, :pswitch_data_28c

    goto/16 :goto_25e

    .line 877
    :pswitch_13b
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_158

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_158

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_158

    .line 878
    const/4 v7, 0x1

    iput v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 879
    iget-object v8, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v11, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 881
    return v7

    .line 884
    :cond_158
    if-eqz v6, :cond_1cb

    .line 885
    if-ltz v2, :cond_185

    iget v13, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v2, v13, :cond_185

    .line 887
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v7, :cond_16e

    .line 888
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    goto :goto_16f

    .line 887
    :cond_16e
    const/4 v7, 0x1

    .line 892
    :goto_16f
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1dd

    .line 893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 895
    iput v11, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 896
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_1dd

    .line 898
    :cond_185
    iget v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v11, v4, v11

    if-lt v2, v11, :cond_1b2

    if-gt v2, v4, :cond_1b2

    .line 900
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v7, :cond_19b

    .line 901
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 902
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    goto :goto_19c

    .line 900
    :cond_19b
    const/4 v7, 0x1

    .line 905
    :goto_19c
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1dd

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 908
    iput v7, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 909
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_1dd

    .line 912
    :cond_1b2
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 913
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 914
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 917
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1c7

    .line 918
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 921
    :cond_1c7
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_1dd

    .line 923
    :cond_1cb
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v7, :cond_1dd

    .line 925
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1dd

    .line 926
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 929
    :cond_1dd
    :goto_1dd
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    .line 930
    goto/16 :goto_25e

    .line 933
    :pswitch_1e1
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_215

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_215

    .line 934
    const-string v7, "ScrollView"

    const-string/jumbo v8, "pen up false GOTOTOP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v7

    if-eqz v7, :cond_208

    .line 937
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 938
    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v11, 0x2710

    invoke-virtual {v8, v11}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_209

    .line 936
    :cond_208
    const/4 v7, 0x0

    .line 941
    :goto_209
    invoke-direct {v0, v7}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 942
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 943
    const/4 v11, 0x1

    return v11

    .line 933
    :cond_215
    const/4 v11, 0x1

    .line 947
    iget-object v13, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v13, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_223

    .line 948
    iget-object v13, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v13, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 951
    :cond_223
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 952
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 953
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 954
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 956
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 867
    :pswitch_231
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v7

    if-eqz v7, :cond_25e

    iget v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v7, v11, :cond_25e

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_25e

    .line 869
    invoke-direct {v0, v11}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 870
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v8, v1

    int-to-float v11, v2

    invoke-virtual {v7, v8, v11}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 871
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v8, 0x10100a1

    const v11, 0x101009e

    filled-new-array {v15, v11, v8}, [I

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 872
    const/4 v7, 0x1

    return v7

    .line 961
    :cond_25e
    :goto_25e
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 849
    :cond_263
    :goto_263
    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_271

    .line 850
    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v11, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 853
    :cond_271
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 854
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 855
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 856
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 858
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    nop

    :pswitch_data_280
    .packed-switch 0x0
        :pswitch_da
        :pswitch_a8
        :pswitch_89
        :pswitch_74
    .end packed-switch

    :pswitch_data_28c
    .packed-switch 0xd3
        :pswitch_231
        :pswitch_1e1
        :pswitch_13b
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2957
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2958
    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 2959
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2960
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v1

    .line 2961
    .local v1, "clipToPadding":Z
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 2962
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2967
    .local v2, "restoreCount":I
    if-eqz v1, :cond_38

    .line 2968
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 2969
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 2970
    .local v4, "height":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    .line 2971
    .local v5, "translateX":F
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v6, v6

    .local v6, "translateY":F
    goto :goto_42

    .line 2973
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_38
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    .line 2974
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2975
    .restart local v4    # "height":I
    const/4 v5, 0x0

    .line 2976
    .restart local v5    # "translateX":F
    const/4 v6, 0x0

    .line 2978
    .restart local v6    # "translateY":F
    :goto_42
    const/4 v7, 0x0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2979
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2980
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 2981
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2983
    :cond_5c
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2985
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_5f
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 2986
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2991
    .restart local v2    # "restoreCount":I
    if-eqz v1, :cond_88

    .line 2992
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 2993
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 2994
    .restart local v4    # "height":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    .line 2995
    .restart local v5    # "translateX":F
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v6, v6

    .restart local v6    # "translateY":F
    goto :goto_92

    .line 2997
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_88
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    .line 2998
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2999
    .restart local v4    # "height":I
    const/4 v5, 0x0

    .line 3000
    .restart local v5    # "translateX":F
    const/4 v6, 0x0

    .line 3002
    .restart local v6    # "translateY":F
    :goto_92
    neg-int v7, v3

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 3003
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v4

    int-to-float v8, v8

    add-float/2addr v8, v6

    .line 3002
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3004
    int-to-float v7, v3

    const/4 v8, 0x0

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {p1, v9, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3005
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3006
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 3007
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 3009
    :cond_ba
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3013
    .end local v0    # "scrollY":I
    .end local v1    # "clipToPadding":Z
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_bd
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_c4

    .line 3014
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 3017
    :cond_c4
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 3118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 3119
    const-string v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 3120
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 997
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 999
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    if-nez v0, :cond_41

    .line 1000
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_40

    .line 1001
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x6f

    if-eq v0, v3, :cond_40

    .line 1002
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1003
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_2a

    const/4 v0, 0x0

    .line 1004
    :cond_2a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 1006
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_3e

    if-eq v3, p0, :cond_3e

    .line 1008
    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    nop

    .line 1006
    :goto_3f
    return v2

    .line 1010
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_40
    return v2

    .line 1013
    :cond_41
    const/4 v0, 0x0

    .line 1014
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a2

    .line 1015
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x21

    sparse-switch v2, :sswitch_data_a4

    goto :goto_a2

    .line 1044
    :sswitch_52
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 1045
    goto :goto_a2

    .line 1041
    :sswitch_57
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 1042
    goto :goto_a2

    .line 1050
    :sswitch_5c
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result v0

    .line 1051
    goto :goto_a2

    .line 1047
    :sswitch_61
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result v0

    .line 1048
    goto :goto_a2

    .line 1053
    :sswitch_66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_6d

    move v1, v3

    :cond_6d
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_a2

    .line 1029
    :sswitch_71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 1030
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_80

    .line 1032
    :cond_7c
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 1035
    :goto_80
    if-eqz v0, :cond_a2

    .line 1036
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_a2

    .line 1017
    :sswitch_8a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_95

    .line 1018
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_99

    .line 1020
    :cond_95
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 1023
    :goto_99
    if-eqz v0, :cond_a2

    .line 1024
    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    .line 1058
    :cond_a2
    :goto_a2
    return v0

    nop

    :sswitch_data_a4
    .sparse-switch
        0x13 -> :sswitch_8a
        0x14 -> :sswitch_71
        0x3e -> :sswitch_66
        0x5c -> :sswitch_61
        0x5d -> :sswitch_5c
        0x7a -> :sswitch_57
        0x7b -> :sswitch_52
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 16
    .param p1, "velocityY"    # I

    .line 2776
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3f

    .line 2777
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v1

    .line 2778
    .local v0, "height":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2780
    .local v2, "bottom":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v7, v2, v0

    .line 2781
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    div-int/lit8 v13, v0, 0x2

    .line 2780
    move v7, p1

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2783
    iget-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_3c

    .line 2784
    const-string v1, "ScrollView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2787
    :cond_3c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2789
    .end local v0    # "height":I
    .end local v2    # "bottom":I
    :cond_3f
    return-void
.end method

.method public fullScroll(I)Z
    .registers 9
    .param p1, "direction"    # I

    .line 2080
    const/16 v0, 0x82

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 2081
    .local v0, "down":Z
    :goto_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 2083
    .local v2, "height":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 2084
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2086
    if-eqz v0, :cond_34

    .line 2087
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 2088
    .local v1, "count":I
    if-lez v1, :cond_34

    .line 2089
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2090
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2091
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2095
    .end local v1    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_34
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v1

    return v1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1899
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBottomEdgeEffectColor()I
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    .line 457
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 458
    const/4 v0, 0x0

    return v0

    .line 461
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 462
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 463
    .local v1, "bottomEdge":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 464
    .local v2, "span":I
    if-ge v2, v0, :cond_26

    .line 465
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 468
    :cond_26
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getMaxScrollAmount()I
    .registers 3

    .line 544
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTopEdgeEffectColor()I
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 4

    .line 443
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 444
    const/4 v0, 0x0

    return v0

    .line 447
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 448
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_16

    .line 449
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 452
    :cond_16
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public getTouchSlop()I
    .registers 2

    .line 381
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return v0
.end method

.method public isFillViewport()Z
    .registers 2

    .line 671
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .registers 3

    .line 1249
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1250
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .line 694
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 2368
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2373
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2375
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    .line 2376
    .local v2, "verticalPadding":I
    nop

    .line 2377
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2376
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 2380
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 2381
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 2386
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2388
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2391
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    .line 2393
    .local v2, "usedTotal":I
    nop

    .line 2394
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2393
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 2397
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 2398
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 2910
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2911
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 2664
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2666
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2667
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2668
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2670
    :cond_d
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_16

    .line 2671
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2672
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2674
    :cond_16
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_112

    goto/16 :goto_10d

    .line 1681
    :pswitch_9
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1682
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .local v1, "axisValue":F
    goto :goto_27

    .line 1683
    .end local v1    # "axisValue":F
    :cond_17
    const/high16 v1, 0x400000

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1684
    const/16 v1, 0x1a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "axisValue":F
    goto :goto_27

    .line 1686
    .end local v1    # "axisValue":F
    :cond_26
    const/4 v1, 0x0

    .line 1689
    .restart local v1    # "axisValue":F
    :goto_27
    iget v2, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1690
    .local v2, "delta":I
    if-eqz v2, :cond_10d

    .line 1692
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1693
    neg-int v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4, v4}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 1695
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1696
    .local v0, "range":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1697
    .local v4, "oldScrollY":I
    sub-int v5, v4, v2

    .line 1699
    .local v5, "newScrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v6

    .line 1700
    .local v6, "overscrollMode":I
    const/16 v7, 0x2002

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_58

    if-eqz v6, :cond_57

    if-ne v6, v8, :cond_58

    if-lez v0, :cond_58

    :cond_57
    move v3, v8

    .line 1703
    .local v3, "canOverscroll":Z
    :cond_58
    const/4 v7, 0x0

    .line 1705
    .local v7, "absorbed":Z
    const/high16 v9, 0x3f000000    # 0.5f

    if-gez v5, :cond_77

    .line 1706
    if-eqz v3, :cond_75

    .line 1707
    iget-object v10, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v11, v5

    neg-float v11, v11

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v10, v11, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1708
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1709
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1710
    const/4 v7, 0x1

    .line 1712
    :cond_75
    const/4 v5, 0x0

    goto :goto_93

    .line 1713
    :cond_77
    if-le v5, v0, :cond_93

    .line 1714
    if-eqz v3, :cond_92

    .line 1715
    iget-object v10, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    sub-int v11, v5, v0

    int-to-float v11, v11

    .line 1716
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 1715
    invoke-virtual {v10, v11, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1717
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1718
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1719
    const/4 v7, 0x1

    .line 1721
    :cond_92
    move v5, v0

    .line 1723
    :cond_93
    :goto_93
    if-eq v5, v4, :cond_9e

    .line 1725
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 1727
    iget v9, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v9, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1728
    return v8

    .line 1730
    :cond_9e
    if-eqz v3, :cond_10a

    .line 1731
    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    const/16 v11, 0x2710

    if-lez v10, :cond_cb

    iget v10, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v10, :cond_cb

    .line 1732
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v12

    invoke-virtual {v9, v10, v12}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1733
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v11}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1735
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_f7

    .line 1736
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_f7

    .line 1738
    :cond_cb
    cmpg-float v9, v1, v9

    if-gez v9, :cond_f7

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollDown()Z

    move-result v9

    if-nez v9, :cond_f7

    .line 1739
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v12

    invoke-virtual {v9, v10, v12}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1740
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v11}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1742
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 1743
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_f7

    .line 1744
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1747
    :cond_f7
    :goto_f7
    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_107

    iget-object v9, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_10a

    .line 1748
    :cond_107
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1754
    :cond_10a
    if-eqz v7, :cond_10d

    .line 1755
    return v8

    .line 1762
    .end local v0    # "range":I
    .end local v1    # "axisValue":F
    .end local v2    # "delta":I
    .end local v3    # "canOverscroll":Z
    .end local v4    # "oldScrollY":I
    .end local v5    # "newScrollY":I
    .end local v6    # "overscrollMode":I
    .end local v7    # "absorbed":Z
    :cond_10d
    :goto_10d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_112
    .packed-switch 0x8
        :pswitch_9
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1931
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1932
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1933
    .local v0, "scrollable":Z
    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1934
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1935
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1936
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1905
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1906
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1907
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1908
    .local v0, "scrollRange":I
    if-lez v0, :cond_2f

    .line 1909
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1910
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_21

    .line 1911
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1913
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1915
    :cond_21
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_2f

    .line 1916
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1917
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1923
    .end local v0    # "scrollRange":I
    :cond_2f
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_ON:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1924
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_OFF:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1926
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1117
    .local v2, "action":I
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_11

    .line 1118
    return v3

    .line 1121
    :cond_11
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1122
    return v3

    .line 1128
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_26

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_26

    .line 1129
    return v6

    .line 1132
    :cond_26
    and-int/lit16 v5, v2, 0xff

    const-string v7, "ScrollView-scroll"

    const/4 v8, -0x1

    packed-switch v5, :pswitch_data_150

    :pswitch_2e
    goto/16 :goto_14d

    .line 1227
    :pswitch_30
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_14d

    .line 1143
    :pswitch_35
    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1144
    .local v5, "activePointerId":I
    if-ne v5, v8, :cond_3b

    .line 1146
    goto/16 :goto_14d

    .line 1149
    :cond_3b
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1150
    .local v9, "pointerIndex":I
    if-ne v9, v8, :cond_61

    .line 1151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onInterceptTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScrollView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    goto/16 :goto_14d

    .line 1156
    :cond_61
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    .line 1157
    .local v8, "y":I
    iget v10, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1158
    .local v10, "yDiff":I
    iget v11, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v10, v11, :cond_14d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v11

    and-int/2addr v4, v11

    if-nez v4, :cond_14d

    .line 1159
    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1160
    iput v8, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1161
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1162
    iget-object v4, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1163
    iput v6, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1164
    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v4, :cond_91

    .line 1165
    invoke-static {v7}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1167
    :cond_91
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1168
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_9a

    .line 1169
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1171
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_9a
    goto/16 :goto_14d

    .line 1218
    .end local v5    # "activePointerId":I
    .end local v8    # "y":I
    .end local v9    # "pointerIndex":I
    .end local v10    # "yDiff":I
    :pswitch_9c
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1219
    iput v8, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1220
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1221
    iget-object v11, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v12, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v13, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v17

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 1222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1224
    :cond_ba
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    .line 1225
    goto/16 :goto_14d

    .line 1176
    :pswitch_bf
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 1177
    .local v5, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v8, v5}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v8

    if-nez v8, :cond_d6

    .line 1178
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1179
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1180
    goto/16 :goto_14d

    .line 1187
    :cond_d6
    iput v5, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1188
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1190
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 1191
    iget-object v8, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1198
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1199
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_106

    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_106

    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1200
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_104

    goto :goto_106

    :cond_104
    move v3, v6

    goto :goto_107

    :cond_106
    :goto_106
    nop

    :goto_107
    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1202
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_121

    .line 1203
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v3, v6, v8}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1205
    :cond_121
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_13b

    .line 1206
    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v8

    invoke-virtual {v3, v6, v9}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1208
    :cond_13b
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_149

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_149

    .line 1209
    invoke-static {v7}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1211
    :cond_149
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1212
    nop

    .line 1235
    .end local v5    # "y":I
    :cond_14d
    :goto_14d
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v3

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_9c
        :pswitch_35
        :pswitch_9c
        :pswitch_2e
        :pswitch_2e
        :pswitch_30
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2698
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2699
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2701
    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v1, :cond_15

    invoke-static {v1, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2702
    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    .line 2704
    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2706
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_53

    .line 2707
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v2, :cond_28

    .line 2708
    iget v2, v2, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2709
    iput-object v1, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2712
    :cond_28
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_37

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_38

    :cond_37
    move v1, v0

    .line 2713
    .local v1, "childHeight":I
    :goto_38
    sub-int v2, p5, p3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2717
    .local v2, "scrollRange":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v3, v2, :cond_4d

    .line 2718
    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_53

    .line 2719
    :cond_4d
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v3, :cond_53

    .line 2720
    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2725
    .end local v1    # "childHeight":I
    .end local v2    # "scrollRange":I
    :cond_53
    :goto_53
    if-eqz p1, :cond_66

    .line 2726
    const-string v0, "ScrollView"

    const-string v1, " onsize change changed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 2728
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2729
    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 2734
    :cond_66
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2735
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 707
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 709
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    .line 710
    return-void

    .line 713
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 714
    .local v0, "heightMode":I
    if-nez v0, :cond_f

    .line 715
    return-void

    .line 718
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_69

    .line 719
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 722
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 723
    .local v2, "targetSdkVersion":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 724
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x17

    if-lt v2, v4, :cond_45

    .line 725
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 726
    .local v4, "widthPadding":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .local v5, "heightPadding":I
    goto :goto_4f

    .line 728
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    :cond_45
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    .line 729
    .restart local v4    # "widthPadding":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    .line 732
    .restart local v5    # "heightPadding":I
    :goto_4f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v5

    .line 733
    .local v6, "desiredHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-ge v7, v6, :cond_69

    .line 734
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v4, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v7

    .line 736
    .local v7, "childWidthMeasureSpec":I
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 738
    .local v8, "childHeightMeasureSpec":I
    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 741
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "targetSdkVersion":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    .end local v6    # "desiredHeight":I
    .end local v7    # "childWidthMeasureSpec":I
    .end local v8    # "childHeightMeasureSpec":I
    :cond_69
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 2948
    if-nez p4, :cond_8

    .line 2949
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 2950
    const/4 v0, 0x1

    return v0

    .line 2952
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 15
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 2936
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2937
    .local v0, "oldScrollY":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2938
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v1, v0

    .line 2939
    .local v1, "myConsumed":I
    sub-int v8, p5, v1

    .line 2940
    .local v8, "myUnconsumed":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v1

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 2941
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 2921
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2922
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 2923
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 16
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 1769
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, p2, :cond_7

    .line 1770
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 1775
    :cond_7
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1776
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1777
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1778
    .local v1, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1779
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1780
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1781
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1782
    if-eqz p4, :cond_33

    .line 1783
    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1785
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_33
    goto :goto_37

    .line 1786
    :cond_34
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1789
    :goto_37
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1790
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2624
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 2625
    const/16 p1, 0x82

    goto :goto_b

    .line 2626
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 2627
    const/16 p1, 0x21

    .line 2630
    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 2631
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    .line 2632
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1f
    nop

    .line 2635
    .local v0, "nextFocus":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 2636
    return v1

    .line 2639
    :cond_24
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2640
    return v1

    .line 2643
    :cond_2b
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 3090
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_21

    instance-of v0, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v0, :cond_11

    goto :goto_21

    .line 3096
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 3097
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3098
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 3099
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 3100
    return-void

    .line 3093
    .end local v0    # "ss":Landroid/widget/ScrollView$SavedState;
    :cond_21
    :goto_21
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3094
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 3104
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_11

    .line 3107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 3109
    :cond_11
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3110
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3111
    .local v1, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v1, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 3112
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 2739
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2741
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2742
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_27

    if-ne p0, v0, :cond_c

    goto :goto_27

    .line 2748
    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2749
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2750
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2751
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 2752
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2754
    .end local v1    # "scrollDelta":I
    :cond_26
    return-void

    .line 2743
    :cond_27
    :goto_27
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 2916
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 2
    .param p1, "target"    # Landroid/view/View;

    .line 2930
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2931
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1469
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1471
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1473
    .local v12, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 1475
    .local v13, "actionMasked":I
    const/4 v0, 0x0

    if-nez v13, :cond_14

    .line 1476
    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1478
    :cond_14
    iget v1, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1480
    const-string v1, " in onTouchEvent"

    const-string v2, "Invalid pointerId="

    const-string v3, "ScrollView"

    const/4 v4, -0x1

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_2fe

    :pswitch_26
    goto/16 :goto_2f2

    .line 1641
    :pswitch_28
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1643
    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    if-eq v0, v4, :cond_45

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_36

    goto :goto_45

    .line 1648
    :cond_36
    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_2f2

    .line 1644
    :cond_45
    :goto_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    goto/16 :goto_2f2

    .line 1635
    :pswitch_61
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1636
    .local v0, "index":I
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1637
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1638
    goto/16 :goto_2f2

    .line 1626
    .end local v0    # "index":I
    :pswitch_74
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2f2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2f2

    .line 1627
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v22

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1628
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1630
    :cond_9d
    iput v4, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1631
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_2f2

    .line 1511
    :pswitch_a4
    iget v5, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1512
    .local v9, "activePointerIndex":I
    if-ne v9, v4, :cond_cf

    .line 1514
    const/4 v0, 0x0

    .line 1515
    .end local v9    # "activePointerIndex":I
    .local v0, "activePointerIndex":I
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    goto/16 :goto_2f2

    .line 1521
    .end local v0    # "activePointerIndex":I
    .restart local v9    # "activePointerIndex":I
    :cond_cf
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v8, v1

    .line 1522
    .local v8, "y":I
    iget v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int/2addr v1, v8

    .line 1523
    .local v1, "deltaY":I
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 1524
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    aget v2, v2, v15

    sub-int/2addr v1, v2

    .line 1525
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v15

    int-to-float v2, v2

    invoke-virtual {v12, v14, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1526
    iget v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v3, v3, v15

    add-int/2addr v2, v3

    iput v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1528
    :cond_f7
    iget-boolean v2, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_117

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_117

    .line 1529
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1530
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_10c

    .line 1531
    invoke-interface {v2, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1533
    :cond_10c
    iput-boolean v15, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1534
    if-lez v1, :cond_114

    .line 1535
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v1, v3

    goto :goto_117

    .line 1537
    :cond_114
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v1, v3

    .line 1540
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_117
    :goto_117
    iget-boolean v2, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_260

    .line 1542
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v15

    sub-int v2, v8, v2

    iput v2, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1544
    iget v7, v10, Landroid/widget/ScrollView;->mScrollY:I

    .line 1545
    .local v7, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1546
    .local v6, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v5

    .line 1547
    .local v5, "overscrollMode":I
    if-eqz v5, :cond_133

    if-ne v5, v15, :cond_134

    if-lez v6, :cond_134

    :cond_133
    move v0, v15

    :cond_134
    move/from16 v16, v0

    .line 1550
    .local v16, "canOverscroll":Z
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v4, v0, v2

    .line 1551
    .local v4, "displacement":F
    const/high16 v17, 0x3f800000    # 1.0f

    if-eqz v16, :cond_195

    .line 1552
    const/4 v0, 0x0

    .line 1553
    .local v0, "consumed":I
    if-gez v1, :cond_16c

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_16c

    .line 1554
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v15, v1

    .line 1555
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v15, v14

    sub-float v14, v17, v4

    invoke-virtual {v3, v15, v14}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 1554
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_192

    .line 1557
    :cond_16c
    if-lez v1, :cond_192

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_192

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v14, v1

    int-to-float v14, v14

    .line 1559
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual {v3, v14, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 1558
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1562
    :cond_192
    :goto_192
    sub-int/2addr v1, v0

    move v14, v1

    goto :goto_196

    .line 1551
    .end local v0    # "consumed":I
    :cond_195
    move v14, v1

    .line 1567
    .end local v1    # "deltaY":I
    .local v14, "deltaY":I
    :goto_196
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v15, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v2, v10, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v23, v2

    move v2, v14

    move/from16 v24, v4

    .end local v4    # "displacement":F
    .local v24, "displacement":F
    move v4, v15

    move v15, v5

    .end local v5    # "overscrollMode":I
    .local v15, "overscrollMode":I
    move/from16 v5, v20

    move/from16 v20, v6

    .end local v6    # "range":I
    .local v20, "range":I
    move/from16 v25, v7

    .end local v7    # "oldY":I
    .local v25, "oldY":I
    move/from16 v7, v21

    move/from16 v21, v8

    .end local v8    # "y":I
    .local v21, "y":I
    move/from16 v8, v23

    move/from16 v23, v9

    .end local v9    # "activePointerIndex":I
    .local v23, "activePointerIndex":I
    move/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1576
    iget v0, v10, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v6, v0, v25

    .line 1577
    .local v6, "scrolledDeltaY":I
    sub-int v7, v14, v6

    .line 1578
    .local v7, "unconsumedY":I
    iget-object v5, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    move v2, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 1579
    iget v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1580
    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1581
    iget v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_25e

    .line 1582
    :cond_1ea
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    if-nez v0, :cond_25a

    if-eqz v16, :cond_25a

    int-to-float v0, v14

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25a

    .line 1583
    add-int v0, v25, v14

    .line 1584
    .local v0, "pulledToY":I
    if-gez v0, :cond_21c

    .line 1585
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v2, v14

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move/from16 v3, v24

    .end local v24    # "displacement":F
    .local v3, "displacement":F
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1587
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_219

    .line 1588
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    move/from16 v1, v20

    goto :goto_240

    .line 1587
    :cond_219
    move/from16 v1, v20

    goto :goto_240

    .line 1590
    .end local v3    # "displacement":F
    .restart local v24    # "displacement":F
    :cond_21c
    move/from16 v3, v24

    .end local v24    # "displacement":F
    .restart local v3    # "displacement":F
    move/from16 v1, v20

    .end local v20    # "range":I
    .local v1, "range":I
    if-le v0, v1, :cond_240

    .line 1591
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v5, v17, v3

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1594
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 1596
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_240

    .line 1597
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1600
    :cond_240
    :goto_240
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v2

    if-eqz v2, :cond_25e

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1601
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_256

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_25e

    .line 1602
    :cond_256
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_25e

    .line 1582
    .end local v0    # "pulledToY":I
    .end local v1    # "range":I
    .end local v3    # "displacement":F
    .restart local v20    # "range":I
    .restart local v24    # "displacement":F
    :cond_25a
    move/from16 v1, v20

    move/from16 v3, v24

    .line 1605
    .end local v6    # "scrolledDeltaY":I
    .end local v7    # "unconsumedY":I
    .end local v15    # "overscrollMode":I
    .end local v16    # "canOverscroll":Z
    .end local v20    # "range":I
    .end local v24    # "displacement":F
    .end local v25    # "oldY":I
    :cond_25e
    :goto_25e
    goto/16 :goto_2f2

    .line 1540
    .end local v14    # "deltaY":I
    .end local v21    # "y":I
    .end local v23    # "activePointerIndex":I
    .local v1, "deltaY":I
    .restart local v8    # "y":I
    .restart local v9    # "activePointerIndex":I
    :cond_260
    move/from16 v21, v8

    move/from16 v23, v9

    .end local v8    # "y":I
    .end local v9    # "activePointerIndex":I
    .restart local v21    # "y":I
    .restart local v23    # "activePointerIndex":I
    goto/16 :goto_2f2

    .line 1608
    .end local v1    # "deltaY":I
    .end local v21    # "y":I
    .end local v23    # "activePointerIndex":I
    :pswitch_266
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2f2

    .line 1609
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1610
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    iget v1, v10, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1611
    iget v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 1613
    .local v1, "initialVelocity":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_288

    .line 1614
    neg-int v2, v1

    invoke-direct {v10, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    goto :goto_2a7

    .line 1615
    :cond_288
    iget-object v2, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v3, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1616
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v25

    .line 1615
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v25}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 1617
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1620
    :cond_2a7
    :goto_2a7
    iput v4, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1621
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    .line 1622
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1623
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v1    # "initialVelocity":I
    goto :goto_2f2

    .line 1482
    :pswitch_2b0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2b7

    .line 1483
    return v0

    .line 1485
    :cond_2b7
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2c9

    .line 1486
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1487
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_2c9

    .line 1488
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1496
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_2c9
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2e0

    .line 1497
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1498
    iget-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2e0

    .line 1499
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 1500
    const/4 v1, 0x0

    iput-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1505
    :cond_2e0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1506
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1507
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1508
    nop

    .line 1652
    :cond_2f2
    :goto_2f2
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2f9

    .line 1653
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1655
    :cond_2f9
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 1656
    const/4 v0, 0x1

    return v0

    :pswitch_data_2fe
    .packed-switch 0x0
        :pswitch_2b0
        :pswitch_266
        :pswitch_a4
        :pswitch_74
        :pswitch_26
        :pswitch_61
        :pswitch_28
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .line 2691
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2693
    return-void
.end method

.method public pageScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2044
    const/16 v0, 0x82

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 2045
    .local v0, "down":Z
    :goto_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 2047
    .local v2, "height":I
    if-eqz v0, :cond_38

    .line 2048
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2049
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 2050
    .local v1, "count":I
    if-lez v1, :cond_37

    .line 2051
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2052
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_37

    .line 2053
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2056
    .end local v1    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_37
    goto :goto_4b

    .line 2057
    :cond_38
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2058
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_4b

    .line 2059
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 2062
    :cond_4b
    :goto_4b
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2064
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v1

    return v1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1795
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1796
    return v1

    .line 1798
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 1799
    return v2

    .line 1803
    :cond_10
    const/4 v0, 0x7

    .line 1804
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_2d

    .line 1805
    const-string v3, "auto_scroll_speed_level_count"

    const/16 v4, 0xf

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1806
    .local v3, "autoScrollSpeedLevelCount":I
    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x41840000    # 16.5f

    div-float/2addr v5, v4

    iput v5, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 1808
    const-string v4, "auto_scroll_speed_level"

    const/16 v5, 0x8

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1812
    .end local v3    # "autoScrollSpeedLevelCount":I
    :cond_2d
    const v3, 0x4188cccd    # 17.1f

    sparse-switch p1, :sswitch_data_e4

    .line 1882
    return v2

    .line 1851
    :sswitch_34
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1852
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_45

    .line 1853
    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1854
    :cond_45
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1855
    return v1

    .line 1858
    :cond_4b
    return v2

    .line 1842
    :sswitch_4c
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1843
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const v3, 0x3f19999a    # 0.6f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_60

    .line 1844
    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1845
    :cond_60
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1846
    return v1

    .line 1849
    :cond_66
    return v2

    .line 1860
    :sswitch_67
    const-string v3, "ScrollView"

    const-string v4, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 1862
    invoke-virtual {p0, v2, v2, v2}, Landroid/widget/ScrollView;->smoothScrollToWithDuration(III)V

    .line 1863
    return v1

    .line 1866
    :cond_78
    return v2

    .line 1868
    :sswitch_79
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 1869
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v3, :cond_8e

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 1870
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1872
    :cond_8e
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1873
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v2, :cond_98

    .line 1874
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1876
    :cond_98
    return v1

    .line 1879
    :cond_99
    return v2

    .line 1834
    :sswitch_9a
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 1835
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    int-to-float v4, v0

    mul-float/2addr v2, v4

    sub-float/2addr v3, v2

    iput v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1836
    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1837
    return v1

    .line 1840
    :cond_ab
    return v2

    .line 1824
    :sswitch_ac
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    .line 1825
    .local v3, "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v4, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1826
    .local v4, "targetScrollY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v4, v5, :cond_c5

    .line 1827
    invoke-virtual {p0, v2, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1828
    return v1

    .line 1830
    .end local v3    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_c5
    return v2

    .line 1815
    :sswitch_c6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    .line 1816
    .restart local v3    # "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v4, v3

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1817
    .restart local v4    # "targetScrollY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v4, v5, :cond_e3

    .line 1818
    invoke-virtual {p0, v2, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1819
    return v1

    .line 1821
    .end local v3    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_e3
    return v2

    :sswitch_data_e4
    .sparse-switch
        0x1000 -> :sswitch_c6
        0x2000 -> :sswitch_ac
        0x400000 -> :sswitch_9a
        0x800000 -> :sswitch_79
        0x1020038 -> :sswitch_ac
        0x102003a -> :sswitch_c6
        0x4000000 -> :sswitch_67
        0x10000000 -> :sswitch_4c
        0x20000000 -> :sswitch_34
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 2599
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2600
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_10

    .line 2601
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    goto :goto_12

    .line 2604
    :cond_10
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2607
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2608
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 2650
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2651
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2650
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2653
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 1096
    if-eqz p1, :cond_5

    .line 1097
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1099
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1100
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 2658
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2659
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2660
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2880
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3d

    .line 2881
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2882
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2883
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2884
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_3d

    .line 2886
    :cond_37
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 2888
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2891
    .end local v0    # "child":Landroid/view/View;
    :cond_3d
    return-void
.end method

.method public scrollToDescendant(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 2494
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 2495
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2498
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2500
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2502
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_1c

    .line 2503
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2505
    .end local v0    # "scrollDelta":I
    :cond_1c
    goto :goto_1f

    .line 2506
    :cond_1d
    iput-object p1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2508
    :goto_1f
    return-void
.end method

.method semAutoHide()V
    .registers 4

    .line 3488
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_5

    .line 3489
    return-void

    .line 3492
    :cond_5
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3493
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3494
    return-void
.end method

.method public semSetGoToTopEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3407
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(ZI)V

    .line 3408
    return-void
.end method

.method public semSetGoToTopEnabled(ZI)V
    .registers 13
    .param p1, "enabled"    # Z
    .param p2, "buttonStyle"    # I

    .line 3422
    if-nez p2, :cond_5

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    goto :goto_12

    .line 3423
    :cond_5
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080946

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 3424
    if-eqz v0, :cond_a7

    .line 3425
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 3426
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_25

    .line 3427
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3429
    :cond_25
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    .line 3430
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3432
    if-eqz p1, :cond_3b

    .line 3433
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_41

    .line 3435
    :cond_3b
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3438
    :goto_41
    filled-new-array {v2, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3439
    const-wide/16 v3, 0x14d

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3440
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3442
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/ScrollView$6;

    invoke-direct {v5, p0}, Landroid/widget/ScrollView$6;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3450
    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3451
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3452
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3454
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$7;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$7;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3462
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$8;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$8;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3482
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "goToTop"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    .line 3483
    iget v1, p0, Landroid/widget/ScrollView;->mGoToTopElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setElevation(F)Z

    .line 3485
    :cond_a7
    return-void
.end method

.method public semSetHoverScrollMode(Z)V
    .registers 3
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1263
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 1264
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    .line 1265
    return-void
.end method

.method public semSetSmoothScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3559
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    .line 3560
    return-void
.end method

.method public setBottomEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 495
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 496
    return-void
.end method

.method public setEdgeEffectColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 481
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setTopEdgeEffectColor(I)V

    .line 482
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBottomEdgeEffectColor(I)V

    .line 483
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .param p1, "fillViewport"    # Z

    .line 684
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 685
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 686
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 688
    :cond_9
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .registers 2
    .param p1, "hoverdelay"    # I

    .line 1282
    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 1283
    return-void
.end method

.method public setHoverScrollSpeed(I)V
    .registers 3
    .param p1, "hoverspeed"    # I

    .line 1273
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 1274
    return-void
.end method

.method public setIgnoreDelaychildPrerssedState(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 318
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 319
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .param p1, "smoothScrollingEnabled"    # Z

    .line 702
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 703
    return-void
.end method

.method public setTopEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 508
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 509
    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2
    .param p1, "value"    # I

    .line 391
    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 392
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 434
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_6

    .line 435
    const/4 v0, 0x0

    return v0

    .line 438
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 2244
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 2246
    return-void

    .line 2248
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 2249
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_46

    .line 2250
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    .line 2251
    .local v2, "height":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2252
    .local v4, "bottom":I
    sub-int v5, v4, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2253
    .local v5, "maxY":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2254
    .local v6, "scrollY":I
    add-int v7, v6, p2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int p2, v7, v6

    .line 2256
    iget-object v7, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v7, v8, v6, v3, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 2257
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2258
    .end local v2    # "height":I
    .end local v4    # "bottom":I
    .end local v5    # "maxY":I
    .end local v6    # "scrollY":I
    goto :goto_60

    .line 2259
    :cond_46
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 2260
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2261
    iget-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5d

    .line 2262
    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 2263
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2266
    :cond_5d
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2268
    :goto_60
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 2269
    return-void
.end method

.method public final smoothScrollByWithDuration(III)V
    .registers 19
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scrollDuration"    # I

    .line 2281
    move-object v0, p0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 2283
    return-void

    .line 2285
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v1, v3

    .line 2286
    .local v1, "duration":J
    const-wide/16 v3, 0xfa

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_57

    .line 2287
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v5, v0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v5

    iget v5, v0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v5

    .line 2288
    .local v3, "height":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2289
    .local v6, "bottom":I
    sub-int v7, v6, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2290
    .local v7, "maxY":I
    iget v14, v0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2291
    .local v14, "scrollY":I
    add-int v8, v14, p2

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v5, v14

    .line 2293
    .end local p2    # "dy":I
    .local v5, "dy":I
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-boolean v9, v0, Landroid/widget/ScrollView;->mLinear:Z

    if-eqz v9, :cond_44

    sget-object v4, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :cond_44
    invoke-virtual {v8, v4}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2294
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v9, v0, Landroid/widget/ScrollView;->mScrollX:I

    const/4 v11, 0x0

    move v10, v14

    move v12, v5

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 2295
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2296
    .end local v3    # "height":I
    .end local v6    # "bottom":I
    .end local v7    # "maxY":I
    .end local v14    # "scrollY":I
    goto :goto_72

    .line 2297
    .end local v5    # "dy":I
    .restart local p2    # "dy":I
    :cond_57
    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 2298
    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2299
    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_6d

    .line 2300
    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 2301
    iput-object v4, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2304
    :cond_6d
    invoke-virtual/range {p0 .. p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    move/from16 v5, p2

    .line 2307
    .end local p2    # "dy":I
    .restart local v5    # "dy":I
    :goto_72
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 2308
    return-void
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2318
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2319
    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollDuration"    # I

    .line 2332
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 2333
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .line 372
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 2899
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
