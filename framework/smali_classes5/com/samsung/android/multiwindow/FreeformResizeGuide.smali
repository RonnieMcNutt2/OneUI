.class public Lcom/samsung/android/multiwindow/FreeformResizeGuide;
.super Ljava/lang/Object;
.source "FreeformResizeGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;,
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;,
        Lcom/samsung/android/multiwindow/FreeformResizeGuide$FreeformGuideWindowType;
    }
.end annotation


# static fields
.field private static final DEFER_DISMISSING_TIMEOUT_MARGIN:J = 0xaL

.field private static final INVALID_MAX_SIZE:I = -0x1

.field private static final INVALID_MIN_SIZE:I = -0x1

.field public static final MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field public static final MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x30

.field public static final STATE_MINIMIZING:I = 0x1

.field public static final STATE_NONE:I = -0x1

.field public static final STATE_RESIZING:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mCtrlType:I

.field private mDeferDismissingTimeout:J

.field private mDismissRequested:Z

.field private mDismissed:Z

.field private final mDisplayFrame:Landroid/graphics/Rect;

.field private mFreeformGuideViewFullscreenMargin:I

.field private final mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMinimizeFreeformPadding:I

.field private final mMinimizeTriggerBounds:Landroid/graphics/Rect;

.field private mNeedToFullscreenTransition:Z

.field private final mNotAdjustedBounds:Landroid/graphics/Rect;

.field private mReadyToMinimize:Z

.field private final mStableBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

.field private mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

.field private final mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDismissRequested(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDismissed(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDismissed(Lcom/samsung/android/multiwindow/FreeformResizeGuide;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/samsung/android/multiwindow/FreeformResizeGuide;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 80
    const-class v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexDockingState"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDisplayFrame:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    .line 125
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    .line 138
    if-eqz p1, :cond_39

    .line 139
    move-object v0, p1

    goto :goto_41

    :cond_39
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    :goto_41
    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    .line 140
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mWindowManager:Landroid/view/WindowManager;

    .line 141
    new-instance v2, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    invoke-direct {v2, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V

    iput-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    .line 142
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x1090092

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    .line 144
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->update(ILjava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method private checkIfReadyToMinimize(Landroid/graphics/Rect;II)V
    .registers 13
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_14

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    if-gt v0, v1, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v2

    .line 401
    .local v0, "adjustMinSize":Z
    :goto_15
    if-nez v0, :cond_1a

    .line 402
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    .line 403
    return-void

    .line 406
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    sub-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 411
    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3e

    .line 412
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 414
    :cond_3e
    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4a

    .line 415
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 417
    :cond_4a
    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_56

    .line 418
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 420
    :cond_56
    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_62

    .line 421
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 424
    :cond_62
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v1, v4

    .line 425
    .local v1, "dx":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    .line 426
    .local v4, "dy":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    .line 428
    .local v5, "delta":I
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_89

    .line 429
    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto :goto_8e

    .line 431
    :cond_89
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, p1, Landroid/graphics/Rect;->right:I

    .line 433
    :goto_8e
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_9a

    .line 434
    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_9f

    .line 436
    :cond_9a
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 439
    :goto_9f
    iget-object v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 440
    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    if-nez v2, :cond_100

    .line 441
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    .line 443
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->isShowingAppIcon()Z

    move-result v2

    if-nez v2, :cond_100

    .line 444
    nop

    .line 445
    const/16 v2, 0x31

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    .line 444
    invoke-direct {p0, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->performHapticFeedback(I)V

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->showAppIcon()V

    goto :goto_100

    .line 450
    :cond_c1
    iget-boolean v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    if-eqz v6, :cond_100

    .line 451
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    .line 453
    const/4 v2, 0x0

    .line 454
    .local v2, "keepShowing":Z
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_d4

    .line 455
    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v3, p2, :cond_d4

    .line 456
    const/4 v2, 0x1

    .line 459
    :cond_d4
    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_e1

    .line 460
    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v3, p3, :cond_e1

    .line 461
    const/4 v2, 0x1

    .line 464
    :cond_e1
    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_ee

    .line 465
    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v3, p2, :cond_ee

    .line 466
    const/4 v2, 0x1

    .line 469
    :cond_ee
    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_fb

    .line 470
    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeTriggerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v3, p3, :cond_fb

    .line 471
    const/4 v2, 0x1

    .line 475
    :cond_fb
    if-nez v2, :cond_100

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->hideAppIcon()V

    .line 480
    .end local v2    # "keepShowing":Z
    :cond_100
    :goto_100
    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 149
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e0

    const/16 v4, 0x18

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 156
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "FreeformResizeGuideWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 158
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 160
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 161
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 162
    const v1, 0x1030580

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 164
    return-object v0
.end method

.method private hideAppIcon()V
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->startHideAppIconAnimation()V

    .line 359
    return-void
.end method

.method private isShowingAppIcon()Z
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->isShowingAppIcon()Z

    move-result v0

    return v0
.end method

.method private performHapticFeedback(I)V
    .registers 3
    .param p1, "feedbackConstant"    # I

    .line 366
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->performHapticFeedback(I)Z

    .line 367
    return-void
.end method

.method private showAppIcon()V
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->startShowAppIconAnimation()V

    .line 355
    return-void
.end method

.method private snapToFullscreen(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 388
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    .line 389
    if-eqz v0, :cond_1c

    .line 390
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 395
    :cond_1c
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    return v0
.end method


# virtual methods
.method public adjustDexDockingTaskBounds(ILandroid/graphics/Rect;I)V
    .registers 5
    .param p1, "dexTaskDockingState"    # I
    .param p2, "taskbounds"    # Landroid/graphics/Rect;
    .param p3, "freeformThickness"    # I

    .line 538
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 539
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_11

    .line 540
    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 541
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p3

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 543
    :cond_11
    :goto_11
    return-void
.end method

.method public adjustMinMaxSize(Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_c

    move v0, v3

    goto :goto_d

    :cond_c
    move v0, v2

    .line 279
    .local v0, "adjustMinWidth":Z
    :goto_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    if-gt v1, v4, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    .line 280
    .local v1, "adjustMinHeight":Z
    :goto_18
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    if-lt v4, v5, :cond_22

    move v4, v3

    goto :goto_23

    :cond_22
    move v4, v2

    .line 281
    .local v4, "adjustMaxWidth":Z
    :goto_23
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    if-lt v5, v6, :cond_2d

    move v5, v3

    goto :goto_2e

    :cond_2d
    move v5, v2

    .line 282
    .local v5, "adjustMaxHeight":Z
    :goto_2e
    if-eqz v0, :cond_44

    .line 283
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_3d

    .line 284
    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto :goto_44

    .line 286
    :cond_3d
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    .line 289
    :cond_44
    :goto_44
    if-eqz v1, :cond_5b

    .line 290
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_54

    .line 291
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_5b

    .line 293
    :cond_54
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 296
    :cond_5b
    :goto_5b
    if-eqz v4, :cond_71

    .line 297
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_6a

    .line 298
    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->left:I

    goto :goto_71

    .line 300
    :cond_6a
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->right:I

    .line 303
    :cond_71
    :goto_71
    if-eqz v5, :cond_88

    .line 304
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_81

    .line 305
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->top:I

    goto :goto_88

    .line 307
    :cond_81
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    add-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 311
    :cond_88
    :goto_88
    if-eqz v0, :cond_8e

    if-eqz v1, :cond_8e

    move v6, v3

    goto :goto_8f

    :cond_8e
    move v6, v2

    .line 312
    .local v6, "adjustMinSize":Z
    :goto_8f
    if-eqz v4, :cond_95

    if-eqz v5, :cond_95

    move v7, v3

    goto :goto_96

    :cond_95
    move v7, v2

    .line 313
    .local v7, "adjustMaxSize":Z
    :goto_96
    if-nez v6, :cond_9c

    if-eqz v7, :cond_9b

    goto :goto_9c

    .line 314
    :cond_9b
    goto :goto_9d

    :cond_9c
    :goto_9c
    move v2, v3

    .line 315
    .local v2, "guideState":I
    :goto_9d
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateGuideState(I)Z

    .line 316
    return-void
.end method

.method public asDexSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;
    .registers 2

    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public dismiss()V
    .registers 7

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissRequested:Z

    .line 190
    iget-wide v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    .line 191
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    .line 192
    iget-object v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mH:Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;

    .line 193
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDismissed:Z

    if-nez v5, :cond_16

    cmp-long v5, v0, v2

    if-lez v5, :cond_16

    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    .line 192
    :cond_16
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->sendEmptyMessageDelayed(IJ)Z

    .line 194
    return-void
.end method

.method public handleResizeGesture(Landroid/graphics/Rect;II)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 371
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreenIfNeeded(Landroid/graphics/Rect;I)Z

    .line 372
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->checkIfReadyToMinimize(Landroid/graphics/Rect;II)V

    .line 373
    return-void
.end method

.method public hide()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->hide()V

    .line 186
    return-void
.end method

.method isDexTaskDocked(I)Z
    .registers 3
    .param p1, "dexTaskDockingState"    # I

    .line 532
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public needToFullscreenTransition()Z
    .registers 2

    .line 497
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    return v0
.end method

.method public readyToMinimize()Z
    .registers 2

    .line 501
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    return v0
.end method

.method public resetGestureState()V
    .registers 2

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mReadyToMinimize:Z

    .line 506
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    .line 507
    return-void
.end method

.method public setCtrlType(I)V
    .registers 2
    .param p1, "ctrlType"    # I

    .line 350
    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    .line 351
    return-void
.end method

.method public setNotAdjustedBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 493
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNotAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 494
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 168
    if-nez p1, :cond_3

    .line 169
    return-void

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 175
    iget-object v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    if-eqz v6, :cond_23

    .line 176
    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->show(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    .line 179
    return-void

    .line 181
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mLastBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mBounds:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mNeedToFullscreenTransition:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->show(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 182
    return-void
.end method

.method public snapToBounds(J)V
    .registers 11
    .param p1, "duration"    # J

    .line 325
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V

    .line 328
    return-void
.end method

.method public snapToBounds(Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "toFullScreenBounds"    # Landroid/graphics/Rect;

    .line 319
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V

    .line 322
    return-void
.end method

.method public snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V
    .registers 9
    .param p1, "toFullScreenBounds"    # Landroid/graphics/Rect;
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "fromAlpha"    # I
    .param p6, "toAlpha"    # I
    .param p7, "deferForTransition"    # Z

    .line 333
    if-eqz p7, :cond_4

    .line 334
    iput-wide p2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDeferDismissingTimeout:J

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    if-nez v0, :cond_10

    .line 337
    new-instance v0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;-><init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    goto :goto_13

    .line 339
    :cond_10
    invoke-static {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$mreset(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;)V

    .line 341
    :goto_13
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0, p2, p3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmAnimationDuration(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;J)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0, p4}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmInterpolator(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;Landroid/animation/TimeInterpolator;)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0, p5}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmFromAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    invoke-static {v0, p6}, Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;->-$$Nest$fputmToAlpha(Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;I)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTmpTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mTransitionInfo:Lcom/samsung/android/multiwindow/FreeformResizeGuide$TransitionInfo;

    .line 346
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    .line 347
    return-void
.end method

.method public snapToFullscreenIfNeeded(Landroid/graphics/Rect;I)Z
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "posY"    # I

    .line 377
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gt p2, v0, :cond_11

    .line 378
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_25

    .line 379
    .end local v0    # "result":Z
    :cond_11
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mCtrlType:I

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gt p2, v0, :cond_20

    .line 380
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_25

    .line 382
    .end local v0    # "result":Z
    :cond_20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->snapToFullscreen(Landroid/graphics/Rect;)Z

    move-result v0

    .line 384
    .restart local v0    # "result":Z
    :goto_25
    return v0
.end method

.method public updateGuideState(I)Z
    .registers 5
    .param p1, "newState"    # I

    .line 197
    iget v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_12

    .line 198
    iput p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mState:I

    .line 199
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mView:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    const/4 v2, -0x1

    if-ne p1, v2, :cond_d

    const/4 v1, 0x4

    :cond_d
    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->setDimViewVisibility(I)V

    .line 200
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_12
    return v1
.end method

.method public updateMinMaxSizeIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Z)V
    .registers 13
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "displaySize"    # Landroid/graphics/Rect;
    .param p3, "startOrientationWasLandscape"    # Z

    .line 207
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 209
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    invoke-static {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    .line 210
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 211
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    .line 213
    :cond_1d
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-eq v1, v2, :cond_25

    .line 214
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    iput v1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    .line 217
    :cond_25
    const/16 v1, 0x30

    invoke-static {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 218
    .local v1, "minVisibleWidth":I
    const/16 v3, 0x20

    invoke-static {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 219
    .local v3, "minVisibleHeight":I
    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    .line 220
    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    .line 222
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    if-eq v4, v2, :cond_53

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v4, v5, :cond_4e

    goto :goto_53

    .line 225
    :cond_4e
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxWidth:I

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    goto :goto_59

    .line 223
    :cond_53
    :goto_53
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    .line 227
    :goto_59
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    if-eq v4, v2, :cond_6b

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_66

    goto :goto_6b

    .line 230
    :cond_66
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->maxHeight:I

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    goto :goto_71

    .line 228
    :cond_6b
    :goto_6b
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    .line 232
    :goto_71
    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    .line 233
    iget v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    iget v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    .line 235
    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 236
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v4

    .line 237
    .local v4, "dexTaskDockingState":I
    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->isDexTaskDocked(I)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 238
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v5

    .line 239
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    .line 238
    invoke-virtual {v5, v4, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->calculateMaxWidth(III)I

    move-result v5

    .line 240
    .local v5, "dockingMaxWidth":I
    if-eq v5, v2, :cond_ab

    .line 241
    iget v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    .line 246
    .end local v5    # "dockingMaxWidth":I
    :cond_ab
    const/4 v2, 0x0

    .line 247
    .local v2, "taskOrientation":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->preserveOrientationOnResize()Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 248
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_13c

    goto :goto_c5

    .line 256
    :pswitch_ba
    if-eqz p3, :cond_be

    .line 257
    move v5, v6

    goto :goto_bf

    .line 258
    :cond_be
    move v5, v7

    :goto_bf
    move v2, v5

    goto :goto_c5

    .line 250
    :pswitch_c1
    const/4 v2, 0x1

    .line 251
    goto :goto_c5

    .line 253
    :pswitch_c3
    const/4 v2, 0x2

    .line 254
    nop

    .line 262
    :goto_c5
    const v5, 0x3f99999a    # 1.2f

    if-ne v2, v7, :cond_d9

    .line 263
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    .line 264
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    goto :goto_e9

    .line 265
    :cond_d9
    if-ne v2, v6, :cond_e9

    .line 266
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    .line 267
    iget v6, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    .line 270
    :cond_e9
    :goto_e9
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_13a

    .line 271
    sget-object v5, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startDrag: taskOrientation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Min=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") Max=("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMaxHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_13a
    return-void

    nop

    :pswitch_data_13c
    .packed-switch 0x5
        :pswitch_c3
        :pswitch_c1
        :pswitch_ba
    .end packed-switch
.end method

.method public updateResizeGestureInfo(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "stableBounds"    # Landroid/graphics/Rect;

    .line 483
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 486
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mFreeformGuideViewFullscreenMargin:I

    .line 488
    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050246

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->mMinimizeFreeformPadding:I

    .line 490
    return-void
.end method
